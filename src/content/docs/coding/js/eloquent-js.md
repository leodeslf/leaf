# Eloquent JavaScript

Written by Marijn Haverbeke.

## Values, Types and Operators

### Numbers

- *Maximum* possible number is close to 9 with 15 zeros.
- *Scientific notation* `2e8`, means `2 * (10 ** 8)`.
- The `/`, `*` and `%` executes first, then `+` and `-`.
- The `/`, `*` and `%` share the same precedence, `+` and `-` also do.
- Arithmetic operators with the *same precedence* execute from left to right.
- Special numbers that don't behave like numbers are `NaN`, `Infinite` and `-Infinite`.

### Strings

- *Escape character* is `/`.
- Backtick quote creates *template literals*.
  - Code inside `${}` will be *computed*.

### Operators

- Logical operator executes first (`||`, then `&&`), then comparison operators (`>, >=, <, <=, ==, ===`), then the rest.
- Conditional operator (*ternary operator*) `true ? 1 : 0 --> 1`.

Short-circuiting:

- `true || x --> true` (x is never read).
- `false || x --> x`.
- `true && x --> x`.
- `false && x --> false` (x is never read).
- `null == undefined --> true`.
- `null === undefined --> false`.
- `a ?? x` (returns x only if `a` is `undefined` or `null`). [Not from EJS]
  - Operator `??` is called *nullish coalescing*. [Not from EJS]
- Automatic type conversion is called *type coercion*.

## Program Structure

Make code readable:

- Use *semicolons* (at the end of a statement).
- Use *braces* (to wrap code blocks).
- *Indent* with two (or four) spaces.

The `brake` jumps out of the loop. The `continue` jumps to the loop's next iteration.

## Functions

### Closure

Is the ability to access a *local binding created in a context that is no longer active* (a function call that has ended). This feature (being able to reference a specific instance of a local binding in an enclosing scope) is called **closure**.

```javascript
// E.g.:
function bindTo(n) {
  let localBinding = n;
  return () => localBinding;
}

let one = bindTo(1);
let hi = bindTo('hi'); 

console.log(one()); // --> 1
console.log(hi()); // --> hi
```

```javascript
// E.g.:
function multiplier(factor) {
  return number => number * factor;
}

let double = multiplier(2);
let half = multiplier(0.5);

console.log(double(2)); // --> 4
console.log(half(2)); // --> 1
```

### Functions Visibility

- Function definition (or binding) is *under top-to-bottom flow of control*.
- Function declaration is *hoisted*.

### Functions Scope

- The `var` reaches *global scope* only if it's not in a function.
- Visibility between blocks, its parents, and global scope is called *lexical scope*.
- Calling a binding inside a different local scope is called *closure*.
- A function that calls itself is called a *recursive function*.
- A function that has no side effects and doesn't read global bindings is called *pure function*.

## Data Structures: Objects and Arrays

### Objects Properties

- *Property names are strings* (calling `array.length` and `array["length"]` is the same).
- Functions contained in properties are called *methods*.
- A *non-existent property* returns `undefined` (when not declared or deleted).
- The `in` operator returns whether there *exists* a `("property" in anObject)` *or not*.
- The `keys` function returns *all the properties as an array*.

### Some Array Methods

- The `push` *adds to the end* and returns the *new length*.
- The `pop` *removes the last one* and returns *it*.
- The `unshift` *adds to the beginning* and returns the *new length*.
- The `shift` *removes the first one* and returns *it*.
- The `slice(start, end)`:
  - *Returns an array of elements* between `start` and `end`.
  - The `start` is *inclusive*, the `end` is *exclusive*.
  - Specific `end` is *optional*, if no present it'll return from `start` to the end.
  - No arguments will return an entire *copy*.

### Mutability

- Values of numbers, strings, and booleans are *immutable*, we change the value the binding points to.
- Binding elements to the same object leads to an *identity*.
- Modifying the content of the original object *will reflect changes on its bindings*.

```javascript
// E.g.:
let a = { value: 1 };
let b = a;
let c = { value: 1 };

console.log(a === b); // --> true
console.log(a === c); // --> false

a.value = 3;
console.log(b.value); // --> 3
```

### Some String Methods

- The `trim` method *removes all whitespaces from start and end*.
- The `padStart(n, character)` *gives a string n length* by adding a character *at the start* as many times as needed.
The `split(separator)`:
  - *Returns an array of substrings*.
  - Split by any occurrence of the given *separator*.
  - If the separator is an empty string (`''`), the original is split between *each character*.
