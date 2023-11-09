# Extreme Programming

Extreme Programming (or just XP) is a **software development methodology** based on *Agile*\*. It was designed to improve productivity by including the *customers into the team* as well as making *frequent and small releases* of working software. Thus adding value often, easing communication and feedback, and quickly *responding to change* on system requirements. And as a side effect, also reducing long-term risks since we avoid accumulating problems over time.

\*Not to confuse Agile with the later conceived *Agile Software Development* methodology.

## XP Origins

XP was introduced in the late 80s and early 90s (first used on March 6 of 1996) by Ward Cunningham, Kent Beck, Ron Jeffries, Martin Fowler, Don Wells, James Shore, among others to address the **constant change of requirements**. Said changes not only came from *customer decisions*, but also from *dynamic environment factors* (such as market trends, business priorities, nature conditions, etc), which is often unavoidable and hurts productivity.

It resulted in **a set of practices** for the *Chrysler Comprehensive Compensation* project (or C3, the "birth project" of XP), practices later isolated and named "Extreme Programming" under the slogan *"Embrace Change."* It was one of the first Agile methods. *Agile and Lean* (from the Toyota Production System) served as the inspiration and foundation for the XP values.

## What Makes XP Different

>Understanding the importance of potent teamwork, developing skills in adaptive planning, and close collaboration with the customers and users of the resulting software . . . enables teams to learn more about what is valuable. (The Art of Agile Development)

It's usually executed by *small teams* of 2 to 12 people including managers, testers, developers, and customers. A group known in XP as the *Whole Team*. Work is based on *interactions* of 1 to 2 weeks long, ensuring it's done at a *sustainable pace* for the long run.

XP has its *focus on customer and business value* over anything else and more than anything else. It drives us to concentrate on how to focus on value and how to deliver that value reliably. There are at least three concepts we can highlight:

- **Change is a fact**: there are a lot of reasons for it to happen, it will happen.
- **Release solutions by parts and often**: instead of waiting months for the complete one.
- **Customers are to be part of the team**: so we can ask to and hear from them on-demand.

## XP Values

>You are in harmony with your values when you are happy with your work. (Don Wells)

Most of them adopted from Agile, XP values are (but not limited to):

- **Simplicity**: we invest ourselves and our resources to *do what's needed, but no more*. We shall break down major processes into reasonable small steps to easily mitigate failures as they happen, *maximizing the added value* as well as *reducing long-term costs*.
- **Communication**: to *cooperate efficiently* we need a good communication. Everyone participates *face to face daily* in order to get to know and notify about any progress and problem. The solution's quality tends to *mirror* the quality of our communication.
- **Feedback**: we *return value at every step* of the process. Each team member gives its *perspective and opinion*. The whole team *delivers working software*. The customer gives its *review and needed modifications*. Feedback is a critical part of communication.
- **Respect**: being *a minimal requirement* for any job (and life in general), it's worth mentioning; managers, developers, clients, *everyone gives and receives* the respect they deserve. We *appreciate every contribution*, being it technical or non-technical.
- **Courage**: we will *handle the fears* that bias our action. While talking about progress and estimates, *truth and transparency is crucial*. We face any challenge *as a team*. We will always seek for the best solution by either taking *pleasant or unpleasant decisions*.

## Process & Practices of XP

Often called Rules, they are divided into five groups known as *XP phases* or stages. They define **working conditions**, **process steps**, and **approaches** for *every discipline*. In real life, many companies don't use all of the XP practices, they just *choose the ones that they find useful*. However, a few such as working in frequent and small releases, test-driven development, and continuous integration are used in most of the cases for modern development projects.

Some of the most relevant rules are as follows.

### Planning

The overall project planning may be *quantified* by four different variables:

- **Scope**: How much is to be done.
- **Resources**: How many people are available.
- **Time**: When the project (or release) will be done.
- **Quality**: How good and how well tested the software will be.

#### User Story

