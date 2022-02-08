# Pair Programming

From the books:

- Pragmatic Programmer.
- Software Engineering.
- The Psicology of Computer Programming.

Pair programming is a technique from the eXtreme Programming software development agile method in which all code to be sent into production is designed and developed by **two people working together at a single station**.

The two roles are often called the *driver* and the *navigator*. The driver, the one who actually codes, has the control over the micro tasks, the low-level details of syntax and coding style. While the nevigator is free to consider higher-level issues and scope, keeping in mind the big picture.

On a common working flow we:

- Start with a *well-defined task*.
- Then, *divide the task* into smaller ones if needed.
- Agree on *a tiny goal at a time* (define a unit test or a commit message).
- Also *switch roles regularly*, active participation keeps energy levels up.

*Mob programming* is a similar technique that involves more than two people, but keeps only one of them on the drivers role. It's not as popular as pair programming because complexity increases with the number of members.

## Benefits of Pair Programming

The overall benefits of pairing are **higher-quality** on the code base without impacting time to deliver, and **better communication** among team members.

>Don't Go into Code Alone. -The Pragmatic Programmer

Having people working together helps the team with the **knowledge sharing** on technology and domain preventing silos of knowledge. When two minds with different experiences and perspectives understand and discuss a problem, more alternatives come into consideration which *improves the chances of finding a good solution*. It can also speed up the process as one member might have the required knowledge on a given area to help or guide the other, thus *eliminating delays*.

Since pairing promotes *constant communication* and knowledge sharing, it can help with a **fast onboarding on new team members**. Changes on a team have an impact on the team flow, people just needs some time to get to know each other. New joiners can get to know the project, the business, and the organization with the help of their pair as they communicate a lot more than they need when working solo.

>Organizations which design systems are constrained to produce designs which are *copies of the communication* structures of these organizations. This is, the social structures and communication pathways of the team will be mirrored in the product being developed. But most importantly, development teams that include users will produce software that clearly reflect that involvement, and teams that don't bother will reflect that, too. -Conway's Law (Malvin Conway, 1967)

Pair programming allows us to **combine two models of thinking**. The driver is in "tactical" mode, thinking about the *little details*, the current line of code. Meanwhile, the navigator is more "strategically", considering the *big picture*, the next steps.

Consistent pairing makes sure that every line of code was touched or seen by at least two people. This increases the chances that anyone on the team *feels confortable* changing the code almos anywhere becase we trigger a **collective code ownership**. It also makes the codebase more consistent than it would be with single coders only.

>Collective code ownership abandons any notion of individual ownership of modules. The code base is owned by the entire team and anyone may make changes anywhere. -Martin Fowler

In a good sense, we are forced to discuss approaches and solutions instead of only thinking them through in our own head. *Saying and explainning things* out loud pushes us to **reflect** on what we are doing, if we really have the right understanding, or if we really have a good solution.

Pairing makes it easier to caught errors, the little, and the bigger ones. We are actually doing **code review on-the-go**, specially the navigator, but also the driver, which should always be talking through the code being written, so it tends to pay more attention than when working alone. It also makes *refactoring* easier because we can instantly discuss ideas about the approach. That's why we use to have *fewer defects* on the resulting code, which can save a considerable amount of time later on.

>By having a second party look at the programm, ...we increase the possibility of eliminating at least the most obviously inefficient areas. -Gerald M. Weinberg, Egoless Programming

The responsibility of working with another person leads us to **keep focus** for courtesy and respect. We're more likely to *avoid potentially embarrassing decisions* when someone is actively watching. The parts agree on intervals to take *small breaks* and *return quickly* to the task. One of them might have more focus and help "awaken" the other if they lose it, that's why the role needs to be switched often.

**Keeping the team's work in progress low** is important (and one of the core principles of Kanban) to improve team flow. It helps us focus on the current task. The overall team *productivity often increases* if the team has a WIP limit in place, because multi-tasking is not just inefficient on an individual, but also on the team level.

>...it does seem that the general level of competence of such a group is likely to rise itself... -Gerald M. Weinberg, Egoless Programming

<!-- https://martinfowler.com/articles/on-pair-programming.html -->
<!-- https://en.wikipedia.org/wiki/Pair_programming -->
<!-- http://www.extremeprogramming.org/rules/pair.html -->
<!-- Pragmatic Programmer, topic 47 (page 425) -->
<!-- Software Engineering (page 88) -->
