# Design Patterns

Design patterns have three main *benefits* as they are:

- *Proven solution*, tested and optimized by many developers many times.
- *Easily reusable*, they are the generic tool for specific problems.
- *Expressive*, elegant and self-evident solutions can be made with them.

They also *ease communication* and *prevent refactoring* as they create a common language for developers and the solutions are often the best ones.

## Creational Patterns

Creational design patterns focus on the **instantiation process**. They help make a system independent of how its objects are created, composed, and represented. This kind of pattern becomes important as systems evolve to depend more on composition than inheritance. Emphasis shifts always from hardcoding a fixed set of behaviors toward defining *a smaller set of fundamental behaviors*.

Two aspects these patterns have:

- They all *encapsulate* knowledge about which concrete classes the system uses.
- They *hide* how instances of these classes are created and put together.

Pattern|Description
---|---
**Abstract Factory**|An interface for creating *families of related objects* without specifying their concrete classes. Pattern also known as Kit.
**Builder**|An interface for creating the same type of object with different contents, so the same construction process can *create different representations*.
**Factory Method**|A superclass for creating objects not directly, but by *deferring instantiation to subclasses*. These subclasses decide which specific class to instantiate. Pattern also known as Virtual Constructor.
**Prototype**|A fully initialized object as *a prototypical instance to be copied* or cloned. By copying this prototype we don't need to know about its class implementation.
**Singleton**|It ensures that one, and *only one globally accessible instance* of a class can exist.

## Structural Patterns

These patterns are concerned with **object composition** and how to form larger structures while keeping these structures flexible, and efficient. They identify simple ways to *realize relationships among entities*. This kind of pattern is particularly useful for making independently developed classes and class libraries work together.

Pattern|Description
---|---
**Adapter**|A class that *translates one interface to another*, allowing objects with incompatible components to collaborate that otherwise wouldn't because of mismatching interfaces. Pattern also known as Wrapper.
**Bridge**|An interface that *splits one or more classes into two separate hierarchies*, decoupling an abstraction from its implementation so they can vary independently. Pattern also known as Double Adapter.
**Composite**|*A tree structure of different representations* for the same composed object, allowing the creation of deeply nested structures.
**Decorator**|A class to *attach new behaviors to an object dynamically*. Multiple decorators can add or override functionality at the same time. Pattern also known as Wrapper, like Adapter.
**Facade**|*A simplified interface*, a single class that represents an entire subsystem, a more complex set of classes.
**Flyweight**|A single interface to efficiently *share large numbers of fine-grained objects*, instead of keeping all of the common parts repeated in each of these objects.
**Proxy**|A placeholder object that *represents and controls access to another object*. It allows us to perform tasks either before or after a request gets through the original object. Pattern also known as Surrogate.

## Behavioral Patterns

They focus on the **communication between objects** and the assignment of responsibilities. They shift our focus away from flow of control to let us concentrate on the way objects are interconnected and how they know about each other. They describe *how objects cooperate* to perform tasks that no single object can carry out by itself.

Pattern|Description
---|---
**Chain of Responsibility**|An interface to *pass a request along a chain of objects* called handlers, each handler decides either to process the request or to pass it to the next one.
**Command**|It *turns a request into an object*, letting us parameterize, log, queue, or undo requests at our discretion. It separates the responsibilities between objects issuing and executing requests. Pattern also known as Action, Transaction.
**Interpreter**|Provides *a representation for a given language's grammar* along with the corresponding interpreter.
**Iterator**|Allows clients to *sequentially access all the elements of a collection* without exposing its underlying representation. Pattern also known as Cursor.
**Mediator**|An interface that *encapsulates communication between a group of objects* as a central authority, keeping those objects from referring to each other directly.
**Memento**|Offers a way to *capture and save an object's internal state*, letting us reuse or restore it later. Pattern also known as Token.
**Observer**|A subscription model to *notify and update objects from a one-to-many dependency* based on the dependency's events. Pattern also known as Publish/Subscribe.
**State**|An object that *alters other object's behavior when its internal state changes*, those objects will appear to change its class. Pattern also known as Objects for State.
**Strategy**|*A family of interchangeable algorithms encapsulated in different classes* to be used by a single one through a generic interface. Pattern also known as Policy.
**Template Method**|It lets *subclasses override steps of an algorithm without changing its structure*, the actual Template Method, predefined in the superclass.
**Visitor**|It defines *a new operation for a class without changing the class itself*. It separates extensible new behavior from the object on which it originally performs.

---

Reference:

- Design Patterns (GoF).
- [Design Patterns (refactoring.guru)](https://refactoring.guru/design-patterns).
- [JavaScript Design Patterns (dofactory.com)](https://www.dofactory.com/javascript/design-patterns)
- [Learning JavaScript Design Patterns (patterns.dev)](https://www.patterns.dev/posts/classic-design-patterns/).
