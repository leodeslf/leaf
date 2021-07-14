# Principles

## Don't Repeat Your Self (DRY)

>Every piece of knowledge must have a single, unambiguous, authoritative
>representation within a system".
>
>-The Pragmatic Programmer.

Design, develop, test, mainteinance, and reusability will be easier by having a
single source of code.

Opposite to:

- Copy And Paste Programming (CAPP).
- Clone And Modify Programming (CAMP).
- Write Everything Twice (WET).

## Keep it Simple, Stupid! (KISS)

>Simplicity is the ultimate sophistication.
>
>-Leonardo da Vinci.

---

>Less is more.
>
>-Mies Van Der Rohe.

---

>It seems that perfection is reached not when there is nothing left to add,
>but when there is nothing left to take away.
>
>-Antoine de Saint Exupéry.

Just that.

## SOLID

Also known as class design principles.

### Single Responsibility Principle (SRP)

>A class should have only one responsibility. A class should have one, and only
>one reason to change.

### Open/Closed Principle (OCP)

>A class should be open for extension, but closed for modification.

Scalability should always be present, but external features should not make
changes just for the sake of "adaption" or "customization".

### Liskov Substitution Principle (LSP)

>Derived classes must be able to substitute for their base classes.

When we have A and B, B is A plus some features, A can be replaced by B if it's correctly done.

### Interface Segregation Principle (ISP)

>Many client-specific interfaces are better than one general-purpose interface.

The specific is better, easier to develop, test, and maintein, it respects the SRP and KISS principles.

### Dependency Inversion Principle (DIP)

>Depend upon abstractions, not concretions.

Make your code to depend upon feature concepts, not in other solutions.

## You Aren't Gonna Need It (YAGNI)

Don't write code because you think you are gonna need it later, write it
because you need it now.

<!-- write once run anywhere/away -->
