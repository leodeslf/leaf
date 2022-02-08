---
layout: default
---
## Design Patterns

From the books:

- Design Patterns.
- Learning JavaScript Design Patterns.

Design patterns have three main benefits:

- *Proven solution*, tested and optimized by many developers many times.
- *Easily reusable*, they are the generic tool for specific problems.
- *Expressive*, elegant and selfevident solutions can be made with them.

They also *ease communication* and *prevent refactoring* as they create a common language for developers and the solutions are often the best ones.

### Creational Patterns

Creational design patterns abstract the **instantiation** process. They help make a system independent of how its objects are created, composed, and represented.

We can apply this concept by making:

- Objects to defer part of their creation to *other objects*;
- Classes to defer part of their object creation to *subclasses*.

This kind of pattern become important as systems evolve to depend more on object composition than class inheritance. Emphasis shifts aways from hardcoding a fixed set of behaviors toward defining a smaller set of fundamental behaviors. Creational patterns give us flexibility about *what* gets created, *who* creates it, *how* is gets created, and *when*.

Two aspects these patterns have:

1. They all encapsulate knowledge about which concrete classes the system uses.
1. They hide how instances of these classes are created and put together.

#### Abstract Factory

Provide an interface for *creating families of related objects without specifying their concrete classes*. Also known as Kit.

Applicable when:

- A system should be independent of how its products are created, composed, and represented.
- A system should be configured with one of multiple families of products.
- A family of related product objects is designed to be used together, and we need to enforce this constraint.
- We want to provide a class library of products, and we want to reveal just their interfaces, not their implementations.

Consequences:

- It isolates concrete classes.
- It makes exchanging product families easy.
- It promotes consistency among products.
- Supporting new kinds of products is difficult.

Related patterns:

Abstract Factory is often implemented with Factory Method and Prototype, a concrete factory is often a Singleton.

#### Builder

*Separate the construction of an object from its representation* so that the same construction process can create different representations.

Applicable when:

- The algorithm for creating a complex object should be independent of the parts that make up the object and how they're assembled.
- The construction process must allow different representations for the object that's constructed.

Consequences:

- It lets us vary a product's internal representation.
- It isolates code for construction and representation.
- It gives us finer control over the construction process.

Related patterns:

It's similar to Abstract Factory, but instead of returning a product from a family, it returns a complex object after several steps. A Composite is what the builder often builds.

#### Factory Method

Define an interface for creating an object, but *let the subclasses decide which class to instantiate*. Factory Method kets a class defer instantiation to subclasses. Also known as Virtual Constructor.

Applicable when:

- A class can't anticipate the class of object it must create.
- A class wants its subclasses to specify the objects it creates.
- Classes delegate responsibility to one of several helper subclasses, and we want to localize the knowledge of which helper subclass is the delegate.

Consequences:

- Provides hooks for subclasses.
- Connects parallel class hierarchies.

Related patterns:

As said before Abstract Factory is often implemented with Factory Method. Factory Methods are usually called within Template Methods.

#### Prototype

Specify the kinds of objects to create using a prototypical instance, and *create new objects by copying this prototype*.

Applicable when a system should be independent of how its products are created, composed, and represented (as with Abstract Factory), and:

- When the classes to instantiate are specified at run-time.
- To avoid building a class hierarchy of factories that parallels the class hierarchy of products.
- When instances of a class can have one of only a few different combinations of state.

Consequences:

- Adding and removing products at run-time.
- Specifying new objects by varying values.
- Specifying new objects by varying structure.
- Reduced subclassing.
- Configuring an application with classes synamically.

Related patterns:

Prototype and Abstract Factory are competing patterns in some ways. They can also be used together. An Abstract Factory might store a set of proyotypes from which to clone and return product objects. Designs that make heavy use of the Composite and Decorator patterns often can benefit from Prototype as well.

#### Singleton

*Ensure a class only has one instance*, and provide a global point of access to it.

Applicable when:

- There must be exactly one instance of a class, and it must be accessible to clients from a well-known access point.
- The sole instance should be extensible by subclasses, and clients should be able to use an extended instance without modifying their code.

Consequences:

- Controlled access to the sole instance.
- Reduced name space.
- Permits refinement of operations and representation.
- Permits a variable number of instances.
- More flexible than class operations.

Related patterns:

Many patterns can be implemented using a Singleton, see Abstract Factory, Builder, and Prototype.

### Structural Patterns

