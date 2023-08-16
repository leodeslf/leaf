# Software Engineering

>The question of whether computers can think is just like the question of whether submarines can swim. (Edsger W. Dijkstra, 1986)

Some *principles and mindsets* that every software engineer should follow.

## Don't Repeat Yourself (DRY)

>Every piece of knowledge must have a single, unambiguous, authoritative representation within a system. (The Pragmatic Programmer)

Design, development, test, maintenance, and reusability will be easier by having a **single source of code**, then reuse it and modify it in another place as needed.

Opposite to:

- Copy And Paste Programming, **CAPP**.
- Clone And Modify Programming, **CAMP**.
- Write Everything Twice, **WET**.

## Egoless Programming

By Gerald M. Weinberg (The Psychology of Computer Programming, 1971).

The ten commandments of Egoless Programming:

- Understand and **accept that you will make mistakes**.
- **You are not your code**.
- No matter how much you know, **someone else will always know more than you**.
- **Don't rewrite code without consultation**.
- Treat people who know less than you with **respect and patience**.
- The only constant in the world is **change**.
- The only true **authority stems from knowledge**, not from position.
- Fight for what you believe, but **gracefully accept defeat**.
- **Don't be "the guy in the room"**.
- Critique code instead of people, **be kind to the coder, no to the code**.

## Keep it Simple, Stupid! (KISS)

What experts say:

>"There are two ways of constructing a software design. One is to make so simple that there are obviously no deficiencies; the other is to make it so complicated that there are no obvious deficiencies. The first method is far more difficult." (Charles Antony Richard Hoare).

>"It seems that perfection is reached not when there is nothing left to add, but when there is nothing left to take away." (Antoine de Saint Exupéry).

>"Simplicity is the ultimate sophistication." (Leonardo da Vinci).

>"Less is more." (Mies Van Der Rohe).

In our software, methods should **solve only one problem**. Other problems should be solved by another block of code to be easily maintained. We need to do one thing and do it so it's easy to understand and replicate.

More at [Keep It Simple (wiki.c2.com)](https://wiki.c2.com/?KeepItSimple).

## Worth Mentioning

- **If it ain't broke, don't fix it**.
- **Measure twice, cut once**.
- **Ockham's Razor**, the simplest design should be selected.
- **Law of Demeter**, only talk to your friends, (Clean Coder, page 97).
- **Avoid Premature Optimization**.

More at [OOD Principle Language (principles-wiki.net)](http://principles-wiki.net/collections:ood_principle_language).
