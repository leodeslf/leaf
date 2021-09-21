# Principles

In fact: methods, philosophies, principles, strategies and more.

## Don't Repeat Yourself (DRY)

Design, develop, test, maintenance, and reusability will be easier by having a **single source of code**, then reuse it and modify it in another place as needed.

Opposite to:

- Copy And Paste Programming, **CAPP**.
- Clone And Modify Programming, **CAMP**.
- Write Everything Twice, **WET**.

The Pragmatic Programmer:
>Every piece of knowledge must have a single, unambiguous, authoritative representation within a system".

## Keep it Simple, Stupid! (KISS)

Each method should solve **only one** problem. More problems, options, or conditions should be solved by another block of code to be easily maintained.

Leonardo da Vinci:
>Simplicity is the ultimate sophistication.

Mies Van Der Rohe:
>Less is more.

Antoine de Saint Exupéry:
>It seems that perfection is reached not when there is nothing left to add, but when there is nothing left to take away.

## SOLID

Also known as class design principles.

### Single Responsibility Principle (SRP)

Similar to the goal of KISS, code that follows this principle is easy to understand, maintain, and modify. It's also similar to DRY if done correctly. The goal is to **isolate** requirements and functionality **in one place**.

>A class should have only one responsibility. A class should have one, and only one reason to change.

### Open/Closed Principle (OCP)

Scalability should always be present, but additional features should not make changes just for the sake of adaption or customization. If something is working and tested, it should be **extended** making use of inheritance or prototyping, **not modified**.

>A class should be open for extension, but closed for modification.

### Liskov Substitution Principle (LSP)

A derived element should *be* it's base element and more. In other words, if S is a subtype of T, then any of type T may be substituted by any S. As a subtype should **inherit** it's parent requirements, and **include additional features** (not to replace).

>Derived classes must be able to substitute for their base classes.

### Interface Segregation Principle (ISP)

The **specific is better**, easier to develop, test, and maintain, it respects the SRP and KISS principles. We prefer to use many specific and easy-to-use interfaces than a single and complex one. It's intended to **keep a system decoupled** and thus easier to use and maintain.

>Many client-specific interfaces are better than one general-purpose interface.

### Dependency Inversion Principle (DIP)

Make your modules to **depend on abstractions**/interfaces, **not in details** of concrete implementation. Also, high-level modules should not depend on low-level ones, and both should depend on abstractions.

>Depend upon abstractions, not concretions.

## Extreme Programming (XP)

### You Aren't Gonna Need It (YAGNI)

Only implement things when you **need** them, don't do them because you *think* you are gonna need it later.

### Do the simplest thing that could possibly work (DTSTTCPW)

Prioritize requirements and **do only the important** things. Don't do things you don't need, don't improve things if not needed.

## MoSCoW

A **prioritization method** to reach a common understanding of the *importance* of each requirement among a team. Developed by Dai Clegg in 1994.

### Must have

They are **critical** for the current release to be delivered. If a requirements like this is not included, the project should be considered a *failure*.

### Should have

They are **important** but not necessary for the current release. They are just *not needed now*, or the requirement can be satisfied in another way.

### Could have

They are **desirable** but not necessary. Taken as a  *suggestion to improve* the product for a low cost in development. These are included if there is enough time.

### Won't have

They are least-critical and **not planned** for the current release. In general they are either *reconsidered* for a future release or *dropped* at all.

## Worth mentioning

- **If it ain't broke, don't fix it**.
- **Measure twice, cut once**.
- **Occam's Razor** (less dependencies are better).
- **Law of Demeter** (only talk to your friends).
- **Big Design Up Front** (BDUF).
- **Avoid Premature Optimization**.
- **Minimum Viable Product** (MVP).