Often called just Story, it describes **what the system needs to do** so we can plan our work out from it. It's written by the customer in a *non-technical language* with a *low level of detail* to then be used by the rest of the team to *create time estimates*.

A good Story should have two characteristics:

- Represent *customer value*, it should directly benefit customers, users, or business needs.
- Has clear *completion criteria*, everyone is able to describe it and know when it's "done."

**Connextra** is a well-known template for Stories, e.g.:

- As a ... (role).
- I need ... (something).
- So that ... (results).

Stories are then broken down into **task cards** which are no longer written in the customer's language but in the *developer's language*, which is *technical and more detailed*), developers will also estimate how much it will take to finish each task.

#### Release

A release is meant to **deliver working software in short periods of time**, making it possible to *add value often* and to *make changes easily* as we don't accumulate much work to do and fix. We run a **release planning** meeting (also known as the *Planning Game*) at the beginning of every release to create the **release plan** by letting the customer define *which functionality has to be done* at the end of the the release. Here we also define the **release schedule** which is negotiated and then committed by everyone involved in the project.

#### Iteration

Iterations **divide a release** into even *shorter periods of time*. **Iteration planning** meetings take part at the start of each iteration (as we do for the release) to, one more time, let the customer choose and *prioritize the stories* that need to be done at the end of the iteration.

### Managing

Managing is *the weakest point of XP*, that's why Scrum has been created.

#### Stand Up Meeting

Stand up meetings happen every morning to **report issues, solutions, and promote focus**. They are a *much more efficient* alternative when compared with the long, tedious, and unattended traditional meetings, *keeping us from wasting large amounts of resources* such as time and people, also making them easy to be scheduled (or not schedule at all). They can even *take part spontaneously* in front of a computer to discuss about code, for example.

Every attendee should report at least three things:

1. What was accomplished yesterday.
1. What will be attempted today.
1. What problems are causing delays.

