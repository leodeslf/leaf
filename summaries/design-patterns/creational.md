# Creational

**Instantiation** of objects.

<!-- - Object Pool -->

## Factory

![Factory](https://refactoring.guru/images/patterns/cards/factory-method-mini.png)

Provides an interface for creating objects in a superclass. Allows subclasses to alter the type of object that will be created.

Use it when:

* You don't know the requirements of the objects you'd work with.
* You need your library with a way to extend its internal components.
* You want to save system resources by reusing existing objects.

## Abstract Factory

![Abstract Factory](https://refactoring.guru/images/patterns/cards/abstract-factory-mini.png)

Produce families of related objects without specifying their concrete classes.

Use it when:

* You need to work with various families of related objects.

## Builder

![Builder](https://refactoring.guru/images/patterns/cards/builder-mini.png)

Allows you to produce different representations of an object using the same construction code.

Use it when:

* You want to get ride of a "telescopic constructor" \(with simpler one\).
* You need to create different types of the same object.

## Prototype

![Prototype](https://refactoring.guru/images/patterns/cards/prototype-mini.png)

Lets you copy existing objects without making your code dependent on their classes.

Use it when:

* Your code shouldn't depend on the concrete classes fo objects that you need to copy.
* You want to reduce the number of subclasses that only differ in the way they initialize their respective objects.

## Singleton

![Singleton](https://refactoring.guru/images/patterns/cards/singleton-mini.png)

Lets you ensure that a class has only one instance, while providing a global access point to this instance.

Use it when:

* You need stricter control over global variables.
