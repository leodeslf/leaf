# Behavioral 📡

**Communication** between objects.

Patterns:

* [Chain of responsibility](behavioral.md#Chain-of-responsibility)
* [Command](behavioral.md#Command)
* [Iterator](behavioral.md#Iterator)
* [Mediator](behavioral.md#Mediator)
* [Memento](behavioral.md#Memento)
* [Observer](behavioral.md#Observer)
* [State](behavioral.md#State)
* [Strategy](behavioral.md#Strategy)
* [Template Method](behavioral.md#Template-Method)
* [Visitor](behavioral.md#Visitor)

## Chain of responsibility

![Chain of responsibility](https://refactoring.guru/images/patterns/cards/chain-of-responsibility-mini.png)

Lets you pass requests along a chain of handlers.

Use it when:

* Your program is expected to process different kinds of requests in various ways.
* It’s essential to execute several handlers in a particular order.
* The set of handlers and their order are supposed to change at runtime.

## Command

![Command](https://refactoring.guru/images/patterns/cards/command-mini.png)

It turns a request into a stand-alone object that contains all information about the request. This transformation lets you parameterize methods with different requests, delay or queue a request’s execution, and support undoable operations.

Use it when:

* You want to parameterize objects with operations.
* You want to queue operations, schedule their execution, or execute them remotely.
* You want to implement reversible operations.

## Iterator

![Iterator](https://refactoring.guru/images/patterns/cards/iterator-mini.png)

Lets you traverse elements of a collection without exposing its underlying representation.

Use it when:

* Your collection has a complex data structure under the hood, but you want to hide its complexity from clients.
* Reduce duplication of the traversal code across your app.
* You want your code to be able to traverse different data structures or when types of these structures are unknown beforehand.

## Mediator

![Mediator](https://refactoring.guru/images/patterns/cards/mediator-mini.png)

Lets you reduce chaotic dependencies between objects. The pattern restricts direct communications between the objects and forces them to collaborate only via a mediator object.

Use it when:

* It’s hard to change some of the classes because they are tightly coupled to a bunch of other classes.
* Can't reuse a component in a different program because it's too dependent on other components.
* Find yourself creating tons of component subclasses just to reuse some basic behavior in various contexts.

## Memento

![Memento](https://refactoring.guru/images/patterns/cards/memento-mini.png)

Lets you save and restore the previous state of an object without revealing the details of its implementation.

Use it when:

* You want to produce snapshots of the object’s state.
* Direct access to the object’s fields/getters/setters violates its encapsulation.

## Observer

![Observer](https://refactoring.guru/images/patterns/cards/observer-mini.png)

Lets you define a subscription mechanism to notify multiple objects about any events that happen to the object they’re observing.

Use it when:

* Changes to the state of one object may require changing other objects.
* Some objects in your app must observe others, but only for a limited time or in specific cases.

## State

![State](https://refactoring.guru/images/patterns/cards/state-mini.png)

Lets an object alter its behavior when its internal state changes.

Use it when:

* You have an object that behaves differently depending on its current state.
* You have a class polluted with massive conditionals that alter how the class behaves.
* You have a lot of duplicate code across similar states and transitions of a condition-based state.

## Strategy

![Strategy](https://refactoring.guru/images/patterns/cards/strategy-mini.png)

Lets you define a family of algorithms, put each of them into a separate class, and make their objects interchangeable.

Use it when:

* You want to use different variants of an algorithm within an object.
* You have a lot of similar classes that only differ in the way they execute some behavior.
* You want to isolate the business logic of a class from the implementation details of algorithms that may not be as important in the context of that logic.
* Your class has a massive conditional operator that switches between different variants of the same algorithm.

## Template Method

![Template Method](https://refactoring.guru/images/patterns/cards/template-method-mini.png)

Defines the skeleton of an algorithm in the superclass but lets subclasses override specific steps of the algorithm without changing its structure.

Use it when:

* You want to let clients extend only particular steps of an algorithm.
* You have several classes that contain almost identical algorithms.

## Visitor

![Visitor](https://refactoring.guru/images/patterns/cards/visitor-mini.png)

Lets you separate algorithms from the objects on which they operate.

Use it when:

* You need to perform an operation on all elements of a complex object structure.
* You want to clean up the business logic of auxiliary behaviors.
* A behavior makes sense only in some classes of a class hierarchy.

