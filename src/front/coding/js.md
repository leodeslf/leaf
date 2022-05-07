# JavaScript

JavaScript is a **programming language**. It can also be called high level, single threaded, garbage collected, interpreted, JIT compiled, prototype based, multi-paradigm, dynamic programming language. But "programming language" is enough.

## The Standard

Initially designed by Brendan Eich, the **ECMA International**'s (European Computer Manufacturers Association) group **TC39** (Technical Committee number 39) is responsible for maintaining the **ECMA-262** (or ECMAScript Language Specification) which defines the **ECMAScript Language** (*ES* or *JavaScript*). It was first named Mocha, then LiveScript, and released in 1997 as JavaScript.

After its sixth version (*ES6*, also called *ES2015*), it's been released at least one "small" update per year instead of having a huge one after several years of waiting.

Other relevant standards:

- ECMA-402: *ES internationalization API specification*.
- ECMA-404: *JSON data interchange syntax*.
- ECMA-414: *ES specification suit* (ES and its required/optional built-in libraries).
- ECMA-419: *ES embedded systems API specification*.

More at:

- [TC39 (tc39.es)](https://tc39.es/).
- [Draft ECMA-262 (tc39.es)](https://tc39.es/ecma262/).
- [ECMA-262 (ecma-international.org)](https://www.ecma-international.org/publications-and-standards/standards/ecma-262/).

## Syntax

### Good Practices

Not mandatory but recommended:

- Type at most *80 characters* per line.
- Indent with *two spaces* (or four).
- End expressions with *semicolons*.
- Use *braces* to wrap code blocks.

### Keywords

*Reserved words* with special functionality, we cannot define variables with these names, some of them are: `await`, `break`, `case`, `class`, `const`, `continue`, `do`, `else`, `export`, `for`, `function`, `if`, `import`, `let`, `new`, `return`, `super`, `switch`, `this`, `var`, `while`.

### Comments

```javascript
// Comment.
```

```javascript
/* Comment. */

/* 
Comment.
Comment.
Comment.
*/
```

```javascript
/**
 * Comment.
 * Comment.
 * Comment.
 */
```

### Variables

```javascript
// E.g:
const a = 0; // Block-scoped, immutable.
let b = 1;   // Block-scoped, mutable.
var c = 2;   // Global/Function-scoped, mutable, redeclarable.
```

### Data Types

In Javascript, *variables don't have type* but their *values do*.

#### Primitives & Objects

**Primitive** types:

- `undefined`.
- `null`.
- `boolean`.
- `number`.
- `bigint`.
- `string`.
- `symbol`.

**Object** type:

- `object`, subtypes:
  - `array`.
  - `map`.
  - `set`.
  - `function`.
  - `regexp`.
  - `date`.

Primitives vs Objects:

||Primitives|Objects
---|---|---
**Definition**|They are *atomic blocks* of data.|They are *compound pieces* of data.
**Assignment**|Their *contents are copied*<!--  when assigned to variables -->.|Their *identity* (think pointers/reference) is passed<!--  when assigned to a variable -->.
**Comparison**|They are *compared by value*<!--  when comparing variables -->.|They are *compared by identity*<!--  when comparing objects -->.

#### Nullish

```javascript
undefined // Value not defined.
null // No value.
```

#### Boolans

```javascript
true
false
```

#### Numbers

```javascript
1000 // They handle values up/down to +/-9007199254740991.
1_000_000 // We can use underscores (_) as separators to improve legibility.
1e3 // == 1 * (10 ** 3) == 1000 (Scientific notation).
1n // For larger values than `number`, memory is the limit (Bigint notation).
NaN // Not a Number.
Infinite // And `-Infinite`.
```

#### Strings

```javascript
'abc123'
"abc123"
`abc12${1 + 2}` // Template Literal, it evaluates expressions (e.g.: 'abc123').
```

#### Symbols

```javascript
// It generates a unique (different) symbol value.
Symbol('abc') == Symbol('abc') // == false ('abc' is just a description).
```

#### Arrays (Literal Notation)

```javascript
// An indexed list of items.
[
  undefined,
  true,
  1,
  'abc',
  Symbol('abc'),
  [/* ... */],
  {/* ... */}
]
```

#### Objects (Literal Notation)

```javascript
// A key-value collection of items.
{
  nullish: undefined,
  boolean: true,
  number: 1,
  string: 'abc',
  symbol: Symbol('abc'),
  array: [/* ... */],
  object: {/* ... */}
}
```

##### Reading Properties

We can access props through either the *period-name* notation or the *array-like* notation.

```javascript
// E.g.:
const object = {
  prop: 'abc'
};

object.prop == object['prop'] // == (abc == abc) == true
```

### Operators

Level of *precedence* for common operators:

1. `&&`, `||`, `??` (parentheses are needed if mixing `??` with `&&` or `||`).
1. `<`, `>`, `<=`, `>=` `==`, `===`.
1. `**`.
1. `/`, `*`, `%`.
1. `+`, `-`.

#### Logical

```javascript
// Note that any number but 0 evaluates truthy.
1 && 2 // == 2
0 && 1 // == 0 (`1` is not evaluated).
1 || 2 // == 1 (`2` is not evaluated).
0 || 1 // == 1
```

#### Nullish Coalescing

```javascript
a ?? b // == `b` iff (`a` == (`null` || `undefined`)).
```

#### Comparison

```javascript
// Quantitative:
1 < 2  // == true
2 > 1  // == false
1 <= 1 // == true
1 >= 1 // == false
```

```javascript
// Qualitative:
1 == '1'  // == true (Equal, can do "type coercion" to match different types).
1 != '1'  // == false
1 === '1' // == false (Strictly Equal, no "type coercion" here).
1 !== '1' // == true
```

#### Maths

```javascript
1 ** 2 // == 1 (Power operator).
1 / 2  // == 0.5
1 * 2  // == 2
1 % 2  // == 1 (Remainder operator).
1 + 2  // == 3
1 - 2  // == -1
```

#### Ternary

```javascript
a ? b : c // If `a` is truthy: `b`. Else: `c`.
```

#### String Concatenation

```javascript
'abc' + 'def' // == abcdef
```

#### Unary Operators

```javascript
typeof x // Returns the operand's type name as a string.
x++ // Evaluates `x`, then adds 1 to it.
++x // Adds 1 to `x`, then evaluates the updated `x`.
x--
--x
+"+1.00" // Converts a string into its numeric value (if possible, e.g.: 1).
```

```javascript
// Example of `x++` & `++x`:
let a = 1, b = 1;

a + b++;     // == 2 == 1 + 1 (`b` doesn't change until after its evaluation).
++a + b;     // == 4 == 2 + 2 (Adds 1 to `a` before evaluating it).
a++ + b + a; // == 7 == 2 + 2 + 3 (The 2nd evaluation of `a` counts the 1st +1).
a+++--b;     // == 4 == 3 + 1 (Typing it all together is "legal").
a+++++b      // Error, +3 consecutive, equal operators (use parentheses).
```

#### Compound Assignment Operators

We can *assign and operate* with the same (compound) operator, so instead of doing:

```text
variable = variable (operator) value
```

We can do:

```text
variable (operator)= value
```

Some of the available operators:

```javascript
a += value
a -= value
a *= value
a /= value
a %= value
a **= value
a ||= value
a &&= value
a ??= value
```

```javascript
// E.g.:
let a = 0;

a += 1; // == (a = a + 1) == 1
```

#### The `instanceof` Operator

An operator that *verifies* whether an object is an instance of a given constructor or not.

```javascript
// E.g.:
class Car { /* ... */ }

const array = [];
const car = new Car();

console.log(array instanceof Object); // --> true
console.log(array instanceof Car); // --> false
console.log(car instanceof Car); // --> true
```

### Control Flow

#### If

```javascript
// Executes iff `condition` evaluates truthy.
if (condition) {
  // ...
}

// Chain an alternative to `condition` with an `else` statement.
if (condition) {
  // ...
} else {
  // I.e. executes iff `condition` evaluates falsy.
}

// Or chain more several conditions on the same statement with `else if`.
if (condition0) {
  // ...
} else if (condition1) {
  // ...
} else if (conditionN) {
  // ...
}
```

#### Switch

```javascript
switch (input) {
  case (condition0):
    // Runs if `condition0` is truthy (continues evaluation).
  case (condition1):
    // Runs if `condition1` is truthy.
    break; // Stops evaluation (works also in `for` and `while` statements).
  case (conditionN):
    // ...
  default:
    // Runs by default (in case no `break` stopped evaluation before).
}
```

#### Try Catch Finally

If we know something can *break the code*: we can just `try` it; if something goes wrong we `catch` it, and no matter what happens; we can `finally` run some extra code at the end.

```javascript
// E.g.:
try {
  // ...
} catch (error) {
  // Runs only if `try` produces an error.
} finally {
  // ...
}
```

### Loops

#### For

```javascript
// Shape:
for (/* Initialization */;/* Condition */;/* Step */) {
  // ...
}
```

Shape description:

- *Initialization*: runs only once before starting to loop.
- *Condition*: runs before every iteration; if it's truthy it continues.
- *Step*: runs after every iteration, before the next Condition evaluation.

```javascript
// E.g.:
for (let i = 0; i < 3; i++) {
  console.log(i);
}
// --> 0
// --> 1
// --> 2
```

```javascript
/**
 * We can still run a `for` loop without an initialization, condition, or step
 * (or even with none of them). A loop equivalent to the first one would be:
 */
let i = 0;

for (;;) {
  console.log(i++);
  if (i >= 3) break;
}
// --> 0
// --> 1
// --> 2
```

#### For-of

```javascript
/**
 * Loops through each item of a given iterable. A brand new `item` is declared
 * on each iteration, that's why it can be a `const` (same for "For-in").
 */
for (const item of iterable) {
  // ...
}
```

```javascript
// E.g.:
const colors = [
  'red',
  'blue',
  'green'
];

for (const color of colors) {
  console.log(color);
}
// --> red
// --> blue
// --> green
```

#### For-in

```javascript
// Loops through each property in a given object.
for (const property in object) {
  // ...
}
```

```javascript
// E.g.:
const shape = {
  name: 'triangle',
  sides: 3,
  vertex: 3
};

for (const prop in shape) {
  console.log(`${prop}: ${shape[prop]}`);
}
// --> name: triangle
// --> sides: 3
// --> vertex: 3

// Note that `prop` is actually the name of the property, not its value.
```

#### While

```javascript
// Loop starts if `condition` evaluates truthy, continues until it gets falsy.
while (condition) {
  // ...
}
```

#### Do While

```javascript
// Loop starts, then continues if/until `condition` evaluates falsy.
do {
  // ...
} while (condition)
```

### Functions

#### Function

```javascript
function square(x) {
  return x * x;
}
```

```javascript
// Function expression:
const square = function (x) {
  return x * x;
}
```

#### Arrow Function (Expression)

```javascript
// E.g.:
const square = (x) => {
  return x * x;
};
```

```javascript
// Simplified notation:
const square = x => x * x;
```

Simplification explained:

1. If there's only a `return` expression: it can be skipped (it's implied).
2. If there's only one statement: braces can be skipped.
3. If there's only one parameter: parentheses can be skipped.

#### IIFE (Immediately Invoked Function Expression)

A function that's executed as soon as it's reached. It's made up of two *pairs of parentheses*:

- The first one to handle the actual *function* expression to be run.
- The second one to handle the *arguments* for that function.

```javascript
// E.g.:
(function () {
  console.log('This is an IIFE!');
})();
// --> This is an IIFE!
```

#### Closure

It's just an ordinary function that *holds declarations connected to its original scope*.

```javascript
// E.g.:
function multiplier(a) {
  return function (b) {
    return a * b;
  }
}

const half = multiplier(.5);
console.log(half(2)) // --> 1
```

#### Generator Function (`*`) & `yield` Statement

A function identified by an asterisk after the keyword `function` that doesn't execute when called, but instead returns an *iterable object* (each item from it will be served by a `yield` statement). Then we can use an iterator or manually iterate through its items with the `next()` method, which holds a `value` and checks whether it's `done` or not.

```javascript
// E.g.:
function* charactersFrom(string) {
  const characters = string.split(''); // From a string to an array.
  for (let i = 0; i < characters.length; i++) {
    yield `${string}[${i}] == ${characters[i]}`;
  }
}

// We can iterate manually:
const ABC = charactersFrom('ABC');
console.log(ABC.next().value); // --> ABC[0] == A
console.log(ABC.next().value); // --> ABC[1] == B
console.log(ABC.next().value); // --> ABC[2] == C
console.log(ABC.next().done);  // --> true

// Or with an iterator:
const DEF = charactersFrom('DEF');
for (const item of DEF) {
  console.log(item);
}
// --> DEF[0] == D
// --> DEF[1] == E
// --> DEF[2] == F
```

### Classes

Classes are meant to *build objects* through a more sophisticated process, letting us produce more elaborated structures and functionality.

#### A `class` Declaration

Even though it's not mandatory, we often *use capitalized names*.

```javascript
class Animal {
  // ...
}
```

```javascript
// Class expression:
const Animal = class Animal {
  // ...
}
```

#### The `new` Keyword

It's used to *instantiate* (create) objects from classes.

```javascript
// E.g.:
class Animal {
  // ...
}

const animal = new Animal();
console.log(animal);
// --> Animal {}
```

#### Fields: Properties & Methods

Object fields are:

- *Property*: An identifier, like an "internal variable".
- *Method*: Another way to say "function", but for objects.

Use the `this` keyword to refer to the corresponding object inside the class.

```javascript
// E.g.:
class Fox {
  said = 'ring-ding-ding';
  talk() {
    return `The fox says ${this.said}!`;
  }
}

let fox = new Fox();
console.log(fox.talk());
// --> The fox says ring-ding-ding!
```

#### The `constructor` Method

It's used to *parameterize* object creation.

```javascript
// E.g.:
class Dog {
  constructor (name, noise) {
    this.name = name;
    this.noise = noise;
  }
}

const dog = new Dog('Scooby', 'woof');
console.log(dog);
// --> Dog { name: 'Scooby', noise: 'woof' }
```

#### Subclasses: `extends` & `super` Keywords

Description:

- `extends`: It *inherits* properties and methods from the extended class.
- `super`: It *instantiates* the object from its superclass (the extended class).

```javascript
// E.g.:
class Vehicle {
  constructor(type, capacity) {
    this.type = type;
    this.capacity = capacity;
  }
}

class Car extends Vehicle {
  constructor(brand) {
    // Note that specific properties can only be defined after the `super` call.
    super('land', 4);
    this.brand = brand;
    this.wheels = 4;
  }
}

class Tesla extends Car {
  constructor() {
    super('Tesla');
  }
  plug() {
    console.log('Charging battery...');
  }
}
```

#### Public & Private (`#`) Fields

Fields are *public by default*, but we can make them private by adding a *hash* as a prefix.

```javascript
// E.g.:
class Coke {
  #formula = '🧪 + 🍬 + 🍋';  
}

const coke = new Coke();
console.log(coke.#formula); // Error (it's not accessible from outside).
```

```javascript
// Legal use of private fields (from inside the class):
class FlavoredCoke {
  #formula = '🧪 + 🍬 + 🍋';
  constructor(flavor) {
    this.#formula = `${this.#formula} + ${flavor}`;
  }
  tellSecretFormula() {
    console.log(this.#formula);
  }
}

const cherryCoke = new FlavoredCoke('🍒');
cherryCoke.tellSecretFormula();
// --> 🧪 + 🍬 + 🍋 + 🍒
```

#### Instance & `static` Fields

Fields are "instance" by default, that means they can be used *from an instantiated object*. The `static` keyword defines fields that can only be called *from the class* itself.

```javascript
// E.g.:
class Vector2D {
  constructor(x, y) {
    this.x = x;
    this.y = y;
  }
  static add(vectorA, vectorB) { // To be used as `Vector2D.add(vA, vB)`.
    return new Vector2D(
      vectorA.x + vectorB.x,
      vectorA.y + vectorB.y
    );
  }
  add(vector) { // To be used as `object.add(v)`.
    this.x += vector.x;
    this.y += vector.y;
  }
}

const vector0 = new Vector2D(3, 3);
const vector1 = new Vector2D(3, 3);
const vector2 = Vector2D.add(vector0, vector1);
console.log(vector2);
// --> Vector2D { x: 6, y: 6 }

vector1.add(vector2);
console.log(vector1);
// --> Vector2D { x: 9, y: 9 }
```

#### The `get` & `set` Methods

Methods that behave *like properties*, we don't call them but define, read their values.

```javascript
// E.g.:
class Square {
  constructor(side) {
    this.side = side;    
  }
  get area() {
    return this.side ** 2;
  }
  set area(area) {
    this.side = Math.sqrt(area);
  }
}

const square = new Square(10);
console.log(square.area); // `get`
// --> 100

square.area = 25; // `set`
console.log(square.side);
// --> 5
```

### Asynchronous Programming

By default (most of) the *code runs synchronously*, which means it runs one step at a time, even if a step takes too long to finish (delaying next steps). Asynchronous programming solves that by letting code *run in parallel* (kind of).

#### Using a `Promise`

It's an *analogy to the real world* where we establish a promise which will either `resolve` or `reject`. In it we pass a "successful" result through `resolve` (which fires the first `then` method), or a "failing" result through `reject` (which fires the `catch` method).

```javascript
// E.g.:
const promise = new Promise((resolve, reject) => {
  resolve('Asynchronous log.');
});

promise
  .then(result => console.log(result))
  .catch(error => console.log(error));
console.log('Synchronous log.');
// --> Synchronous log.
// --> Asynchronous log.

// Note that any promise lets synchronous code run first to then run itself.
```

##### Either `resolve` or `reject`

From inside the `Promise` we should use any *conditional statement or mechanism* to execute either `resolve` or `reject` but not both at the same time, the first call will trigger its own path, either `then` or `catch` (but we can still use `final` at the end).

```javascript
// E.g.:
const promise = new Promise((resolve, reject) => {
  reject('Reject.'); // This runs (catch).
  resolve('Resolve.'); // This will be ignored.
});

promise
  .then(result => console.log(result))
  .catch(error => console.log(error));
// Reject.
```

```javascript
// However, if something "fails" at `then`, `catch` will execute, e.g.:
const promise = new Promise((resolve) => {
  resolve('Success.');
});

promise
  .then(result => {
    console.log(result);
    throw 'Error thrown from `then`.';
  })
  .catch(error => console.log(error));
// --> Success.
// --> Error thrown from `then`.
```

##### Static Methods of `Promise`

A `Promise` is not only used to generate a promise but to handle *utility methods* too.

```javascript
// E.g.:
const promise0 = new Promise((resolve, reject) => reject('Error (0).'));
const promise1 = new Promise((resolve, reject) => resolve('Success (1).'));
const promise2 = new Promise((resolve, reject) => resolve('Success (2).'));
```

```javascript
// Method `all`: runs until either all promises resolve (array) or one rejects.
Promise.all([promise0, promise1, promise2])
  .then(results => console.log(results))
  .catch(error => console.log(error));
// --> Error (0).
```

```javascript
/**
 * Method `any`: runs until getting a `resolve` or throws an error (different
 * from catch) if none of them resolves ("All the promises were rejected").
 */
Promise.any([promise0, promise1, promise2])
  .then(result => console.log(result))
  .catch(error => console.log(error));
// --> Success (1).
```

```javascript
// Method `race`: runs until getting either a `resolve` or a `reject`.
Promise.race([promise0, promise1, promise2])
  .then(result => console.log(result))
  .catch(error => console.log(error));
// --> Error (0).
```

#### Asynchronous Functions: `async` & `await`

These functions are simpler than `Promises`. They *return a `Promise`* which resolves with the returned value. We can use `await` expressions *inside these functions* (or at global scope in modules) to suspend the execution until we get the resolved (returned) value, making it possible to work with a much easier, synchronous-like notation.

```javascript
// E.g. (module):
async function foo() {
  return 'bar'; // Suppose it returns with a long-running task.
}

console.log(await foo()); // --> bar
```

We can use `then`, `catch`, and `finally` on them like any other `Promise`.

```javascript
// E.g.:
async function foo() {
  return 'bar'; // Suppose it returns with a long-running task.
}

foo()
  .then(resolve => console.log(resolve))
  .catch(error => console.log(error));
// --> bar
```

<!-- ### Regular Expressions (`RegExp`)

```javascript
// E.g.:
/expressionToMatch/
```

### Timing & Animations (setTimeout, setInterval, requestAnimationFrame)

### Workers -->

### Modules

A module allows us to *isolate code between files*. To share items (variables, functions, and classes) we need to use the `export` and `import` statements. We can share things "named" as they are, or locally override their name `as` we want. It's also possible to export an item by `default`, without needing to use a specific name (only one per file).

#### Named `export` & `import`

Exporting:

```javascript
const pi = 3.14;
const phi = 1.6;

// Multiple items at once, e.g.:
export { pi, phi };
```

```javascript
// One item at a time, e.g.:
export const pi = 3.14;
export const phi = 1.6;
```

Importing:

```javascript
// E.g.:
import { pi, phi } from 'util.js';

console.log(pi); // --> 3.14
console.log(phi); // --> 1.6
```

#### Sharing by `default`

Exporting:

```javascript
// E.g.:
const pi = 3.14; // Variables cannot be default exported directly.
export default pi;
```

```javascript
export default function () { /* ... */ }
```

```javascript
// As we import items with any name, the exported local name is not used.
export default function unusedName() { /* ... */ }
```

Importing:

```javascript
// No braces needed for `default` exported items. Also the name can vary.
import util from 'util.js';
```

#### Sharing with Aliases (`as`)

Exporting:

```javascript
// one.js
const one = 1;
export { one as ONE };
```

Importing:

```javascript
import { ONE as NUMBER_ONE } from 'one.js';
console.log(NUMBER_ONE); // --> 1
```

<!-- ### DOM (Document Object Model) (`window`, `document`, `selectors`, `events`)

### CSSOM (Cascade Style Sheet Object Model) ???

### The `this` Keyword -->

## Glossary

### Statement vs Expression

#### Statement

It's a piece of code that *performs an action*.

```javascript
// E.g.: a function statement.
function square(x) {
  return x ** 2;
}

// Or an if statement.
if (x > 0) {
  console.log('X is greater than zero.');
}
```

#### Expression

It's a piece of code that *produces a value*.

```javascript
// E.g.: the value assigned to a variable (`false`).
let a = false;

// Or the value returned by a `function` (`x * .5`).
function half(x) {
  return x * .5;
}

// Or an IIFE (Immediately Invoked Function Expression).
(function (x) {
  console.log(x);
})(1);
// --> 1

// Or a logic expression (`2 > 1`).
console.log(2 > 1);
// --> true
```

### Declaration vs Definition

#### Declaration

It's the *creation of an identifier*.

```javascript
// E.g.: declaring a `function`.
function saySomething() {
  console.log('Something.');
}

// Or declaring variables.
const a = true;
let b = 1;
var c = 'abc';
```

```javascript
/**
 * Both `const` and `let` redeclarations are not allowed, e.g.:
 * 
 * let b;
 * --> Identifier 'b' has already been declared (Error).
 *
 * However, `var` redeclarations are legal, e.g.:
 */
var c = 'abc';
var c; // No errors here.

/**
 * Note that redeclaring without redefining doesn't assign `undefined` to the
 * variable, which can happen at the first time (see "Definition" below).
 */
console.log(c);
// --> abc
```

##### Shadowing Variables

As said before, we cannot declare the same name for `const` and `let` at the same level of scope because it would be an illegal attempt of redeclaration. However, what we can do is to declare the same name but in a *nested scope*.

```javascript
// E.g.:
const x = 1;

{
  const x = 2;
  console.log(x); // --> 2
}

console.log(x); // --> 1
```

#### Definition

It's the *binding of value* to an identifier.

```javascript
// E.g.: we can declare a variable without necessarily defining it.
let x; // It implicitly initializes as `undefined` i.e.: `let x = undefined;`.

console.log(x);
// --> undefined
```

```javascript
// For obvious reasons, `const` needs to be defined at its declaration, e.g.:
const y = 0;
```

```javascript
// Definitions with `var` are the only ones that work before declaration, e.g.:
y = 2;
var y; // It's like `var y;` were first (see "Hoisting").
```

### Parameter vs Argument

#### Parameter

It's an *identifier passed into a function* declaration.

```javascript
// E.g.: set `a` and `b` as parameters of `sum`.
function sum(a, b) {
  return a + b;
}
```

#### Argument

It's an *expression passed through a function call* (i.e. the parameter's value).

```javascript
// E.g.: pass `2` and `-2` as arguments for `sum`.
sum(2, -2);
// --> 0
```

### Visibility

#### Hoisting

It's a behavior from the interpreter engine of *sending declarations to the top* of their scope. Only `var` and `function` declarations are hoisted.

```javascript
// E.g:
sayHi();
// --> Hi!

function sayHi() {
  console.log('Hi!');
}

// Function definitions (assigned to a variable) are not hoisted.
const sayBye = function () {
  console.log('Bye!');
}

sayBye(); // It needs to be called after its definition to avoid an error.
// --> Bye!
```

```javascript
// Note hoisting moves only declarations, not definitions, e.g.:
console.log(x);
// --> undefined

var x = 3; // I.e. the `var x` is hoisted, not the `= 3`.
console.log(x);
// --> 3
```

```javascript
// However, there should be a `var` declaration, if not, code breaks, e.g.:
console.log(y);
// --> `y` is not defined (Error).

y = 6; // This is not a declaration, thus it's not hoisted.
```

```javascript
// Note that definition also triggers declaration if not already declared, e.g.:
z = 9;
console.log(z);
// --> 9
```

#### Scope

The range of *visibility* for a given block of code and its variables.

```javascript
// This is the "global" scope.
let a = 1;

{
  // This is a nested scope block.
  let b = 2;
  var c = 3;

  // Scopes share declarations with nested scopes, that's called Lexical Scope.
  console.log(a); // --> 1
}

console.log(c); // --> 3 (`var` limits its scope to global or function blocks).
console.log(b); // --> `b` is not defined (Error, we cannot see `b` from here).
```

#### Flow of control

It's the *order of execution*. JavaScript reads from top-to-bottom, like a natural language.

```javascript
// E.g.: because of hoisting, a function call can occur before its declaration.
foo();
function foo() { /* ... */ }

// But function definitions are under the top-to-bottom flow of control.
bar(); // `bar` is not defined (Error).
const bar = function () { /* ... */ }
```

----

Reference:

- Eloquent JavaScript.
- JavaScript for Impatients.
- [JavaScript (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/JavaScript).
