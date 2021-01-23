# Eloquent JavaScript

Quick notes from the book.

## Values, Types and Operators

### Numbers

Max possible number is close to 9 with 15 zeros.  
Scientific notation `2e8`, means `2 * (10 ** 8)`.  
Arithmetic operators with the same precedence execute from left to right.  
The `/`, `*` and `%` share the same precedence, `+` and `-` also do.  
The `/`, `*` and `%` executes first, then `+` and `-`.  
Special numbers that don't behave like numbers are `NaN`, `Infinite` and `-Infinite`.

### Strings

Escape character is `/`.  
Backtick quote creates _template literals_.  
Code inside `${}` will be computed.

### Operators

Logical operator executes first (`||`, then `&&`), then comparison operators (`>, >=, <, <=, ==, ===`), then the rest.  
Conditional operator (ternary) `true ? 1 : 0`.  
Short-circuiting:

- `true || x --> true` (x is never readed).
- `false || x --> x`.
- `true && x --> x`.
- `false && x --> false` (x is never readed).
- `a ?? x --> a` (returns x **only** if `a` is `undefined` or `null`). [Not EJS]
- `null == undefined --> true`.
- `null === undefined --> false`.
- Automatic type conversion is called _type coercion_.
- `??` is called _nullish coalescing_. [Not EJS]

## Program Structure

Make code readable:

- Use semicolons (at the end of a statement).
- Use braces (to wrap code blocks).
- Indent with two (or four) spaces.

The `brake` jumps out of the loop.
The `continue` jumps to the loop's next iteration.

### Functions Visibility

Function definition (or binding) is under top-to-bottom flow of control.  
Function declaration is _hoisted_.

### Functions Scope

The `var` reaches global scope only if it's not in a function.  
Visibility between blocks, its parents, and global scope is called _lexical scope_.  
Calling a binding inside a different local scope is called _closure_.  
A function that calls itself is called _recursive_.  
A function that has no side effects and doesn't read global bindings is called   _pure function_.

## Data Structures: Objects and Arrays

### Objects Properties

Property names are strings (calling `array.length` and `array["length"]` is the same).  
In JavaScript, functions contained in properties are called _methods_.  
A non-existent property returns `undefined` (when not declared or `delete`d).  
The `in` operator returns whether exists a `("property" in anObject)` or not.  
The `keys` function returns all the properties as an array.

### Some Array Methods

The `push` **adds to the end** and returns the new length.  
The `pop` **removes the last one** and returns it.  
The `unshift` **adds to the beginning** and returns the new length.  
The `shift` **removes the last one** and returns it.  
The `slice(start, end)`:

- **Returns an array of elements** between `start` and `end`.
- The `start` is inclusive, `end` is exclusive.
- Specific `end` is optional. No arguments will return an entire copy.

### Mutability

Values of numbers, strings, and booleans are _immutable_, we change the value the binding points to.  
Binding elements to the same object leads to an _identity_.  
Modifying the content of the original object will reflect changes on its bindings.

Example:

```JavaScript
let a = { val: 1 };
let b = a;
let c = { val: 1 };

console.log(a === b);
// --> true
console.log(a === c);
// --> false

a.val = 3;
console.log(b.val);
// --> 3
```

### Some String Methods

The `trim` method **removes all whitespaces** from start and end.  
The `padStart(n, character)` **gives a string n length** by adding a character at the start as many times as needed.  
The `split(separator)`:

- **Returns an array of substrings**.
- Split by any occurence of the given separator.
- If the separator is an empty string (`""`), the original is split between each character.

The `repeat(n)` **returns n concatenated copies** of the original one.

JavaScript stops or warns you when binding with _a name already taken_, but, it **only** does that for `let` and `const` declarations, not for `var` nor `function`.

## Higher-Order Functions

A function that operates on other functions, taking them as arguments or returning them, are called _higher-order functions_.  
Calls can be _stacked_ in a single expression.  
When returning functions they can be called immediately if adding braces after the first call.

Example:

```JavaScript
function hof(args) {
  return (moreArgs) => {
    return (moreAndMoreArgs) => {
      console.log(args, moreArgs, moreAndMoreArgs);
    }
  }
}

hof('That is')('an unexpected')('and weird behavior');
// --> That is an unexpected and weird behavior
```

### Strings and Character Codes

