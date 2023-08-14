# Refactoring

Refactoring is a technique for **improving code structure** with a quite specific condition, we do it **without altering the system's features**. The idea is to make from it a day-to-day activity in which we make *a series of small behavior-preserving transformations*. That way we ensure that each step is less likely to go wrong (and if it does, it would be easy to fix), as well as reducing the chances of getting the system seriously broken.

To preserve the behavior of the system is to *make changes without breaking any of the tests* already defined before doing refactoring, for example. A change might be a renaming, splitting large functions into smaller ones (same for classes), use objects instead of a long parameter list, moving modules across architectural boundaries, among others.

The practice of doing "refactoring" has been there since the mid 80s, but it was adopted by Extreme Programming and then popularized by Martin Fowler in 1999.

## The Two Hats & Not Refactoring

The two hats is a metaphor by Kent Beck about *two distinct activities*: altering features; and doing refactoring. They might be similar, but they are **performed one at a time**.

E.g.: We could be trying to add a new feature but we realize that the code is not scalable, so we need to *swap hats* and proceed to do some refactoring. When we are done, we swap hats again and continue with the feature. Things like this could happen in about 15 minutes several times a day. This stresses that refactoring only aims to *improve code quality*.

There is also *the four hats* metaphor in which we make a distinction between interface and implementation related activities (for both altering features and doing refactoring).

Things that refactoring *is not*:

- *Add/Remove/Modify features*: as this is to change the program's behavior.
- *Rewrite code*: to find a different approach to solve a given problem.
- *Fix bugs*: that's just to make a feature to work as it should do.

## When to Refactor

We do it when *code smells*, often an indicator of a problem (not always the problem itself):

- **Unreadable code**: code that *no one understands* but god and the person who made it.
  - *Unmeaningful names* that need to be deciphered.
  - *Long modules, functions, or classes* to be splitted.
  - *Long parameter lists* that could be an object.
- **Unorganized code**: code that lives *in the wrong place at the wrong time*.
  - *Mixed functionality*, a carnival of topics at a single module.
  - *Mutable data* that could be immutable.
  - *Global data* without a clear target.
  - *Data clumps*, individual data items used in lots of places together.
  - *Uncivilized data*, groups of related primitive data that could be an object.
  - *Feature envy*, code that spends most of the time consuming external modules.
  - *Lazy code*, external functionality used only in one place that could be in-line.
- **Unused code**: any piece of *code that pollutes* the useful, remember YAGNI.
  - *Dead code* that "lived its life" but is no longer required.
  - *Speculative code* that someone thought someday could be useful.
- **Lack of performance**: it's unusual, but we might need to *sacrifice readability* for it.
- **Redundant code**: any partially or totally *duplicated code*, remember DRY.
- **Bad refactoring**: sometimes we can get it *subtly wrong*.
  - *Splashing change*, it's to update lots of clients because of a single Refactor.
  - *Divergent change*, it's to do it over and over for the same functionality.
- **Bug nests**: it's *hard to find bugs* on code we don't understand.
- **Deodorant comments**: used only when *code smells bad*.

## Refactoring Benefits

In general the benefit is to avoid any point described above, *improvements* are:

- **Code understanding**: it is easier to *read and find* things.
- **Code reusability**: as we have better *abstractions and code decoupling*.
- **Code maintenance**: code will be much easier to *update, debug, and fix*.
- **Code scalability**: a *well designed system* would be much easier to extend.
- **Code coverage**: as we use *unit tests* to ensure we don't break/change anything.
- **Code performance**: being or not the target, *clean code* might improve execution.
- **Collective ownership**: *people feel better* when they understand their own tools.
- **Quicker development**: *less friction* during both development and maintenance.
- **Saving money**: as we *avoid late and expensive* modifications (as is testing).

---

Reference:

- Clean Agile (page 123).
- [Only Wear One of Four Hats (wiki.c2.com)](http://wiki.c2.com/?OnlyWearOneOfFourHats).
- Refactoring (page 56).
- [Refactoring (agilealliance.org)](https://www.agilealliance.org/glossary/refactoring).
- [Refactoring (refactoring.com)](https://refactoring.com/).
- [Refactor Mercilessly (extremeprogramming.org)](http://www.extremeprogramming.org/rules/refactor.html).
- The Pragmatic Programmer (page 354).
