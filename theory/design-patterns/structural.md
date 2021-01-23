# Structural 🏗

**Composition** of objects.

Patterns:

* [Adapter](structural.md#Adapter)
* [Bridge](structural.md#Bridge)
* [Composite](structural.md#Composite)
* [Decorator](structural.md#Decorator)
* [Facade](structural.md#Facade)
* [Flyweight](structural.md#Flyweight)
* [Proxy](structural.md#Proxy)

<!-- - Private Class Data -->

## Adapter

![Adapter](https://refactoring.guru/images/patterns/cards/adapter-mini.png)

Allows objects with incompatible interfaces to collaborate.

Use it when:

* You need to reuse or communicate several existing subclasses that lack some common functionality.

## Bridge

![Bridge](https://refactoring.guru/images/patterns/cards/bridge-mini.png)

Lets you split one or more closely related classes into two separate hierarchies \(abstraction and implementation\) which can be developed independently of each other.

Use it when:

* You want to divide a monolithic class.
* You need to extend a class in several orthogonal dimensions.
* You need to switch implementations at runtime.

## Composite

![Composite](https://refactoring.guru/images/patterns/cards/composite-mini.png)

Lets you compose objects into tree structures and then work with these structures as if they were individual objects.

Use it when:

* You need to implement a tree-like object structure.
* You want the client to treat both simple and complex elements uniformly.

## Decorator

![Decorator](https://refactoring.guru/images/patterns/cards/decorator-mini.png)

Lets you attach new behaviors to objects by placing these objects inside special wrapper objects that contain the behaviors.

Use it when:

* You need to assign extra behaviors to objects without breaking the code that uses them.
* It’s awkward or not possible to extend an object’s behavior using inheritance.

## Facade

![Facade](https://refactoring.guru/images/patterns/cards/facade-mini.png)

Provides a simplified interface to a library, framework or any other complex set of classes.

Use it when:

* You need to have a limited but straightforward interface to a complex subsystem.
* You want to structure a subsystem into layers.

## Flyweight

![Flyweight](https://refactoring.guru/images/patterns/cards/flyweight-mini.png)

Lets you fit more objects into the available amount of RAM by sharing common parts of state between multiple objects instead of keeping all of the data in each object.

Use it when:

* Your program must support a huge number of objects which barely fit into available RAM.

## Proxy

![Proxy](https://refactoring.guru/images/patterns/cards/proxy-mini.png)

Lets you provide a substitute/placeholder for an object.

A proxy controls access to the original object, allowing you to perform something either before or after the request gets through to the original object.

Use it when:

* Lazy initialization, _Virtual Proxy_: Have a heavyweight service object that wastes system resources.
* Acces control, _Protection Proxy_: Want only specific clients to be able to use the service object.
* Local execution, _Remote Proxy_: The service object is located on a remote server.
* Logging requests, _Logging Proxy_: Want to keep a history of requiests to the service object.
* Caching requests results, _Cahing Proxy_: Need to cache results of client requests and manage the life cycle of this cache.
* Smart reference: You need to be able to dismiss a heavyweight object one there are no clients that use it.