The `charCodeAt` returns a code unit (half character if it's an emoji for example).  
The `codePointAt` returns a full Unicode character.

```JavaScript
let horse = '🐴';

console.log(horse.length);
// --> 2

console.log(horse[0]);
// --> � (invalid character, half-character)

console.log(horse.charCodeAt(0));
// --> 55357 (half-character code)

console.log(horse.codePointAt(0));
// --> 128052 (actual character code)
```

## The Secret Life of Objects

It's a common practice to put an underscore (\_) at the start of a _private_ property name.  
The `call` method takes `this` as the first parameter.  
Each function defined with the `function` keyword has its own `this` binding.  
Arrow functions do not bind their own `this`.

### Symbols

Several properties can (but should not) have the same name with symbols.  
Symbols are _included_ or _accessed_ by using square brackets.

Example:

```JavaScript
let name = Symbol('a name');
let animal = {
  name: 'Timon',
  [name]: 'Pumba'
};

console.log(animal.name);
// --> Timon
console.log(animal[name]);
// --> Pumba
```

Even functions work with square brackets notation.

Example:

```JavaScript
let symbol = Symbol();
let object = {
  [symbol]() {
    return 'Random text';
  }
};

console.log(object[symbol]());
// --> Random text
```

Symbols are always _unique_, even when defined with the same args.

Example:

```JavaScript
let name = Symbol('a name');
let nameAgain = Symbol('a name');

console.log(name == nameAgain);
// --> false
```

When declaring through `new Object` syntax (created by `class` or `function` notation), symbols can be applied directly on the `Object.prototype`.

Example:

```JavaScript
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

Symbols are not enumerated, they don't make part neither of `for...of` nor `for...in` loops.  
Symbols don't get listed on `Object.keys()` or `Object.getOwnPropertyNames()`. They can be listed by using `Object.getOwnPropertySymbols()`.

## Getters, Setters and Statics

The `get` properties are accessed directly, without the call notation (with parenthesis at the end).  
Passing args to a `set` method is done directly too, doesn't make use of function call notation.

Example:

```JavaScript
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

The `instanceof` see through inherited types.

## Bugs and Errors

The `'use strict'` avoids automatic 'corrections' and assumptions made by JavaScript, instead throwing errors, also removes some features entirely.  
The `debugger` creates a breakpoint and pauses the program if the developer tools is active.  
When JavaScript 'throws' an error it stops all the call stack that ended in that exception, this is called _unwinding the stack_.  
We can raise an exception manually with the `throw` keyword, like this: `throw new Error('Oops!')`.

## Regular Expressions

### Definition

Example:

```JavaScript
let re = new RegExp('abc');

// Or:
let re = /abc/;
```

### Test method

Example:

```JavaScript
console.log(re.test('aac'));
// --> false

// Or:
console.log(/abc/.test('aac'));
// --> false
```

### Backslash codes (character groups)

- `\b` word boundary.
- `\d` digit.
- `\w` alphanumeric ("word").
- `\s` whitespace.
- `\D` _not_ a digit.
- `\W` _not_ alphanumeric ("word").
- `\S` _not_ whitespace.
- `.` any, except a newline.

### Set of characters

A _set of characters_ (possibilities) can be defined between square brackets.  
We can also define a _range of characters_ like `[0-9]`, `[a-z]` or `[A-Z]`.

Example:

```JavaScript
console.log(/[0123456789]/.test('5'));
// --> true

// Same as the previous one
console.log(/[0-9]/.test('5'));
// --> true
```

Backslash codes skill working when used between square brackets (in a set of characters). But other _symbols_, such as `+` or `.`, lose their special meanings.

### Special symbols

- `^` matches _the start_ of the pattern.
  - In a set of characters it _inverts/negates_ the content of that set.
- `+` matches a pattern _one or more times_.
- `*` matches a pattern _zero or more times_.
- `?` makes the pattern optional, matches _zero or one time_.
- `$` matches _the end_ of the pattern.

Using `[^]` can refer to any character, including a new line.

### Counters

Braces after an element indicates that it should occur a _precise number of times_ (or a range of times).

Example:

```JavaScript
console.log(/a{4}/.test('aaaa'));
// --> true

console.log(/\d{1, 3}/.test('36'));
// --> true

// Omitting the last value means an open-ended range (any times).
console.log(/a{1,}/.test('aaa'));
// --> true
```

### Grouping subexpressions

It's possible to group subexpressions with parentheses:

```JavaScript
console.log(/(he)+/.test('hehehe'));
// --> true
```

The whole match is always the first element.  
A group matched multiple times, will return only the last match.

Example:

```JavaScript
console.log(/(\d)+/.exec('123'));
// --> ['123', '3']
```

### Execute

The `exec` method returns `null` if no match was found, and returns an object with information about the match otherwise.

Example:

```JavaScript
let match = /\d+/.exec('Number is 12');
console.log(match);
// --> ['12']
console.log(match.index);
// --> 10
```

### String match

Strings have a `match` method that behaves similarly.

Example:

```JavaScript
console.log('Number is 12'.match(/\d+/));
// --> ['12']
```

### Choice patterns

Grouping several patterns within parentheses and separating them with a pipe (`|`), makes each one of them an option (it will match just one of them at a time).

Example:

```JavaScript
console.log(/\b(apple|orange|banana)\b/.test('apple'));
// --> true

console.log(/\b(A|B|C)\b/.test('AB'));
// --> false
```

### Replace method

We can refer to _n_ matched group in the replacement string with the dollar sign.  
The _n_ range is from 1 up to 9.  
The `replace` returns a new string.  
The `$&` refers to the whole match.

Example:

```JavaScript
let string = "dogs and cats";
console.log(string.replace(/(\w+) and (\w+)/, "$2 and $1"));
// --> cats and dogs
```

The `replace` can also take a function as the second argument, which will be applied to each group matched.

Example:

```JavaScript
let string = "DON'T SCREAM";
console.log(string.replace(/\b(\w+)\b/g, str => str.toLowerCase()));
```

### Greedy matching

Repetition operators (`+`, `*`, `?`, `{}`) will match as much as they can.

Example:

```JavaScript
let commentedCode = "x = 1 /* comment */+/* comment */ 10";

// Try to replace a comment block, and it's content.
console.log(commentedCode.replace(/\/\*[^]*\*\//g, ""));
// --> x = 1  10
```

On a _greedy_ way, it will take the first "start" and the last "end" to match as much as it can.  
To take a smaller match, we can put a question mark after the repetition operators to make them non-greedy (`+?`, `*?`, `??`, `{}?`).

Example:

```JavaScript
// Try to replace a comment block, and it's content the right way.
console.log(commentedCode.replace(/\/\*[^]*?\*\//g, ""));
// --> x = 1 + 10
```

### Escape characters

Characters with special meanings must be _escaped_ to be matched against a regex.

Example:

```JavaScript
// Set of characters with special meanings.
let escapeRegex = /[\\?$^()[\]{}.+*]/g;
let text = 'To be escaped: \\ ? $ ^ ( ) [ ] { } . + *';
console.log(text.replace(escapeRegex, '\\$&'));
// --> To be escaped: \\ \? \$ \^ \( \) \[ \] \{ \} \. \+ \*
```

### LastIndex property

When `exec` matches `lastIndex` is updated to the index after the match.  
Resets to zero if no match was found.

Example:

```JavaScript
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

- `g` _global_, searches matches throughout all the input, can return more than one match.
- `y` _sticky_, search for a match at the `lastIndex` (zero by default).
- `i` _case insensitive_.

Note: on sticky (`y`), match will succeed only if it starts directly `lastIndex`, whereas global will search ahead.

## Modules

With `import`, we take the __binding__ from another modules, not the value.  
If the exported binding is redefined, the modules that imported it will see its new value.

## Asynchronous Programming

### Promises

Example:

```JavaScript
let promise = new Promise((resolve, reject) => { /* ... */ });
let value = promise
  .then(value => { /* use value */ })
  .catch(reason => { /* use reason */ });

// Or:
let promiseValue = new Promise((resolve, reject) => { /* Do something. */ }))
  .then(value => { /* use value */ })
  .catch(reason => { /* use reason */ });
