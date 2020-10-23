# Design Patterns

Types:

- [Creational](#Creational)
- [Structural](#Structural)
- [Behaviolar](#Behaviolar)

## Creational 🧬

Class _instantiation_.

Patterns:

- [Factory Method](#Factory-Method)
- [Abstract Factory](#Abstract-Factory)
- [Builder](#Builder)
- [Prototype](#Prototype)
- [Singleton](#Singleton)

<!-- - Object Pool -->

### Factory Method

![ref](https://refactoring.guru/images/patterns/cards/factory-method-mini.png)

Provides an interface for creating objects in a superclass. Allows subclasses to alter the type of object that will be created.

Use it when:

- You don't know the requirements of the objects you'd work with.
- You need your library with a way to extend its internal components.
- You want to save system resources by reusing existing objects.

### Abstract Factory

![ref](https://refactoring.guru/images/patterns/cards/abstract-factory-mini.png)

Produce families of related objects without specifying their concrete classes.

Use it when:

- You need to work with various families of related objects.

### Builder

![ref](https://refactoring.guru/images/patterns/cards/builder-mini.png)

Allows you to produce different representations of an object using the same construction code.

Use it when:

- You want to get ride of a "telescopic constructor" (with simpler one).
- You need to create different types of the same object.

### Prototype

![ref](https://refactoring.guru/images/patterns/cards/prototype-mini.png)

Lets you copy existing objects without making your code dependent on their classes.

Use it when:

- Your code shouldn't depend on the concrete classes fo objects that you need to copy.
- You want to reduce the number of subclasses that only differ in the way they initialize their respective objects.

### Singleton

![ref](https://refactoring.guru/images/patterns/cards/singleton-mini.png)

Lets you ensure that a class has only one instance, while providing a global access point to this instance.

Use it when:

- You need stricter control over global variables.

## Structural 🏗

Class and Object _composition_.

Patterns:

- [Adapter](#Adapter)
- [Bridge](#Bridge)
- [Composite](#Composite)
- [Decorator](#Decorator)
- [Facade](#Facade)
- [Flyweight](#Flyweight)
- [Proxy](#Proxy)

<!-- - Private Class Data -->

### Adapter

![ref](https://refactoring.guru/images/patterns/cards/adapter-mini.png)

Allows objects with incompatible interfaces to collaborate.

Use it when:

- You need to reuse or communicate several existing subclasses that lack some common functionality.

### Bridge

![ref](https://refactoring.guru/images/patterns/cards/bridge-mini.png)

Lets you split one or more closely related classes into two separate hierarchies (abstraction and implementation) which can be developed independently of each other.

Use it when:

- You want to divide a monolithic class.
- You need to extend a class in several orthogonal dimensions.
- You need to switch implementations at runtime.

### Composite

![ref](https://refactoring.guru/images/patterns/cards/composite-mini.png)

Lets you compose objects into tree structures and then work with these structures as if they were individual objects.

Use it when:

- You need to implement a tree-like object structure.
- You want the client to treat both simple and complex elements uniformly.

### Decorator

![ref](https://refactoring.guru/images/patterns/cards/decorator-mini.png)

Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

Use it when:

- You need to assign extra behaviors to objects without breaking the code that uses them.
- It’s awkward or not possible to extend an object’s behavior using inheritance.

### Facade

![ref](https://refactoring.guru/images/patterns/cards/facade-mini.png)

Provides a simplified interface to a library, framework or any other complex set of classes.

Use it when:

- You need to have a limited but straightforward interface to a complex subsystem.
- You want to structure a subsystem into layers.

### Flyweight

![ref](https://refactoring.guru/images/patterns/cards/flyweight-mini.png)

Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.

Use it when:

- Your program must support a huge number of objects which barely fit into available RAM.

### Proxy

![ref](https://refactoring.guru/images/patterns/cards/proxy-mini.png)

Lets you provide a substitute/placeholder for an object.

A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.

Use it when:

- Lazy initialization, _Virtual Proxy_: Have a heavyweight service object that wastes system resources.
- Acces control, _Protection Proxy_: Want only specific clients to be able to use the service object.
- Local execution, _Remote Proxy_: The service object is located on a remote server.
- Logging requests, _Logging Proxy_: Want to keep a history of requiests to the service object.
- Caching requests results, _Cahing Proxy_: Need to cache results of client requests and manage the life cycle of this cache.
- Smart reference: You need to be able to dismiss a heavyweight object one there are no clients that use it.

## Behavioral 📡

Class's objects _communication_

Patterns:

- [Chain of responsability](#Chain-of-responsability)
- [Command](#Command)
- [Iterator](#Iterator)
- [Mediator](#Mediator)
- [Memento](#Memento)
- [Observer](#Observer)
- [State](#State)
- [Strategy](#Strategy)
- [Template Method](#Template-Method)
- [Visitor](#Visitor)

<!-- - Interpreter -->
<!-- - Null Object -->

### Chain of responsability

![ref](https://refactoring.guru/images/patterns/cards/chain-of-responsibility-mini.png)

Lets you pass requests along a chain of handlers.

Use it when:

- Your program is expected to process different kinds of requests in various ways.
- It’s essential to execute several handlers in a particular order.
- The set of handlers and their order are supposed to change at runtime.

### Command

![ref](https://refactoring.guru/images/patterns/cards/command-mini.png)

It turns a request into a stand-alone object that contains all information about the request. This transformation lets you parameterize methods with different requests, delay or queue a request’s execution, and support undoable operations.

Use it when:

- You want to parameterize objects with operations.
- You want to queue operations, schedule their execution, or execute them remotely.
- You want to implement reversible operations.

### Iterator

![ref](https://refactoring.guru/images/patterns/cards/iterator-mini.png)

Lets you traverse elements of a collection without exposing its underlying representation.

Use it when:

- Your collection has a complex data structure under the hood, but you want to hide its complexity from clients.
- Reduce duplication of the traversal code across your app.
- You want your code to be able to traverse different data structures or when types of these structures are unknown beforehand.

### Mediator

![ref](https://refactoring.guru/images/patterns/cards/mediator-mini.png)

Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.

Use it when:

- It’s hard to change some of the classes because they are tightly coupled to a bunch of other classes.
- Can't reuse a component in a different program because it's too dependent on other components.
- Find yourself creating tons of component subclasses just to reuse some basic behavior in various contexts.

### Memento

![ref](https://refactoring.guru/images/patterns/cards/memento-mini.png)

Lets you save and restore the previous state of an object without revealing the details of its implementation.

Use it when:

- You want to produce snapshots of the object’s state.
- Direct access to the object’s fields/getters/setters violates its encapsulation.

### Observer

![ref](https://refactoring.guru/images/patterns/cards/observer-mini.png)

Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they’re observing.

Use it when:

- Changes to the state of one object may require changing other objects.
- Some objects in your app must observe others, but only for a limited time or in specific cases.

### State

![ref](https://refactoring.guru/images/patterns/cards/state-mini.png)

Lets an object alter its behavior when its internal state changes.

Use it when:

- You have an object that behaves differently depending on its current state.
- You have a class polluted with massive conditionals that alter how the class behaves.
- You have a lot of duplicate code across similar states and transitions of a condition-based state.

### Strategy

![ref](https://refactoring.guru/images/patterns/cards/strategy-mini.png)

Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

Use it when:

- You want to use different variants of an algorithm within an object.
- You have a lot of similar classes that only differ in the way they execute some behavior.
- You want to isolate the business logic of a class from the implementation details of algorithms that may not be as important in the context of that logic.
- Your class has a massive conditional operator that switches between different variants of the same algorithm.

### Template Method

![ref](https://refactoring.guru/images/patterns/cards/template-method-mini.png)

Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

Use it when:

- You want to let clients extend only particular steps of an algorithm.
- You have several classes that contain almost identical algorithms.

### Visitor

![ref](https://refactoring.guru/images/patterns/cards/visitor-mini.png)

Lets you separate algorithms from the objects on which they operate.

Use it when:

- You need to perform an operation on all elements of a complex object structure.
- You want to clean up the business logic of auxiliary behaviors.
- A behavior makes sense only in some classes of a class hierarchy.

---

Source: [refactoring.guru](https://refactoring.guru/design-patterns).
