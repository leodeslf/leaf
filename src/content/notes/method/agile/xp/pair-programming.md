# Pair Programming

Pair programming is a technique from the Extreme Programming software development agile method in which all code to be sent into production is designed and developed by **two people working together at a single station**.

The two roles are often called the *driver* and the *navigator*. The driver, the one who actually codes, has the control over the micro tasks, the low-level details of syntax and coding style. While the navigator is free to consider higher-level issues and scope, keeping in mind the big picture. Often, however, there are no roles at all, both programmers are simply co-equal authors *working in a cooperative manner*.

We'd keep in mind that first, pairing is *optional* for everyone; and second, pairing is *intermittent*. There are many good reasons to code alone from time to time. In fact, pairing should be done by about 50% of the team or so. For the most part, *this is an individual and team choice*.

## A Similar Approach

*Mob programming* is a similar technique that involves *more than two people*, but keeps only one of them in the driver’s role. It's not as popular as pair programming because complexity increases with the number of members.

## How to Pair Programming

On a common working flow we often follow four steps:

1. Start with *a well-defined task*.
1. If needed, *divide the task* into smaller ones.
1. Agree on *a tiny goal at a time* (define a unit test or a commit message).
1. Regularly *switch roles*, active participation keeps energy levels up.

There are some "rules" that help us take care of the team's mood and productivity. First, *pairs are not scheduled*, programmers are the ones who actually know when they need to form and break up the pair. Second, *pairs are generally short-lived*, sessions can last as long as a day, but more often they last for about an hour or even less.

## Benefits of Pair Programming

The overall benefits of pairing are **higher-quality** on the code base without impacting time to deliver, and **better communication** among team members.

>Don't Go into Code Alone. (The Pragmatic Programmer)

Having people working together helps the team with the **knowledge sharing** on technology and domain preventing silos of knowledge. When two minds with different experiences and perspectives understand and discuss a problem, more alternatives come into consideration which *improves the chances of finding a good solution*. It can also speed up the process, *eliminating delays*. At least one member is likely  to have enough knowledge on a given area to *help or guide the other*.

Since pairing promotes *constant communication* and knowledge sharing, it can also help with a **fast onboarding of new team members**. Changes on a team have an impact on the team flow, people just need some time to get to know each other. New joiners can get to know the project, the business, and the organization with the help of their pair as they communicate a lot more than they need when working solo. Notice that this is just a side effect, pairing turns to be inefficient when used as an onboarding technique by itself.

>Organizations which design systems are constrained to produce designs which are *copies of the communication* structures of these organizations. This is, the social structures and communication pathways of the team will be mirrored in the product being developed. But most importantly, development teams that include users will produce software that clearly reflects that involvement, and teams that don't bother will reflect that, too. (Malvin Conway, Conway's Law, 1967)

Pair programming allows us to **combine two models of thinking**. The driver is in "tactical" mode, thinking about the *little details*, the current line of code. Meanwhile, the navigator is more "strategically", considering the *big picture*, the next steps.

Consistent pairing makes sure that every line of code was touched or seen by at least two people. This increases the chances that anyone on *the team feels comfortable* changing the code almost anywhere because we trigger a **collective code ownership**. It also makes the codebase more consistent than it would be with single coders only.

>Collective code ownership abandons any notion of individual ownership of modules. The code base is owned by the entire team and anyone may make changes anywhere. (Martin Fowler)

In a good sense, we are forced to discuss approaches and solutions instead of only thinking them through in our own head, or not thinking at all. *Saying and explaining things* out loud pushes us to **reflect on what we are doing**, if we really have the right understanding, or if we really have a good solution.

Pairing makes it easier to catch errors en general. We are actually doing **code review on-the-go**, specially the navigator, but also the driver, which should always be talking through the code being written, so it tends to pay more attention than when working alone. It also makes *refactoring* easier because we can instantly discuss ideas about the approach. That's why we use to have *fewer defects* on the resulting code, which can save a considerable amount of time later on.

>By having a second party look at the program, ...we increase the possibility of eliminating at least the most obviously inefficient areas. (Gerald M. Weinberg, Egoless Programming, 1971)

The responsibility of working with another person leads us to **keep focus** for courtesy and respect. We're more likely to *avoid potentially embarrassing decisions* when someone is actively watching. The parts agree on intervals to take *small breaks* and *return quickly* to the task. One of them might have more focus and help "awaken" the other if they lose it, that's why the role needs to be switched often.

**Keeping the team's work in progress low** is important (and one of the core principles of Kanban) to improve team flow. It helps us focus on the current task. The overall team *productivity often increases* if the team has a WIP limit in place, because multitasking is not just inefficient on an individual, but also on the team level.

---

Reference:

- Clean Agile (page 127).
- [Collective Ownership (extremeprogramming.org)](http://www.extremeprogramming.org/rules/collective.html).
- [On Pair Programming (martinfowler.com)](https://martinfowler.com/articles/on-pair-programming.html).
- [Pair Programming (wikipedia.org)](https://en.wikipedia.org/wiki/Pair_programming).
- [Pair Programming (extremeprogramming.org)](http://www.extremeprogramming.org/rules/pair.html).
- Software Engineering (page 71).
- The Pragmatic Programmer (page 424).
- The Psychology of Computer Programming (page 56).

<!-- TODO review with "The Art of Agile Development" (page 315). -->