```

### Async functions

The `async` functions implicitly returns a promise.
The `await` keyword can be used only inside an `async` function.

Example:

```JavaScript
async function anotherPromise() {
  return 1;
}

async function waitAndDo() {
  // Code will stop here at `await`, until "anotherPromise" is ready.
  return await anotherPromise();  
}

let any = undefined;
waitAndDo().then(value => {
  any = value;
  console.log(any)
});
console.log(any);

// --> undefined
// --> 1
```

### Generators

They produce an iterable.

Example:

```JavaScript
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

The URL (Uniform Resource Locator) structure is `[protocol]://[server]/[path]`.

### HTML

In HTML, an ampersand (&) followed by a name or character code and a semicolon (;) is called an _entity_.

## The DOM

### Trees

Each element has a `nodeType` property, which is a number code that identifies  the type of the node. They are constant properties of `Node` object.

Examples:

- `Node.ELEMENT_NODE` = 1.
- `Node.TEXT_NODE` = 3.
- `Node.COMMENT_NODE` = 8.
- `Node.DOCUMENT_NODE` = 9.

There are 12 codes (2, 4, 5, 6 and 12 are deprecated).

### Moving through the tree

Every node has a `parentNode` and only element nodes has `childNode`. Also `firstChild` and `lastChild`, similarly, `previousSiblind` and `nextSilbling` (when there isn't a previous or a next, it returns `null`).

There is also the `children` property, but contains only element nodes (`nodetype` = 1), not as `childNodes` which contains all of them.

### Changing the document

A node can exist only in one place. That means if we take an element from a certain part of the DOM tree and we insert it into a different part, it will first be removed from the dom, and then insert it in its new place.

The `replaceChildren` method takes the new node, and the one to be replaced as arguments.

### Creating nodes

Some array-like collections returned by `getElementsByTagName` and `childNodes` are _live_. That means they are updated when the DOM changes.  
If we want a solid collection of nodes, we can call it from `Array.from`.

### Attributes

We can work with attributes with `getAttribute` and `setAttribute`.  
Commonly used attributes are `class`, `id`, `href`, but we can also create our own attributes, it's recommended to prefix them with `data-` as a good practice.

### Layout

Useful element properties:

- The `offsetWidth` and `offsetHeight` gives the space the element takes up in pixels.
- Similarly, `clientWidth` and `clientHeight` gives the size _inside_ the element, ignoring the border.
- To get the `top`, `bottom`, `left` and `right` position of an element, use the `getBoundingClientRect` method.
- Current scroll position can be found with `pageXOffeset` and `pageYOfffset`.

### Query selectors

Unlike `getElementsByTagName`, the object returned by `querySelectorAll` is not _live_.

## Handling Events

### Default actions

To prevent the default action to be fired when an event occurs, use `event.preventDefault()` methot. Some events can not be intercepted.

### Pointer events

#### Mouse clicks

When a click is done, `mousedown`, `mouseup` and then `click` fires.

That event holds:

- The `clientX` and `clientY`, which contains the clients coordinates in pixels, relative to the top-left corner of the window.
- The `pageX` and `pageY`, are relative to the whole document.

### Web worker

A different thread can be fired with a web worker. Workers do not share their global scope, they need to use `postMessage` and `onMessage` to communicate with other scopes.

Example:

```JavaScript
// worker.js
self.onMessage(e => {
  console.log('First element sent from main thread is:', e[0]);
  self.postMessage(['Message received']);
});

// main.js
let worker = new Worker('worker.js');
worker.onMessage(e => {
  console.log('From worker:', e[0]);
});

worker.postMessage(true);
// --> First element sent from main thread is: true
// --> From worker: Message received
```

Each side receives a _copy_ of the object sent, rather than the value itself.

### Timers

The `setTimeout` function schedules a function to be called after a given number of milliseconds.  
A `setInterval` sets a timer that should fire every given number of milliseconds.  
Similarly to `animationFrame` and `cancelAnimationFrame`, these timers also have a `clearTimeout` and `clearInterval` respectively.

### Debouncing

A common practice to avoid calling a function, or handling an event too often, is using a `setTimeout`, this is called _debouncing_ the event.

Example:

```JavaScript
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

### The protocol

The shape of an HTTP request is `[method] [path] [version]`.  
Methods: `GET`, `POST`, `PUT`, `DELETE`.  
A server response, e.g.: `HTTP/1.1 200 OK`. Starts with the protocols version, followed with the status code, and finally a human-readable version of that status.  
Status code starting with a `2` indicates success. Starting with a `4` means there was something wrong. Codes with `5` means an error happened on the server.  
The first line of a request can be followed by a number of _headers_. Headers shape is `name: value`.

### Browsers and HTTP

Forms:

```HTML
<form method="GET" action="example/message.html">
  <p>Name: <input type="text" name="name"/></p>
  <p>Last name: <input type="text" name="lname"/></p>
  <p><button type="submit">Send</button></p>
</form>
```

Resulting _submitted_ request: `GET /example/message.html?name=Some&lname=Name HTTP/1.1`.

Ampersand is used to separate pairs.  
Text must be escaped (encoded) to use it as a request. Use `encodeURIComponent` to parse, and `decodeURIComponent`.

### Fetch

When the URL argument doesn't start with a protocol name, it's treated as _relative_.  
When it starts with a slash, it replaces the current path.  
When it does not, it is put in front of the relative URL.

Example:

```JavaScript
fetch('example/data.txt').then(res => {
  console.log(res.status);
  // --> 200
});
```

Use the `text` method to get the actual content of a response.

Example:

```JavaScript
fetch('example/data.txt')
  .then(res => res.text())
  .then(text => console.log(text));
// --> Content of data.txt
```

Similarly, use `json` to parse from plain text JSON file to Javascript object notation.

Example:

```JavaScript
fetch('example/data.txt')
  .then(res => res.json());
```

### Focus

To move the focus to an element use `focus`. To remove focus use `blur` method. If the user is expected to interact immediately use `autofocus`.  
We can influence the order of elements when moving through with `TAB` using `tabindex` attribute. A `tabindex` of -1 makes tabbing skip over an element.

### The form as a whole

Each `<form>` element contains an array-like collection of elements on it's `elements` property.
