# Object Oriented Programming

*Simula(67)* was the first OOL, developed in the 60s in Norway.

## OOP Principles

### Abstraction

It is **the pure concept of a requirement**, it does not rely on concrete implementation details. We use it to define *what we need the software to do*, only then, based on that definition, we think about how will it do it.

### Encapsulation

It is **to hide implementation details** (data or function members) that don't need to be visible from the outside (from any other object or non-object peace of software), thus we gain *control over what can be accessed or not*, and, at the same time, we *avoid name collision* between different interfaces.

### Inheritance

It is **to reuse data and function members** from a base implementation (a superclass) to a derived implementation (a subclass). That way we *save time* from developing and testing while still being able to *make modifications* to inherited members.

### Polymorphism

It is **the ability for an interface to change its value** (data or function value) while *keeping the same name*, as well as being able to *exist in several objects*, so each object will process the same message in a different manner.

## OOP Design Principles

### SOLID

#### Single Responsibility Principle (SRP)

>A class should have only one responsibility. A class should have one, and only one reason to change.

Similar to the goal of KISS, code that follows this principle is easy to understand, maintain, and modify. It's also similar to DRY if done correctly. The goal is to **isolate** requirements and functionality **in one place**.

#### Open/Closed Principle (OCP)

>A class should be open for extension, but closed for modification.

Scalability should always be present, but additional features should not make changes just for the sake of adaption or customization. If something is working and tested, it should be **extended** making use of inheritance or prototyping, **not modified**.

#### Liskov Substitution Principle (LSP)

>Derived classes must be able to substitute for their base classes.

A derived element should *be* its base element and more. In other words, if S is a subtype of T, then any of type T may be substituted by any S. A subtype should **inherit** its parent requirements and **include additional features** (not to replace them).

#### Interface Segregation Principle (ISP)

>Many client-specific interfaces are better than one general-purpose interface.

The **specific is better**, easier to develop, test, and maintain, and it respects the SRP and KISS principles. We prefer to use many specific and easy-to-use interfaces than a single and complex one. It's intended to **keep a system decoupled** and thus easier to use and maintain.

#### Dependency Inversion Principle (DIP)

>Depend upon abstractions, not concretions.

Make your modules to **depend on abstractions**/interfaces, **not in details** of concrete implementation. Also, high-level modules should not depend on low-level ones, and both should depend on abstractions.

<!-- TODO -->
<!-- https://www.linkedin.com/posts/nikkisiapno_solid-principles-are-key-in-object-oriented-activity-7130148606908502016-z6E1/ -->

---

Reference:

- Clean Architecture (page 57).
- [Basic Principles of Object Oriented Programming (partech.nl)](https://www.partech.nl/en/publications/2020/10/basic-principles-of-object-oriented-programming#).
- Data Structures and Algorithms in C++ (page 1, 6, 21).
- [The Four Pillars of Object Oriented Programming (info.keylimeinteractive.com)](https://info.keylimeinteractive.com/the-four-pillars-of-object-oriented-programming).
- [Understanding OOP (oreilly.com)](https://www.oreilly.com/learning-paths/learning-path-application/9781789619737/9781789137705-video4_4/).
