% Factoring Integers With Regular Expressions
%
% January 22, 2018

Last semester, I was in a crypto class, so I found myself doing a lot of googling about primality testing and factoring integers. I stumbled upon an interesting regular expression in a [StackOverflow answer](https://stackoverflow.com/questions/3329766/how-does-this-regular-expression-work). Let's take a look at it.

```
^1?$|^(11+?)\1+$
```

This short regex snippet matches against strings containing _a composite number of `1`'s_. Surely, you have questions. If you search the web for primality testing regexes, or this particular regex, you will see that others had questions too. I found other people's explanations lacking, so I'll offer my own.

This regular expression tries to factor the number of `1`'s in the string: if the only factors are zero, one, or the number of `1`'s, then it fails to match. It does this through trial division. It tries dividing by one, then two, then three, and so on, until it finds a match or it reaches the number itself.

Here's a quick walkthrough with inputs `11111` and `111111` (5 and 6 `1`'s, respectively):

```
^1?$
```

This just matches against zero or one `1`'s (since neither are prime). This doesn't match `11111`.

```
^(11+?)
```

This is where the fun starts. This matches against one `1` and as few more `1`'s as possible to complete a match. Initially, it just matches `11` in both our inputs. Whatever is matched is _captured_ since we put parentheses around it.

```
\1+$
```

In case you are unfamiliar, `\1` is called a _backreference,_ and it references back to the last thing captured, the `11`. So for `111111`, `^(11+?)\1+$` matches! There is an initial `11` plus two more `11`s for a total of 6 `1`'s. Do you see what's happening? The regex tried to divide 6 by 2 and succeeded, so it returns a match.

This doesn't match against `11111` though: `11 .. 11` is missing a `1` and `11 .. 11 .. 11` has too many `1`'s. So now the regex engine has to backtrack and try again.

This time `^(11+?)` matches `111`, but that's no good either: the only option is `111 .. 111` which is too many `1`'s again. Next it matches `1111`, but that doesn't work for the same reason.

Finally, the engine will give it one last shot by matching the whole string: `11111`, but since it can't fit it more than once to satisfy the `\1+` bit, it gives up. No match for the prime number.

---

A regular expression that performs trial division: now you can say you've seen it all! This should go without saying, but *don't use this.* Primality testing is already [easy](https://rosettacode.org/wiki/Miller–Rabin_primality_test), there's no need to repurpose regex engines to do it inefficiently. It's just a neat trick.