<!-- TODO [It's Not Just Standing Up: Patterns for Daily Standup Meetings (martinfowler.com)](https://martinfowler.com/articles/itsNotJustStandingUp.html) -->

#### Project Velocity

A metric used to determine the **event rate** for the project by measuring either by time or by scope. Approaches known as *Date Driven Commitment* and *Story Driven Commitment* respectively. The initial estimate is just a guess (as we have nothing to measure), but then we take numbers from each finished iteration to know either: *how many stories* can fit within a given *period of time*; or *how long it will take* to finish a given *set of stories*. Velocity helps us work at a sustainable, measurable, and *predictable pace*, however, a few ups and downs are expected.

#### Whole Team

>Agile teams need skills, not roles. (The Art of Agile Development)

The group of **managers, developers, and customers** is known in XP as the Whole Team. It's composed of people with diverse skills such as *customer, development, and coaching skills*, which in more general terms are *people, artistic, and technical skills*. These people build up a self-sufficient *cross-functional*, *self-organizing* team in which everyone works to broaden their skills over time, specially customer-related skills, one of the most relevant and difficult ones. Skilled people is the *fundamental resource* for the business to deliver a successful result.

#### Sit Together

>When people can't communicate directly, the effectiveness of their communication decreases. It's too easy for writing to be misunderstood. (The Art of Agile Development)

It is another key concept related to teams. It is to have a **dedicated open work place**. Thus enhancing communication and encouraging everyone to participate with the feeling of *equal value and contribution*, letting people to work either in pairs or alone *with no distractions*, but at the same time, *without becoming disconnected* from the group. Boards and blank walls for sketching and posting user stories are a perfect *channel for communication*. Areas for daily meetings keep people from missing them, encouraging everyone to *listen and join*.

### Designing

#### On Simplicity

>Simplicity is the ultimate sophistication. (Leonardo da Vinci)

*Do the simplest tasks first* to only then refactor incrementally if needed. Simplicity is hard to measure because *it's a subjective quality*. One person's simple could be another person's complex. It requires *domain knowledge* to know when something is simple and adequate. However, we can measure qualities such as how *testable, understandable, browsable, and explainable* something is (aka. TUBE). At the end, **the team decides what is simple**, that's key for XP to be reliable.

Related and well-known XP practices:

- **Do the simplest thing that could possibly work** (DTSTTCPW), always implement only the simplest job first, leave the complex or uncertain for later. More at:
  - [Never Add Functionality Early (extremeprogramming.org)](http://www.extremeprogramming.org/rules/early.html);
  - [Simple, Not Easy (ronjeffries.com)](https://ronjeffries.com/articles/018-01ff/simple-not-easy/);
  - [Do The Simplest Thing That Could Possibly Work (wiki.c2.com)](http://wiki.c2.com/?DoTheSimplestThingThatCouldPossiblyWork).
- **You aren't gonna need it** (YAGNI): concentrate on what is scheduled for today only, avoid wasting time with vague assumptions and not actually/currently required features. More at:
  - [Yagni (martinfowler.com)](https://martinfowler.com/bliki/Yagni.html);
  - [YAGNI, yes. Skimping, no. Technical Debt? Not even. (ronjeffries.com)](https://ronjeffries.com/articles/019-01ff/iter-yagni-skimp/);
  - [You Are Not Gonna Need It (wiki.c2.com)](https://wiki.c2.com/?YouArentGonnaNeedIt).

#### Spikes

A spike is a prototype-like software meant to **explore potential solutions** and difficulties for a very specific problem. The concept is quite similar to a Minimum Viable Product (MVP) but for a single (or small group of) features defined by a single user story. As a result, a spike helps to *reduce technical risks* and *increase estimates' reliability*. Usually they are discarded after use, as they tend to be *not good enough to keep*. That's why we should keep them short and simple.

#### Refactoring

>Always leave the code a little better than you found it. (The Art of Agile Development)

Read notes at [Refactoring (docs-and-notes)](https://docs-and-notes.vercel.app/notes/method/agile/xp/refactoring/).

### Coding

#### The Customer is Always Available

Most XP practices are optional or context-dependent, however, **to have the customers always available** is actually a requirement. All project phases require *constant communication* with them, *preferably face-to-face* as on-site customer. They are *an actual team member*.

They are the ones who *write the user stories*. During both release and iteration planning meetings, customers *choose which stories are to be done*. They also *negotiate the timing to be scheduled*. Before the coding job starts, customers *detail each user story*. Once a piece of software is working, they *give early feedback* to the team. When doing functional testing we require them to *help with the desired data for each use case*. Customers *review and decide if it is good enough* and what should be fixed or changed through acceptance tests before code is deployed.

#### Code Standards

The development team needs to **agree on the coding standards** they consider optimal. Code that looks consistent and familiar *encourages collective ownership*. Code that follows the same rules and has the same format *makes it easy for everyone to find, read, understand, and refactor* as we don't need to waste time thinking which way to do it.

#### Test-Driven Development

Read notes at [Test-Driven Development (docs-and-notes)](https://docs-and-notes.vercel.app/notes/method/agile/xp/tdd/).

#### Pair Programming

Read notes at [Pair Programming (docs-and-notes)](https://docs-and-notes.vercel.app/notes/method/agile/xp/pair_programming/).

#### Collective Ownership

>Programming is a social activity. (Robert C. Martin)

The **whole team shares responsibility** for its results. If something goes wrong, *we work together to solve the problem*; if something goes well, *we all takes credit for it*. This also warranties that *knowledge will remain* in case somebody leaves the team. We should be always available to *assist who needs help* and *learning how to contribute* to work we don't yet know well. Team members can work on a different task independently, however, it's better to *tackle one story at a time*, so *work in progress will be minimal* and *risks will get exposed early*.

##### Egoless Programming

>It does seem that the general level of competence of such a group is likely to rise itself. (Gerald M. Weinberg, The Psychology of Computer Programming, 1971, p. 60)

We need to **let go a bit of ego**. *Enjoy sharing and building together*. Accept that our solutions could be *improved or fixed by others*. Rather than thinking "my code," think "our code." Exposing other person's weak points and mistakes is an opportunity for conflict to happen, however, *it is a good thing, it helps us align our styles*. That's why we follow coding standards and do pair programming (among other practices), they help us *smooth the process*.

>Secretive, possessive programming [is] bad . . . open, shared programming [is] good . . . Errors [are] simply facts to be expected to investigation with an eye to future improvement, not attacks. (Gerald M. Weinberg, The Psychology of Computer Programming, 1971, p. 57)

Gerald M. Weinberg published "The Psychology of Computer Programming," book in which he introduced the concept of Egoless Programming. In it he describes timeless facts such as:

- *Don't be "the guy in the room."*
- Understand and *accept that you will make mistakes*.
- Treat people who know less than you with *respect and patience*.
- *Keep your code clear and understandable*, someone will read it later.
- *Don't rewrite code for the sake of doing it your way*, make what's required only.
- No matter how much you know, *someone else will always know more than you*.
- *Critique code instead of people, be kind* to the coder, no to the code.
- The only true *authority stems from knowledge*, not from position.
- Fight for what you believe, but *gracefully accept defeat*.
- The only constant in the world is *change*.
- *You are not your code*.

#### Continuous Integration

XP encourages to **commit code multiple times a day**, we should never wait more than 24 hours to integrate a new change. To achieve that, *we all need to work with the latest version* of the system. Communication among developers is critical to *keep integration smooth*, it's important for them to share information about what can be *reused and shared*.

The main idea is to standardize and automate the integration process, thus we can take releasing as *a business decision* instead of a technical problem. Instead of thinking how will we get all our code to work together every time we need to release a new version: **we just press a button**. By consequence, continuous integration helps us detect and *avoid compatibility problems* from being accumulated.

### Testing

#### Unit Testing

Read notes at [Unit Testing (docs-and-notes)](https://docs-and-notes.vercel.app/notes/method/agile/xp/unit/).

#### Acceptance Testing

An acceptance test **ensures a user story has been successfully implemented** or it is at least acceptable *by the customers' judgement*. During iteration planning, customers not only select the stories we will work on, but they also *specify scenarios and expected results* for the respective acceptance test of each story. Several tests are often defined for a single story. At a certain point before deploying the new code, *we demonstrate* the current software to the customers, then *they decide whether  or not to proceed* based on their domain knowledge.

## Benefits of XP

- System's **code is clear**.
- System's **quality keeps high**.
- **High customer satisfaction** as they are highly involved with the project.
- **Add value quickly** as the team delivers code fast and often.
- **Collective ownership** tends to improve relationship among team members and the culture of the organization.
- **Avoid misunderstandings and misinformation** due to the constant communication and feedback.
- **Avoid wasting time** from doing what is no needed to be done.
- **Avoid late, expensive hotfixes** as the system gets tested and evaluated often.

---

Reference:

- The Art of Agile Development.
- Learn Agile (page 43, 175, 183, 219).
- Software Engineering (page 64).
- Extreme Programming Explained (page 37, 56).
- [Extreme Programming (martinfowler.com)](https://martinfowler.com/bliki/ExtremeProgramming.html).
- [Extreme Programming (wiki.c2.com)](https://wiki.c2.com/?ExtremeProgramming).
- [Extreme Programming (wikipedia.org)](https://en.wikipedia.org/wiki/Extreme_programming).
- [Extreme Programming (XP) (agilealliance.org)](https://www.agilealliance.org/glossary/xp/).
- [Extreme Programming: A gentle introduction (extremeprogramming.org)](http://www.extremeprogramming.org/).
- [Extreme Programming: Values, Principles, and Practices (altexsoft.com)](https://www.altexsoft.com/blog/business/-extreme-programming-values-principles-and-practices/).
- [What is Extreme Programming? (ronjeffries.com)](https://ronjeffries.com/xprog/what-is-extreme-programming/).
