# JavaScript

JavaScript is a **programming language**, in case you are a complicated person you can also call it by its "full name": high-level-single-threaded-garbage-collected-interpreted-just-in-time-compiled-prototype-based-multi-paradigm-dynamic-programming-language.

It was introduced by Brendan Eich as Mocha, then renamed to LiveScript, and released in 1997 as JavaScript. The *European Computer Manufacturers Association*'s (ECMA International) *Technical Committee number 39* (TC39) maintains the *ECMAScript Language Specification* (ECMA-262) standard which defines the *ECMAScript Language* (ES or JavaScript).

After the launch of the sixth version so called *ES6* (or ES2015), which introduced major features, it's been released a "small update" every year, instead of a big one after several years.

Relevant standards:

- ECMA-402: *ES internationalization API specification*.
- ECMA-404: *JSON data interchange syntax*.
- ECMA-414: *ES specification suit* (ES and its required and optional built-in libraries).
- ECMA-419: *ES embedded systems API specification*.

More at:

- [TC39 (tc39.es)](https://tc39.es/).
- [Draft ECMA-262 (tc39.es)](https://tc39.es/ecma262/).
- [ECMA-262 (ecma-international.org)](https://www.ecma-international.org/publications-and-standards/standards/ecma-262/).

## Syntax

### Good Practices

>Beauty is more important in computing than anywhere else in technology because software is so complicated. Beauty is the ultimate defense against complexity. (David Gelernter, Machine Beauty: Elegance and the Heart of Technology)

Not mandatory but recommended:

- Type at most *80 characters* per line.
- Indent with *two spaces* (or four).
- End expressions with *semicolons*.
- Use *braces* to wrap code blocks.
- Leave an *empty line* at the end.

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
// E.g.:
const a = 0; // Block-scoped, not redefinable.
let b = 1;   // Block-scoped, redefinable.
var c = 2;   // Function/Global-scoped, redefinable, redeclarable.
```

### Data Types

In JavaScript, *variables don't have type* but their *values do*.

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
null      // No value.
```

#### Booleans

```javascript
true
false
```

#### Numbers

```javascript
1000  // They handle values up/down to +/-9007199254740991.
1_000 // We can use underscores (_) as separators to improve legibility.
1e3   // == 1 * (10 ** 3) == 1000 (Scientific notation).
1n    // For large values, memory is the limit (Bigint notation).
```

```javascript
// Special (not) numbers
NaN // "Not a Number".
Infinity
-Infinity
```

#### Strings

```javascript
'abc123'
"abc123"
`abc12${1 + 2}` // Template Literal, it evaluates expressions (e.g.: 'abc123').
```

#### Arrays (Literal Notation)

An *indexed list* of items.

```javascript
// E.g.:
[
  undefined,
  true,
  1,
  'abc',
  [/* ... */],
  {/* ... */}
]
```

#### Objects (Literal Notation)

A *key-value collection* of items.

```javascript
// E.g.:
{
  nullish: undefined,
  boolean: true,
  number: 1,
  string: 'abc',
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

##### Non-string Property Names (`Symbol`)

Symbols are meant to provide a way to generate a property name that's not a `string` (which was the only way until ES6).

```javascript
// E.g.:
const object = {};

const propName0 = 'prop name';
const propName1 = Symbol('symbol prop name');
const propName2 = Symbol('symbol prop name'); // Same description for both.

object[propName0] = 0;
object[propName1] = 1;
object[propName2] = 2;

console.log(object);
// {
//   prop name: 0,
//   Symbol(symbol prop name): 1,
//   Symbol(symbol prop name): 2
// }
```

As every `Symbol` generates a unique value, *a property name defined from it can only be accessed through it*.

```javascript
// E.g.:
object[Symbol('symbol prop name')]; // == undefined
object['symbol prop name'];         // == undefined
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
true && true  // == 2
false && true // == false (`true` is never evaluated).
true || true  // == true (second `true` is never evaluated).
false || true // == true
```

#### Nullish Coalescing

```javascript
a ?? b // == `b` iff `a` == (`null` || `undefined`).
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
1 == '1'      // == true (Equal, type is coerced if needed/posible).
1 === '1'     // == false (Strictly Equal, no "type coercion" here).
true != 0     // == true
true !== true // == false
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

#### Ternary Operator (Expression)

```javascript
a ? b : c // If `a` is truthy: `b`. Else: `c`.
```

#### String Concatenation

```javascript
'abc' + 'def' // == abcdef (better use the string `concat` method).
```

#### Unary Operators

```javascript
typeof x // Returns the operand's type name as a string.
x++      // Evaluates `x`, then adds 1 to it.
++x      // Adds 1 to `x`, then evaluates the updated `x`.
x--
--x
+"+1.00" // == 1 (Converts a string into its numeric value/equivalent).
!true    // == false (Negates a boolean expression).
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

We can *assign and operate* with the same (compound) operator, so instead of this shape:

```ftl
variable = variable (operator) value
```

We can use this short hand:

```ftl
variable (operator)= value
```

Some of the available operators:

```javascript
variable += value
variable -= value
variable *= value
variable /= value
variable %= value
variable **= value
variable ||= value
variable &&= value
variable ??= value
```

```javascript
// E.g.:
let variable = 0;

variable += 1; // == (variable = variable + 1) == 1
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

#### Statement `if`

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

#### Statement `switch`

```javascript
// E.g.:
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

#### Statement `try` / `catch` / `finally`

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

#### Loop `for`

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

#### Loop `for-of`

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

#### Loop `for-in`

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

#### Loop `while`

```javascript
// Loop starts if `condition` evaluates truthy, continues until it gets falsy.
while (condition) {
  // ...
}
```

#### Loop `do-while`

```javascript
// Loop starts, then continues if/until `condition` evaluates falsy.
do {
  // ...
} while (condition)
```

### Reusable Code Blocks, Functions

#### A `function` Statement

```javascript
// E.g.:
function square(x) {
  return x * x;
}
```

#### A `function` Expression

```javascript
// E.g.:
const square = function (x) {
  return x * x;
}
```

#### Arrow (`=>`) Function (Expression)

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

It's just an ordinary function that *holds declarations connected to its original scope* (another function wrapping it).

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

A function identified by an asterisk after the keyword `function` that doesn't execute when called, but instead returns an *iterable object* (each item from it will be served by a `yield` statement). Then we can use an iterator or manually iterate through its items with the `next` method, which holds a `value` and checks whether it's `done` or not.

```javascript
// E.g.:
function* charactersByIndex(string) {
  const characters = string.split('');

  for (let i = 0; i < characters.length; i++) {
    yield `Character at index ${i} is ${characters[i]}`;
  }
}
```

```javascript
// Iterating with `next`:
const ABC = charactersByIndex('ABC');

console.log(ABC.next().value); // --> Character at index 0 is A
console.log(ABC.next().value); // --> Character at index 1 is B
console.log(ABC.next().value); // --> Character at index 2 is C

console.log(ABC.next().value); // --> undefined
console.log(ABC.next().done);  // --> true
```

```javascript
// Iterating with an iterator (recommended):
const DEF = charactersByIndex('DEF');

for (const item of DEF) {
  console.log(item);
}
// --> Character at index 0 is D
// --> Character at index 1 is E
// --> Character at index 2 is F
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
  static add(v1, v2) { // To be used as `Vector2D.add(v1, v2)`.
    return new Vector2D(
      v1.x + v2.x,
      v1.y + v2.y
    );
  }
  add(v) { // To be used as `vector.add(v)`.
    this.x += v.x;
    this.y += v.y;
  }
}

const vector1 = new Vector2D(3, 3);
const vector2 = new Vector2D(3, 3);
const vector3 = Vector2D.add(vector1, vector2);
console.log(vector3);
// --> Vector2D { x: 6, y: 6 }

vector2.add(vector3);
console.log(vector2);
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

### Timers & Animations

#### Delay a Call (`setTimeout`)

Use `setTimeout` to *delay a function call* by a given amount of time (in milliseconds). It won't delay or pause any other code as it runs asynchronously. Use `clearTimeout` to abort it while waiting.

```javascript
// E.g.:
const timeout1 = setTimeout(() => console.log(1), 1800);
const timeout2 = setTimeout(() => console.log(2), 1200);
const timeout3 = setTimeout(() => console.log(3), 600);

clearTimeout(timeout2);
// --> 3 (after 600ms)
// --> 1 (after 1800ms)
```

#### Wait, Call, Repeat (`setInterval`)

Use `setInterval` to *indefinitely repeat a function call* after a given amount of times. Stop an interval with `clearInterval`. The first call occurs after the given time.

```javascript
// E.g.:
const interval = setInterval(() => console.log('Hi!'), 500);
setTimeout(() => clearInterval(interval), 2000);
// --> Hi! (after 0.5s)
// --> Hi! (after 1.0s)
// --> Hi! (after 1.5s)
// --> Hi! (after 2.0s, some environments could run the timeout first).
```

#### A Call per Frame (`requestAnimationFrame`)

Use `requestAnimationFrame` to *make a function call just before the next repaint*. Inside that call we can read and write the DOM many times without triggering synchronous reflows.

```javascript
requestAnimationFrame(() => { /* ... */ });
```

Call `requestAnimationFrame` again inside the same function to make an actual animation  (using recursion). Ideally it'll run every ~16ms, and extend the execution for less than that time when targeting 60 frames per seconds for animating the UI. Use `cancelAnimationFrame` to stop it.

```javascript
// E.g.:
let raf;

function animation() {
  // Perform some tasks...
  
  raf = requestAnimationFrame(animation);
}

// Initialize animation:
requestAnimationFrame(animation);

// Stoping the animation e.g.:
window.addEventListener('keypress', event => {
  event.key === 'Enter' && cancelAnimationFrame(raf);
});
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
  reject('Reject.');   // This runs (catch).
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

#### Asynchronous Functions (`async` & `await`)

A simpler approach than using a `Promise`. They actually return a `Promise` which resolves with the returned value. We can use `await` expressions *inside these functions* (or at global scope in modules) to suspend the execution until we get the resolved (returned) value, making it possible to work with a much easier, *synchronous-like notation*.

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

### Regular Expression Library (`RegExp`)

#### Creating a `RegExp`

Special **syntax characters** (can be *escaped* by a prefix backslash): `\`, `^`, `$`, `.`, `*`, `+`, `?`, `(`, `)`, `{`, `}`, `|`.

```javascript
// Literal notation, e.g.:
let re = /abc/g;
```

```javascript
// Constructor with a string, e.g.:
let re = new RegExp('abc', 'g');
```

```javascript
// Constructor with a literal, e.g.:
let re = new RegExp(/abc/, 'g');
```

#### Option Flags

Flag|Property|Description
---|---|---
`d`|`hasIndices`|Switch on math indices
`g`|`global`|Match multiple times
`i`|`ignoreCase`|Match case-insensitively
`m`|`multiline`|`^` and `$` match per line
`s`|`dotAll`|Dot matches line terminators
`u`|`unicode`|Unicode mode (recommended)
`y`|`sticky`|No characters between matches

#### Basic Building Blocks for `RegExp`

*Atoms* and some *Backslash codes*:

- `.`: any character except newline.
- `\n`: line feed.
- `\r`: carriage return.
- `\t`: character tabulation.
- `\v`: line tabulation.
- `\w`, `\W`: word, not word.
- `\d`, `\D`: digit, not digit.
- `\s`, `\S`: whitespace, not whitespace.
- `\u`: unicode value, e.g.: `\uFFFF`
- `\p`: unicode character property, e.g.: `\p{Cyrillic|Emoji}`.*

More at [Character Classes (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_expressions/Character_classes).

*More about character property values at (unicode.org) [Property Value Aliases](https://www.unicode.org/Public/UCD/latest/ucd/PropertyValueAliases.txt), [Unicode Regular Expressions](https://unicode.org/reports/tr18/#General_Category_Property), and [Unicode Identifier and Pattern Syntax](https://www.unicode.org/reports/tr31/#Figure_Code_Point_Categories_for_Identifier_Parsing).

#### Assertions

##### Anchors

Ways to define what's at the beginning or end:

- `^abc`: match if string *starts* on `abc`.
- `abc$`: match if string *ends* on `abc`.
- `\b`, `\B`: word *boundary*, not-word boundary.

##### Lookahead

Define what should be *after the match*:

- `xyz(?=abc)`: *positive lookahead*, match `xyz` if `abc` is after it.
- `xyz(?!abc)`: *negative lookahead*, match `xyz` if `abc` is not after it.

##### Lookbehind

Define what should be *before the match*:

- `(?<=abc)xyz`: *positive lookbehind*, match `xyz` if `abc` is before it.
- `(?<!abc)xyz`: *negative lookbehind*, match `xyz` if `abc` is not before it.

#### Disjunction (`|`)

A low precedence operator that makes the match to be *either what's at the left or what's at the right* side of it (groups/parentheses recommended), e.g.:

- `jpg|png|gif`: match either `jpg`, `png`, or `gif`.
- `^a|b$`: match any starting with `a` or `b`, and/or ending with `a` or `b`.

#### Character Classes (`[...]`)

A way to create a *set* characters, e.g.:

- `[abc]`: any of `a`, `b`, or `c`.
- `[^abc]`: any not `a`, `b`, nor `c`.

Or a *range* of characters (`[n-m]`, including boundaries), e.g.:

- `[a-c]` any between `a` to `c`.
- `[^a-c]` any not between `a` to `c`.

Characters that *need to be escaped* inside a class in order to make part of the set:

- `^`, only if it comes first, as it *negates* the following set.
- `\`, only if it comes last or before a backslash code character, as it *escapes* them.
- `-`, only if it's not first or last, as it could generate a *range*.
- `]`, as it *closes* the class.

#### Quantifying Expressions

By default these quantifiers are **greedy**, they match *as many characters as possible*. To make them **reluctant**, so they match *as few as possible*, put a question mark (`?`) after them:

- `?`: match *0 or 1* time.
- `*`: match *0 or more* times.
- `+`: match *1 or more* times.
- `{n}`: match *n* times.
- `{n,}`: match *n or more* times.
- `{n,m}`: match *at least n and at most m* times.

```javascript
// E.g.:
console.log(/(abc)+/.exec('abcabcabc')[0]);  // --> 'abcabcabc' (greedy).
console.log(/(abc)+?/.exec('abcabcabc')[0]); // --> 'abc' (reluctant).
```

#### Capturing Groups (`(...)`)

A way to *reuse subexpressions* (in the actual `RegExp` or a replacement expression):

- `(abc)`: a *capturing group* for matching `abc`.
- `(?<name>abc)`: a *named capturing group* for matching `abc`.
- `(?:abc)`: a *non-capturing group* for matching `abc`.

*Backreference* to those groups:

- `\1`: group number `1`, in `RegExp`.
- `\k<name>`: named group, in `RegExp`.
- `$1`: group number `1`, in replacement expression.
- `$<name>`: named group, in replacement expression.
- `$&`: the *entire* match.
- `` $` ``: *string before* the match.
- `$'`: *string after* the match.
- `$$`: *escaped* symbol `$`.

```javascript
// E.g.:
console.log(/(abc)\1(123)\2/.test('abcabc123123'));      // --> true
console.log('abc123'.replace(/(\w{3})(\d{3})/, '$2$1')); // --> 123abc
```

#### The `test` Method (`RegExp`)

It's used to verify *whether there is a match or not*.

```javascript
// E.g.:
console.log(/a/.test('abc')); // --> true
console.log(/a/.test('xyz')); // --> false
```

#### The `exec` Method (`RegExp`)

It returns the *first match and its capturing groups* (if any).

```javascript
// E.g.:
console.log(.../(a|x)(bc)(123)/.exec('abc123xbc123')); // --> abc123 a bc 123
```

#### The `search` Method (`String`)

It returns the *first match's index*.

```javascript
// E.g.:
console.log('abcabc'.search(/c/)); // --> 2
```

#### The `match` Method (`String`)

It returns the *match and its capturing groups* (if any). Note that global flag (`g`) returns all possible matches, but prevents capturing groups from making part of the output.

```javascript
// E.g.:
console.log(...'abc123xbc123'.match(/(a|x)(bc)(123)/));  // abc123 a bc 123
console.log(...'abc123xbc123'.match(/(a|x)(bc)(123)/g)); // abc123 xbc123
```

#### The `replace` Method (`String`)

It *replaces a match by a given replacement expression*.

```javascript
console.log('abc'.replace(/(\w)/g, '$1$1$1 ')); // --> aaa bbb ccc
```

### Date & Time Library (`Date`)

The `Date` object represents the *current time* since 1 January 1970 UTC.

```javascript
// E.g.:
console.log(new Date());
// --> Thu Jun 30 2022 17:10:39 GMT-0300 (Uruguay Standard Time)
```

#### Creating a `Date` from Data

We can create a `Date` object for a *specific date & time* by passing:

- Milliseconds since 1970.
- The `year`, `month`, `date?`, `hours?`, `minutes?`, `seconds?`, `milliseconds?` (if `0 <= year <= 99`, then 1900 is added).
- An ISO08901 date & time (Automatic Time Zone).
- An ISO08901 date & time (Manual Time Zone).
- An ISO08901 date & time (Zulu Time Zone).

```javascript
// E.g. (respectively):
console.log(new Date(864255128369).toString());
console.log(new Date(97, 4, 21, 19, 52, 8, 369).toString());
console.log(new Date('1997-05-21T19:52:08.369').toString());
console.log(new Date('1997-05-21T19:52:08.369-03:00').toString());
console.log(new Date('1997-05-21T22:52:08.369Z').toString());
// --> Wed May 21 1997 19:52:08 GMT-0300 (Uruguay Standard Time)
// --> Wed May 21 1997 19:52:08 GMT-0300 (Uruguay Standard Time)
// --> Wed May 21 1997 19:52:08 GMT-0300 (Uruguay Standard Time)
// --> Wed May 21 1997 19:52:08 GMT-0300 (Uruguay Standard Time)
// --> Wed May 21 1997 19:52:08 GMT-0300 (Uruguay Standard Time)
```

#### Formatting Date & Time

*Different ways to display* date & time as a string:

```javascript
// String:
console.log((new Date()).toString());
console.log((new Date()).toDateString());
console.log((new Date()).toTimeString());
// --> Sat Jul 02 2022 08:57:38 GMT-0300 (Uruguay Standard Time)
// --> Sat Jul 02 2022
// --> 08:57:38 GMT-0300 (Uruguay Standard Time)
```

```javascript
// Localized string:
console.log((new Date()).toLocaleString());     // --> 7/2/2022, 8:57:38 AM
console.log((new Date()).toLocaleDateString()); // --> 7/2/2022
console.log((new Date()).toLocaleTimeString()); // --> 8:57:38 AM
```

```javascript
// Others:
console.log((new Date()).toUTCString()); // --> Sat, 02 Jul 2022 11:57:38 GMT
console.log((new Date()).toISOString()); // --> 2022-07-02T11:57:38.533Z
```

#### Getters & Setters from `Date`

A list of methods for reading and writing specific (and relative) *date & time units*. Apart from `getTime` and `getTimezoneOffset`, all the other methods have a corresponding version of: `get<unit>`, `getUTC<unit>`, `set<unit>`, and `setUTC<unit>`.

```javascript
// E.g. (for `get<unit>`):
console.log((new Date()).getTime());           // --> 1656763181562
console.log((new Date()).getTimezoneOffset()); // --> 180 (from Uruguay).
console.log((new Date()).getFullYear());       // --> 2022
console.log((new Date()).getMonth());          // --> 6 (0-indexed).
console.log((new Date()).getDate());           // --> 2 (Month day).
console.log((new Date()).getDay());            // --> 6 (Week day).
console.log((new Date()).getHours());          // --> 8
console.log((new Date()).getMinutes());        // --> 59
console.log((new Date()).getSeconds());        // --> 41
console.log((new Date()).getMilliseconds());   // --> 562
```

#### Equivalent Time Between `now` vs `getTime`

We don't always need to create a new instance of `Date` to call `getTime` and get the *current time in milliseconds*. Instead we can get it by calling the `now` method straight from the `Date` object.

```javascript
// E.g.:
console.log(Date.now() === (new Date).getTime()); // --> true
```

### The `JSON` Library

A tool to *create and parse* JSON (*JavaScript Object Notation*) structured data, which is a way to store raw text in a similar syntax than objects from JavaScript.

#### Syntax, Objects vs JSON

Main differences:

- Properties are strings.
- Strings must be double-quoted.
- Decimal points must have at least a digit before and after.
- Not supported types/subtypes: `Infinity`/`-Infinity`, `NaN`, `undefined`.

```json
// E.g.:
{
  "section": "JSON",
  "finished": true,
  "sources": [
    "JavaScript for Impatient Programmers",
    "MDN Web Docs"
  ]
}
```

#### From JSON to JavaScript (`parse`)

Use the `parse` method to convert a JSON text to a JavaScript value.

```javascript
// E.g.:
console.log(JSON.parse('{ "names": ["parse", "stringify"] }'));
// --> { names: [ 'parse', 'stringify' ] }
```

#### From JavaScript to JSON (`stringify`)

Use the `stringify` method to convert a JavaScript value to a JSON text.

```javascript
// E.g.:
console.log(JSON.stringify({ names: [ 'parse', 'stringify' ] }));
// --> {"names":["parse","stringify"]}
```

<!-- ? TODO ### The `Math` Library -->

<!-- ? TODO ### The `Intl` Library -->

### HTTP Requests

#### Requesting with `XMLHttpRequest`

XHR is a *low-level API* for server interaction. It can retrieve data from a URL **updating part of the page**, which wasn't possible before, as every request used to trigger a complete page reload.

##### XHR Usage

1. Instantiate a request object.
1. Open a connection to an endpoint.
1. Send a request.
1. Listen/Await for a response.

```javascript
// E.g.:
const request = new XMLHttpRequest();
request.open('GET', 'https://jsonplaceholder.typicode.com/users');
request.send();
request.onload = () => console.log(request.response); // --> [{ ... }, ...]
// request.abort(); // Not possible with fetch.
```

##### XHR Properties

```javascript
// E.g.:
request.onload = () => {
  console.log(request.response);       // --> [{ ... }, ...]
  console.log(request.readyState);     // --> 4
  console.log(request.status);         // --> 200
  console.log(request.statusText);     // --> "" (empty, "OK" by default)
  // console.log(request.responseText) // *
};

/**
 * (*) We can get a response through responseText, but only if responseType is
 * left as '' (empty) or set to 'text', otherwise we would get an error.
 */
```

##### XHR Events

```javascript
// E.g.:
request.abort = () => { /* ... */ };
request.error = () => { /* ... */ };
request.load = () => { /* ... */ };
request.loadend = () => { /* ... */ };
request.loadstart = () => { /* ... */ };
request.progress = () => { /* ... */ };
request.readystatechange = () => { /* ... */ };
request.timeout = () => { /* ... */ };
```

##### XHR Response Types

If `open` has its third argument (asynchronous) set to `false`, then `responseType` must be set before `send` (i.e.: before `LOADING` and `DONE` states). Notice that setting it to `'json'` will **automatically parse** the response.

Enumerable values:

- `''` (empty)
- `'arraybuffer'`
- `'blob'`
- `'document'`
- `'json'`
- `'text'`

```javascript
// E.g.:
request.responseType = 'json';
```

##### Setting XHR Request Headers

Headers can only be set after `open` but before `send` calls:

```javascript
// E.g.:
request.open('GET', 'https://jsonplaceholder.typicode.com/users');
// ...
request.setRequestHeader('Content-Type', 'application/json');
// ...
request.send();
```

##### XHR State

The property `readyState` is the **request's current state**, it *changes at every phase* of the process (from `0` to `4`). XHR will use the server's response to set both `status` (HTTP response status code) and it's respective `statusText` (e.g.: `'OK'`, `'Not Found'`, etc).

Correspondent values:

`readyState`|`status`|`statusText`|Same as property
---|---|---|---
`0`|Always `0`|Always `''`|`UNSENT`
`1`|Always `0`|Always `''`|`OPENED`
`2`|Always `0` (not sure!)|Always `''` (not sure!)|`HEADERS_RECEIVED`
`3`|`1xx\|2xx\|3xx\|4xx\|5xx`|`''\|'OK'\|'Not found'\|...`|`LOADING`
`4`|`1xx\|2xx\|3xx\|4xx\|5xx`|`''\|'OK'\|'Not found'\|...`|`DONE`

Reacting to status change event:

```javascript
// E.g.:
request.readystatechange = () => {
  switch (request.readyState) {
    case request.UNSENT:
      // ...
      break;
    case request.OPENED:
      // ...
      break;
    case request.HEADERS_RECEIVED:
      // ...
      break;
    case request.LOADING:
      // ...
      break;
    case request.DONE:
      // ...
      break;
  }
};
```

#### Requesting with `fetch`

Fetch is a *high-level API*, easier but less capable compared with XHR, although the most noticeable difference is that it **does not trigger page reloads**.

<!-- TODO fetch explanation and examples -->

### Multi-threading & Web Workers API

We previously defined JavaScript as a single threaded programming language. However, we can use the Workers API to cast threads.

A worker is an object that references to *a different global scope* from a different file, a file that *must be in the same origin* that main JavaScript file is running in. Workers won't work under the `file://` protocol.

Reference:

- Multithreaded JavaScript (pages 19 to 25).
- [Web Workers API (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API).

#### Dedicated Workers

A dedicated worker is just a `Worker`, i.e., the common one.

We use the `postMessage` method and the `onmessage` event handler to communicate between scripts, where `postMessage` triggers the execution of the correspondent `onmessage`. Data passed through gets copied, not shared.

```javascript
// main.js e.g.:
const worker = new Worker('./worker.js');

// When `worker.js` sends a message:
worker.onmessage(message => {
  // ...
});

worker.postMessage('Message sent from main.js');
```

```javascript
// worker.js e.g.:

// When `main.js` sends a message:
self.onmessage(message => {
  // ...
});

postMessage('Message sent from worker.js');
```

Two aspects to notice here:

First, the assignment inside `worker.js` could be written as `var onmessage = /* ... */`. However `let` or `const` won't work.

Second, the `self`, also inside `worker.js` is an alias for `globalThis`. More precisely, it's a property of `WorkerGlobalScope` that returns a reference to the `WorkerGlobalScope` itself.

`WorkerGlobalScope` provides a way to *load external scripts* (something that couldn't be done otherwise through `import` statements), the `importScripts` method.

```javascript
// worker.js e.g.:
importScripts('foo.js', 'bar.js');
```

A `Worker` instance has two *methods*:

- `postMessage(message)`, sends a message.
- `terminate()`, kills the worker instance.

And several *event methods* from which we can highlight:

- `onerror`, runs when there is an error inside a worker.
- `onmessage`, runs when a message is sent with `postMessage`.

Reference:

- [Worker (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/Worker).
- [DedicatedWorkerGlobalScope (developer.mozilla.org)](https://developer.mozilla.org/en-US/docs/Web/API/DedicatedWorkerGlobalScope).

<!-- TODO #### Shared Workers

https://developer.mozilla.org/en-US/docs/Web/API/SharedWorker
https://developer.mozilla.org/en-US/docs/Web/API/SharedWorkerGlobalScope
-->

<!-- TODO #### Service Workers

https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorker
https://developer.mozilla.org/en-US/docs/Web/API/ServiceWorkerGlobalScope
-->

### Code Modularization

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
const pi = 3.14; // Constants cannot be default exported directly.
export default pi;
```

```javascript
export default function () { /* ... */ }
```

```javascript
// As we import items with any name, the exported local name is not used.
export default function unusedFunctionName() { /* ... */ }
```

Importing:

```javascript
// No braces needed for `default` exported items. Also the name can vary.
import util from 'util.js';
```

#### Sharing with Aliases (`as`)

Exporting:

```javascript
// E.g.: one.js
const one = 1;
export { one as ONE };
```

Importing:

```javascript
// E.g.: main.js
import { ONE as NUMBER_ONE } from 'one.js';
console.log(NUMBER_ONE); // --> 1
```

<!-- TODO ### The DOM (Document Object Model) -->
<!-- ? TODO #### The `window` Object and its Members -->
<!-- ? TODO #### The `document` Object and its Members -->
<!-- TODO #### HTML Element Selectors -->
<!-- TODO #### Handling Events -->
<!-- TODO ##### Debouncing & Throttling Events -->

<!-- TODO ### Dealing with Storage ...(session, local, cache, cookies) -->

<!-- TODO ### CSSOM (Cascading Style Sheets Object Model) -->

<!-- TODO ### The `this` Keyword (global, function, object) -->

<!-- TODO ### Coding in `strict` Mode -->

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
// E.g.:
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

---

Reference:

- [Eloquent JavaScript (eloquentjavascript.net)](https://eloquentjavascript.net/).
- [JavaScript For Impatient Programmers (exploringjs.com)](https://exploringjs.com/impatient-js/toc.html).
- [JavaScript (developer.mozilla.org)](https://developer.mozilla.org/es/docs/Web/JavaScript).
<!-- https://on24static.akamaized.net/event/38/49/37/7/rt/1/documents/resourceList1661192485133/handsonjavascriptdeepdivesept20221662487154486.pdf -->