- The `repeat(n)` *returns n concatenated copies* of the original one.

Note: JavaScript stops or warns you when *binding with a name already taken* for `let` and `const` declarations, not for `var` nor `function`.

## Higher-Order Functions

A *function that operates on other functions*, taking them as arguments or returning them, are called **higher-order functions**. Calls can be *stacked* in a single expression. When returning functions they can be called immediately.

```javascript
// E.g.:
function hof(args) {
  return (moreArgs) => {
    return (moreAndMoreArgs) => {
      console.log(args, moreArgs, moreAndMoreArgs);
    }
  }
}

hof('Please')('don\'t')('do it');
// --> Please don't do it
```

### Strings and Character Codes

- The `charCodeAt` returns a *code unit* (half character if it's an emoji).
- The `codePointAt` returns a *full Unicode character*.

```javascript
// E.g.:
let horse = '🐴';

console.log(horse.length); // --> 2
console.log(horse[0]); // --> � (invalid character, half-character)
console.log(horse.charCodeAt(0)); // --> 55357 (half-character code)
console.log(horse.codePointAt(0)); // --> 128052 (actual character code)
```

## The Secret Life of Objects

- It's a common practice to put an *underscore* (_) at the start of a *private property* name.
- The `call` method takes `this` as the *first parameter*.
- Each function defined with the `function` keyword has *its own `this` binding*.
- Arrow functions do not bind their own `this`.

### Symbols

- Several properties can (but should not) have the *same name* with symbols.
- Symbols are *included* or *accessed* by using square brackets (array notation) passing the actual symbol binding.

```javascript
// E.g.:
let name = Symbol('description');
let animal = {
  name: 'Timon',
  [name]: 'Pumba'
};

console.log(animal); // --> {name: 'Timon', Symbol(description): 'Pumba'}
console.log(animal.name); // --> Timon
console.log(animal[name]); // --> Pumba
```

Functions can also work with symbols:

```javascript
// E.g.:
let symbol = Symbol();
let object = {
  [symbol]() {
    return 'Random text';
  }
};

console.log(object[symbol]());
// --> Random text
```

Symbols are always *unique*, even when defined with the same args.

```javascript
// E.g.:
let name = Symbol('description');
let nameAgain = Symbol('description');

console.log(name == nameAgain);
// --> false
```

When declaring through `new Object` syntax (created by `class` or `function` notation), symbols can be applied directly to `Object.prototype`.

```javascript
// E.g.:
class Car {
  constructor(owner) {
    this.owner = owner;
  }
}

let acmeCar = new Car('Coyote');

let owner = Symbol();
Car.prototype[owner] = 'Road Runner';

console.log(acmeCar.owner);
// --> Coyote
console.log(acmeCar[owner]);
// --> Road Runner
```

- *Symbols are not enumerated*, they don't make part neither of `for...of` nor `for...in` loops.
- *Symbols don't get listed* on `Object.keys()` or `Object.getOwnPropertyNames()`. They can be listed by using `Object.getOwnPropertySymbols()`.

### Getters, Setters and Statics

- The `get` properties are accessed directly, *without call notation* (with parenthesis at the end).
- Passing args to a `set` method is done directly too, it *doesn't make use of function call notation*.

```javascript
// E.g.:
class Metric {
  constructor(value, magnitude, unit) {
    this.value = value;
    this.magnitude = magnitude;
    this.unit = unit;
  }
  set resetUnit(value) {
    console.log('Resetting unit.');
    this.unit = value
  }
  get status() {
    return `The ${this.magnitude} is ${this.value}${this.unit}.`;
  }
}

let timer = new Metric(24, 'time', 's');

timer.resetUnit = 'hs';
// --> Resetting unit.

console.log(timer.status);
// --> The time is 24hs.
```

### Inheritance

The `instanceof` operator sees through *inherited types*.

## Bugs and Errors

- The `'use strict'` avoids automatic *"corrections" and assumptions* made by JavaScript, instead *throwing errors*, it also removes some features entirely.
- The `debugger` creates a breakpoint and *pauses* the program if the developer tools is active.
- When JavaScript 'throws' an error it *stops all the call stack* that ended in that exception, this is called *unwinding the stack*.
- We can *raise an exception manually* with the `throw` keyword, like this: `throw new Error('Oops!')`.

## Regular Expressions

### Definition

```javascript
// E.g.:
let re = new RegExp('abc');

// Or:
let re = /abc/;
```

### Test Method

```javascript
// E.g.:
console.log(re.test('aac')); // --> false
console.log(/abc/.test('aac')); // --> false
```

### Backslash Codes (character groups)

- `\b` word boundary.
- `\d` digit.
- `\w` alphanumeric ("word").
- `\s` whitespace.
- `\D` *not* a digit.
- `\W` *not* alphanumeric ("word").
- `\S` *not* whitespace.
- `.` any, except a newline.

### Set of Characters

- A *set of characters* (possibilities) can be defined between square brackets.
- We can also define a *range of characters* like `[0-9]`, `[a-z]` or `[A-Z]`.

```javascript
// E.g.: Equivalent expressions.
console.log(/[0123456789]/.test('5')); // --> true
console.log(/[0-9]/.test('5')); // --> true
```

Backslash codes still work when used between square brackets (in a set of characters). But other *symbols*, such as `+` or `.`, lose their special meanings.

### Special Symbols

- `^` matches *the start* of the pattern.
  - In a set of characters it *inverts/negates* the content of that set.
- `+` matches a pattern *one or more times*.
- `*` matches a pattern *zero or more times*.
- `?` makes the pattern optional, matches *zero or one time*.
- `$` matches *the end* of the pattern.

Using `[^]` can refer to any character, including a new line.

### Counters

Braces after an element indicates that it should occur a *precise number of times* (or a range of times).

```javascript
// E.g.:
console.log(/a{4}/.test('aaaa')); // --> true
console.log(/\d{1, 3}/.test('36')); // --> true

// Omitting the last value means an open-ended range (any amount of times).
console.log(/a{1,}/.test('aaa')); // --> true
```

### Grouping Subexpressions

It's possible to group subexpressions with parentheses:

```javascript
// E.g.:
console.log(/(he)+/.test('hehehe'));
// --> true
```

The whole match is always the first element.
A group matched multiple times, will return only the last match.

```javascript
// E.g.:
console.log(/(\d)+/.exec('123'));
// --> ['123', '3']
```

### Execute

The `exec` method returns `null` if no match was found, and returns an object with information about the match otherwise.

```javascript
// E.g.:
let match = /\d+/.exec('Number is 12');
console.log(match);
// --> ['12']
console.log(match.index);
// --> 10
```

### String Match

Strings have a `match` method that behaves similarly.

```javascript
// E.g.:
console.log('Number is 12'.match(/\d+/));
// --> ['12']
```

### Choice Patterns

Grouping several patterns within parentheses and separating them with a pipe (`|`) makes each one of them an *option* (it will match just one of them at a time).

```javascript
// E.g.:
console.log(/\b(apple|orange|banana)\b/.test('apple'));
console.log(/\b(A|B|C)\b/.test('AB'));
// --> true
// --> false
```

### Replace Method

- We can refer to *n* matched group in the replacement string with the dollar sign.
- The *n* range is from 1 up to 9.
- The `replace` returns a new string.
- The `$&` refers to the whole match.

```javascript
// E.g.:
let string = "dogs and cats";
console.log(string.replace(/(\w+) and (\w+)/, "$2 and $1"));
// --> cats and dogs
```

- The `replace` can also take a function as the second argument, which will be applied to each group matched.

Example:

```javascript
let string = "DON'T SCREAM";
console.log(string.replace(/\b(\w+)\b/g, str => str.toLowerCase()));
```

### Greedy Matching

- Repetition operators (`+`, `*`, `?`, `{}`) will match as much as they can.

```javascript
// E.g.:
let commentedCode = "x = 1 /* comment */+/* comment */ 10";

// Try to replace a comment block, and it's content.
console.log(commentedCode.replace(/\/\*[^]*\*\//g, ""));
// --> x = 1  10
```

- In a *greedy* way, it will take the first "start" and the last "end" to match as much as it can.
- To take a smaller match, we can put a question mark after the repetition operators to make them non-greedy (`+?`, `*?`, `??`, `{}?`).

```javascript
// E.g.: Try to replace a comment block, and it's content the right way.
console.log(commentedCode.replace(/\/\*[^]*?\*\//g, ""));
// --> x = 1 + 10
```

### Escape Characters

- Characters with special meanings must be *escaped* to be matched against a regex.

```javascript
// E.g.: Set of characters with special meanings.
let escapeRegex = /[\\?$^()[]{}.+*]/g;
let text = 'To be escaped: \\ ? $ ^ ( ) [ ] { } . + *';
console.log(text.replace(escapeRegex, '\\$&'));
// --> To be escaped: \\ \? \$ \^ ( ) [ ] \{ \} \. \+ \*
```

### LastIndex Property

- When `exec` matches `lastIndex` is updated to the index after the match.
- Resets to zero if no match was found.

```javascript
// E.g.:
let re = /\d/g;
console.log(re.exec('the number is 180'));
// --> ['1']
console.log(re.lastIndex)
// --> 15
// '1' is at 14

// Matching will start at index 15.
console.log(re.exec('now it is 90'));
// --> null
```

Options:

- `g` *global*, searches matches throughout all the input and can return more than one match.
- `y` *sticky*, search for a match at the `lastIndex` (zero by default).
- `i` *case insensitive*.

Note: on sticky (`y`), match will succeed only if it starts directly with `lastIndex`, whereas global will search ahead.

## Modules

- With `import`, we take the **binding** from other modules, not the value.
- If the exported binding is redefined, the modules that imported it will see its new value.

## Asynchronous Programming

### Promises

```javascript
// E.g.:
let promise = new Promise((resolve, reject) => { /* ... */ });
let value = promise
  .then(value => { /* use value */ })
  .catch(reason => { /* use reason */ });

// Or:
let promiseValue = new Promise((resolve, reject) => { /* Do something. */ }))
  .then(value => { /* use value */ })
  .catch(reason => { /* use reason */ });
```

### Async Functions

- The `async` functions implicitly return a promise. The `await` keyword can be used only inside an `async` function.

```javascript
// E.g.:
async function anotherPromise() {
  return 1;
}

async function waitAndDo() {
  // Code "stops" here at `await` until `anotherPromise` finishes.
  return await anotherPromise();
}

let any = undefined;
waitAndDo()
  .then(value => {
    any = value;
    console.log(any);
  });
console.log(any);
// --> undefined (last log)
// --> 1 (log from `then`)
```

### Generators

Generators produce an iterable object.

```javascript
// E.g.:
function* powers(n) {
  for (let current = n;; current *=n) {
    yield current;
  }
}

for (let power of powers(2)) {
  if (power > 30) break;
  console.log(power);
}
// --> 2
// --> 4
// --> 8
// --> 16
```

## JavaScript and the Browser

### The Web

- The URL (Uniform Resource Locator) structure is `[protocol]://[server]/[path]`.

### HTML

- In HTML, an ampersand (&) followed by a name or character code and a semicolon (;) is called an *entity*.

## The DOM

### Trees

- Each element has a `nodeType` property, which is a number code that identifies the type of the node. They are constant properties of `Node` objects.

Examples:

- `Node.ELEMENT_NODE` = 1.
- `Node.TEXT_NODE` = 3.
- `Node.COMMENT_NODE` = 8.
- `Node.DOCUMENT_NODE` = 9.

There are 12 codes (2, 4, 5, 6 and 12 are deprecated).

### Moving Through the Tree

Every node has a `parentNode` and only element nodes have `childNode`. Also `firstChild` and `lastChild`, similarly, `previousSiblind` and `nextSilbling` (when there isn't a previous or a next, it returns `null`). There is also the `children` property, but contains only element nodes (`nodetype` = 1), not as `childNodes` which contains all of them.

### Changing the Document

A node can exist only in one place. That means if we take an element from a certain part of the DOM tree and we insert it into a different part, it will first be removed from the dom, and then inserted in its new place. The `replaceChildren` method takes the new node, and the one to be replaced as arguments.

### Creating Nodes

- Some array-like collections returned by `getElementsByTagName` and `childNodes` are *live*. That means they are updated when the DOM changes.
- If we want a solid collection of nodes, we can call it from `Array.from`.

### Attributes

- We can work with attributes with `getAttribute` and `setAttribute`.
- Commonly used attributes are `class`, `id`, `href`, but we can also create our own attributes, it's recommended to prefix them with `data-` as a good practice.

### Layout

Useful element properties:

- The `offsetWidth` and `offsetHeight` give the space the element takes up in pixels.
- Similarly, `clientWidth` and `clientHeight` give the size *inside* the element, ignoring the border.
- To get the `top`, `bottom`, `left` and `right` position of an element, use the `getBoundingClientRect` method.
- Current scroll position can be found with `pageXOffeset` and `pageYOfffset`.

### Query Selectors

Unlike `getElementsByTagName`, the object returned by `querySelectorAll` is not *live*.

## Handling Events

### Default Actions

To prevent the default action to be fired when an event occurs, use `event.preventDefault()` method. Some events can not be intercepted.

### Pointer Events

#### Mouse Clicks

When a click is done, `mousedown`, `mouseup` and then `click` fires.

Some data from mouse events:

- The `clientX` and `clientY`, which contains the clients coordinates in pixels, relative to the top-left corner of the window.
- The `pageX` and `pageY`, are relative to the whole document.

### Web Worker

A different thread can be fired with a web worker. Workers do not share their global scope, they need to use `postMessage` and `onMessage` to communicate with other scopes.

```javascript
// worker.js
self.onMessage(e => {
  console.log('Worker received:', e.data);
  self.postMessage('Copy!']);
});
```

```javascript
// main.js
let worker = new Worker('worker.js');

worker.onMessage(e => {
  console.log('Main received:', e.data);
});

worker.postMessage('Hi worker!');
// --> Worker received: Hi worker! (from worker.js)
// --> Main received: Copy! (from main.js)
```

Each side receives a *copy* of the object sent, rather than the value itself.

### Timers

- The `setTimeout` function schedules a function to be called after a given number of milliseconds.
- A `setInterval` sets a timer that should fire every given number of milliseconds.
- Similarly to `animationFrame` and `cancelAnimationFrame`, these timers also have a `clearTimeout` and `clearInterval` respectively.

### Debouncing

A common practice to avoid calling a function, or handling an event too often, is using a `setTimeout`, this is called *debouncing* the event.

```javascript
// E.g.:
let scheduled = false;
window.addEventListener('click', event => {
  if (!scheduled) {
    setTimeout(() => {
      // Do something...
      // When it's done, let it schedule
      // again by resetting the value.
      scheduled = false;
    }, 250);
  }
  schedule = event;
});
```

## HTTP and Forms

### The Protocol

- The shape of an HTTP request is `[method] [path] [version]`.
- Methods: `GET`, `POST`, `PUT`, `DELETE`.
- A server response, e.g.: `HTTP/1.1 200 OK`. Starts with the protocols version, followed with the status code, and finally a human-readable version of that status.
- Status code starting with a `2` indicates success. Starting with a `4` means there was something wrong. Codes with `5` means an error happened on the server.
- The first line of a request can be followed by a number of *headers*. Header's shape is `name: value`.

### Browsers and HTTP

Forms are the standard tool to handle *a group of inputs as a whole* with JavaScript.

```html
<!-- E.g.: -->
<form method="GET" action="example/message.html">
  <p>Name: <input type="text" name="name"/></p>
  <p>Last name: <input type="text" name="lname"/></p>
  <p><button type="submit">Send</button></p>
</form>
```

- Resulting *submitted* request: `GET /example/message.html?name=Some&lname=Name HTTP/1.1`.
- Ampersand is used to separate pairs.
- Text must be escaped (encoded) to use it as a request. Use `encodeURIComponent` to parse, and `decodeURIComponent` to get it back.

### Fetch

- When the URL argument doesn't start with a protocol name, it's treated as *relative*.
- When it starts with a slash, it replaces the current path.
- When it does not, it is put in front of the relative URL.

```javascript
// E.g.:
fetch('example/data.txt')
  .then(res => console.log(res.status));
// --> 200
```

Use `text` method to get the content of a response.

```javascript
// E.g.:
fetch('example/data.txt')
  .then(res => res.text())
  .then(text => console.log(text));
// --> Content of data.txt
```

Similarly, use `json` to parse from plain text JSON file to JavaScript object notation.

```javascript
// E.g.:
fetch('example/data.txt')
  .then(res => res.json());
```

### Focus

To move the focus to an element use `focus`. To remove focus use the `blur` method. If the user is expected to interact immediately use `autofocus`.
We can influence the order of elements when moving through with `TAB` using the `tabindex` attribute. A `tabindex` of -1 makes tabbing skip over an element.

### The Form as a Whole

- Each `<form>` contains an array-like collection of elements called `elements`.

---

Reference: [Eloquent JavaScript (eloquentjavascript.net)](https://eloquentjavascript.net/).
