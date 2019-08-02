# JavaScript

Notes.

## Contenido

- [Constants/Variables](#Constants/Variables)
- [Types](#Types)
- [Arrays](#Arrays)
- [Conditionals/Control flow](#Conditionals/Control-flow)
- [Iterations](#Iterations)
- [Functions](#Functions)
- [Object](#Object)
- [Classes](#Classes)
- [Promises](#Promises)
- [BOM and DOM](#BOM-and-DOM)

## Constants/Variables

```JavaScript
const name = value  // (read-only)
var name = value    // (optional init)
let name = value    // (optional init, block scope)
```

## Types

```JavaScript
// using typeOf
// Type     // Result

null        // "object"
undefined   // "undefined"

Boolean     // "boolean"
Number      // "number"
String      // "string"
Symbol      // "symbol"
Function    // "function"

anyOtherObject   // "object"
```

## Arrays

```JavaScript
var name = ['element0', 'element1']
var name = new Array('element0', 'element1')
var name = new Array(2) // Array length
```

## Conditionals/Control flow

```JavaScript
// Ternary
condition ? ifTrue : ifFalse

// if... else if... else
if (condition) {}
else if (otherCondition) {}
else {}

// switch (Breaks and default are optional)
switch (expression) {
  case value:
    break;
  default:
    break;
}

// try... catch... final (catch and finally are optional)
try {
  doSomething
} catch (error) {
  console.log("error: " + error)
} finally {
  doSomethingAtTheEnd
}
```

## Iterations

```JavaScript
// while
while (condition) {}

// do... while
do {} while (condition);

// for (init, condition and someChange are optional)
for (init; condition; someChange) {}

// for... of
for (const iterator of object) {}

// for... in (key = object property)
for (const key in object) {
  /* if (object.hasOwnProperty(key)) {
    const element = object[key];
  } */
}

// for each
array.forEach(element => {});
```

## Functions

```JavaScript
var name = new Function('arg0', 'arg1', 'functionBody')

// or
function name(arg0, arg1) {
  // functionBody
  return something; // (optional)
}

// or Arrow function
// Parentheses are optional when there's only one arg.
// If the function body is an expression, it'll be returned
(arg0, arg1) => {}

// or
arg0 => {}

// If there're no args. parenthesis are not optional
() => {}
```

## Object

```JavaScript
var o = new Object();

// or
var o = {
  prop0: value,
  prop1: value
}
```

## Classes

```JavaScript
class MyObj {
  constructor(prop0) {
    this.prop0 = prop0
  }

  static function0() {} // Used directly from the class

  function0() {} // Used from an initialized object (from this class)
}

const myObj0 = new MyObj(myProp0) // Initializing an obj from that class
```

## Promises

```JavaScript
async function somePromise() {
  // do and...
  return something;
}

somePromise()
  .then(response0 => { /* use response0 here */ })
  .then(response1 => { /* you can also do something after a 'then' is done */ })
  .catch(error => { /* use error here */ })

// Also a promise
async function myAsyncFunction0() {
  // `await` can be used only inside an `async` functions
  // It will wait until the promise finishes
  const AWAITED_CONST = await somePromise();
}
```

## BOM and DOM
