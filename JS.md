# JavaScript

## Constants/Variables

```JavaScript
const name = value  // (read-only)
var name = value    // (optional init)
let name = value    // (optional init, block scope)
```

## Types

```JavaScript
// typeOf
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

// if
if (condition) {} if else {} else

// switch (Breaks and default are optional)
switch (expression) {
    case value:
        break;
    default:
        break;
}

// try...catch...final (catch and finally are optional)
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
// do...while
do {} while (condition);

// for
for (init; condition; someChange) {} // init, condition and someChange are optional

// for...in
for (var property in object) {} // properties

// for...of
for (var object of object) {} // objects

// while
while (condition) {}
```

## Functions

```JavaScript
var name = new Function('arg0', 'arg1', 'functionBody')

// or
function name(arg0, arg1) {
    // functionBody
    return someting; // (optional)
}

// or (Arrow function)
(arg0, arg1) => { statements }
// Parentheses are optional when there's only one parameter

arg0 => { expression }
// Also returns the expression

() => { statements }
// If there's no parameter should have parenthesis
```

## Object

```JavaScript
var o = new Object();

// or
var o = {
    prop0 = value,
    prop1 = value
}
```

## Classes

```JavaScript
class MyObj {
    constructor(prop0) {
        this.prop0 = prop0
    }
    // creating and defining "this" object's properties

    static function0() {}
    // usage: MyObj.function0()

    function0() {}
    // usage: myObj0.function0() (from an initialized obj.)
}
var myObj0 = new MyObj(myProp0)
```

## Promises

## BOM and DOM