Structural patterns are concern with how classes and objects are **composed** to form larger structures while keeping these structures flexible and efficient, easing the design by identifying a simple way to realize *relationships among entities*. This kind of pattern is particularly useful for making independently developed class libraries work together.

In practice:

- Class patterns use *inheritance* to compose interfaces or implementations.
- Object patterns describe ways to *compose objects* to realize new functionality.

#### Adapter

Convert the interface of a class into *another interface clients expect*. Adapter lets classes work together that couldn't otherwise becasuse of incompatible interfaces. Also known as Wrapper.

#### Bridge

*Decouple an abstraction from its implementation* so that the two can vary independently. Also known as Handle/Body.

#### Composite

*Compose objects into tree structures to represent part-whole hierarchies*. Composite lets clients treat individual objects and compositions of objetcs uniformly.

#### Decorator

*Attach additional responsibilities to an object dynamically*. Decorators provide a flexible alternative to subclassing for extending functionality. Also known as Wrapper.

#### Facade

Provide a *unified interface to a set of interfaces in a subsystem*. Facade defines a higher-level interface that makes the subsystem easier to use.

#### Flyweight

Use *sharing* to support large numbers of fine-grained objects efficiently.

#### Proxy

Provide a *placeholder* or surrogate for another object to control access to it. Also known as Surrogate.

### Behavioral Patterns

Behavioral patterns are concern with **communication** among objects, algorithms and the assignment of responsibilities between them. These patterns shift our focus away from flow of control to let us concentrate just on the way objects are interconnected.

To achieve it:

- Class patterns use *inheritance* to distribute behavior between classes.
- Object patterns use *object compositon* rather than inheritance.

Some patterns describe how a group of peer objects *cooperate* to perform a task that no single object can carry out by itself. An important issue here is how peer objects know about each other. In an extreme case, every object will know about every other.

#### Chain of Responsability

*Avoid coupling a request sender to its receiver* by giving more than one object a chance to handle the request. Chain the receiving objects and *pass the request along the chain unil an object handles it*.

#### Command

*Encapsulate a request as an object*, thereby letting us parameterize clients with different requests, queue or log requests, and support undoable operations. Also known as Action, Transaction.

#### Interpreter

Given a language, *define a representation for its grammar along with an interpreter* that uses the representation to interpret sentences in the language.

#### Iterator

provide a way to *access the elements* of an aggregate object sequentially *without exposing its underlying representation*. Also known as Cursor.

#### Mediator

Define an object that *encapsulates how a set of objects interact*. Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets us vary their interaction independently.

#### Memento

Without violating encapsulation, *capture and externalize an object's internal state* so that the object can be restored to this state later. Also known as Token.

#### Observer

Provide a way to *notify and update objects from a one-to-many dependency*. When one object changes state, all the dependents will automatically synchronise. Also known as Dependents, Publish-Subscribe.

#### State

Allow an object to *alter its behavior when its internal state changes*. The object will appear to change its class. Also known as Objects for State.

#### Strategy

Define *a family of encapsulated and interchangeable algorithms*. Strategy lets the algorithm vary independently from clients that use it. Also known as Policy.

#### Template Method

For an operation, define *the skeleton of its algorithm, deferring some steps to subclasses*. Template Method lets subclasses redefine steps of an algorithm without changing the algorithm's structure.

#### Visitor

Represent an operation to be performed on the elements of an object structure. Visitor lets us *define a new operation without changing the classes* of the elements on which it operate.

<!-- #### Creational Design Patterns

##### Factory Method

Provides an interface for creating objects in a superclass. Allows subclasses to alter the type of object that will be created.

Use it when:

- You don't know the requirements of the objects you'd work with.
- You need your library with a way to extend its internal components.
- You want to save system resources by reusing existing objects.

##### Abstract Factory

Produce families of related objects without specifying their concrete classes.

Use it when:

- You need to work with various families of related objects.

##### Builder

Allows you to produce different representations of an object using the same construction code.

Use it when:

- You want to get ride of a "telescopic constructor" (with a simpler one).
- You need to create different types of the same object.

##### Prototype

Lets you copy existing objects without making your code dependent on their classes.

Use it when:

- Your code shouldn't depend on the concrete classes for objects that you need to copy.
- You want to reduce the number of subclasses that only differ in the way they initialize their respective objects.

##### Singleton

Lets you ensure that a class has only one instance, while providing a global access point to this instance.

Use it when:

- You need stricter control over global variables.

#### Structural Design Patterns

##### Adapter

Allows objects with incompatible interfaces to collaborate.

Use it when:

- You need to reuse or communicate several existing subclasses that lack some common functionality.

This design pattern also applies for the object scope.

##### Bridge

Lets you split one or more closely related classes into two separate hierarchies (abstraction and implementation) which can be developed independently of each other.

Use it when:

- You want to divide a monolithic class.
- You need to extend a class in several orthogonal dimensions.
- You need to switch implementations at runtime.

##### Composite

Lets you compose objects into tree structures and then work with these structures as if they were individual objects.

Use it when:

- You need to implement a tree-like object structure.
- You want the client to treat both simple and complex elements uniformly.

##### Decorator

Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

Use it when:

- You need to assign extra behaviors to objects without breaking the code that uses them.
- It’s awkward or not possible to extend an object’s behavior using inheritance.

##### Facade

Provides a simplified interface to a library, framework or any other complex set of classes.

Use it when:

- You need to have a limited but straightforward interface to a complex subsystem.
- You want to structure a subsystem into layers.

##### Flyweight

Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.

Use it when:

- Your program must support a huge number of objects which barely fit into available RAM.

##### Proxy

Lets you provide a substitute/placeholder for an object.

A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.

Use it when:

- Lazy initialization, _Virtual Proxy_: Have a heavyweight service object that wastes system resources.
- Access control, _Protection Proxy_: Want only specific clients to be able to use the service object.
- Local execution, _Remote Proxy_: The service object is located on a remote server.
- Logging requests, _Logging Proxy_: Want to keep a history of requests to the service object.
- Caching requests results, _Caching Proxy_: Need to cache results of client requests and manage the life cycle of this cache.
- Smart reference: You need to be able to dismiss a heavyweight object when there are no clients that use it.

#### Behavioral Design Patterns

##### Interpreter

...

##### Template Method

Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

Use it when:

- You want to let clients extend only particular steps of an algorithm.
- You have several classes that contain almost identical algorithms.

##### Chain of responsibility

Lets you pass requests along a chain of handlers.

Use it when:

- Your program is expected to process different kinds of requests in various ways.
- It’s essential to execute several handlers in a particular order.
- The set of handlers and their order are supposed to change at runtime.

##### Command

It turns a request into a stand-alone object that contains all information about the request. This transformation lets you parameterize methods with different requests, delay or queue a request’s execution, and support undoable operations.

Use it when:

- You want to parameterize objects with operations.
- You want to queue operations, schedule their execution, or execute them remotely.
- You want to implement reversible operations.

##### Iterator

Lets you traverse elements of a collection without exposing its underlying representation.

Use it when:

- Your collection has a complex data structure under the hood, but you want to hide its complexity from clients.
- Reduce duplication of the traversal code across your app.
- You want your code to be able to traverse different data structures or when types of these structures are unknown beforehand.

##### Mediator

Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.

Use it when:

- It’s hard to change some of the classes because they are tightly coupled to a bunch of other classes.
- Can't reuse a component in a different program because it's too dependent on other components.
- Find yourself creating tons of component subclasses just to reuse some basic behavior in various contexts.

##### Memento

Lets you save and restore the previous state of an object without revealing the details of its implementation.

Use it when:

- You want to produce snapshots of the object’s state.
- Direct access to the object’s fields/getters/setters violates its encapsulation.

##### Observer

Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they’re observing.

Use it when:

- Changes to the state of one object may require changing other objects.
- Some objects in your app must observe others, but only for a limited time or in specific cases.

##### State

Lets an object alter its behavior when its internal state changes.

Use it when:

- You have an object that behaves differently depending on its current state.
- You have a class polluted with massive conditionals that alter how the class behaves.
- You have a lot of duplicate code across similar states and transitions of a condition-based state.

##### Strategy

Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

Use it when:

- You want to use different variants of an algorithm within an object.
- You have a lot of similar classes that only differ in the way they execute some behavior.
- You want to isolate the business logic of a class from the implementation details of algorithms that may not be as important in the context of that logic.
- Your class has a massive conditional operator that switches between different variants of the same algorithm.

##### Visitor

Lets you separate algorithms from the objects on which they operate.

Use it when:

- You need to perform an operation on all elements of a complex object structure.
- You want to clean up the business logic of auxiliary behaviors.
- A behavior makes sense only in some classes of a class hierarchy. -->
