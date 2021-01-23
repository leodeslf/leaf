# SASS

## Table of contents

* [Cross Browsing](sass.md#Cross-Browsing)
* [Variables](sass.md#Variables)
* [!global](sass.md#!global)
* [Mixin/Include](sass.md#Mixin/Include)
* [Nesting](sass.md#Nesting)
* [Extend](sass.md#Extend)
* [Operators](sass.md#Operators)
* [Import](sass.md#Import)
* [Partials](sass.md#Partials)

## Cross Browsing

Generate cross-browser styles automatically.

## Variables

It's different from CSS3 variables.

Example:

```css
$var0: green;
$var1: 14px;

body {
  background-color: $var0;
  font-size: $var1;
  ...
}
```

### !global

If `!global` is included, an override over a variable value, is only visible by the selector and its childs.

Example:

```css
$var: red;

a {
  color: $var;
  ...
}

/* Any 'a' occurrence insude 'nav' will take '$var' as blue */
nav {
  $var: blue !global;
  color: $var;
  ...
}
```

## Mixin/Include

Used to create a reusable set of styles.

Example:

```css
@mixin mixinName {
  property: value;
  property: value;
  ...
}
```

We can also use parameters \(with or without default values\).

Example:

```css
@mixin mixinName($param0, $param1: 4px) {
  property: $param0 $param1;
}

select {
  @include: mixinName;
  /* or... */
  @include: mixinName(green, 1px);
  ...
}

select {
  /* Leaving the default value untouched */
  @include: mixinName(@param0: red);
  ...
}
```

## Nesting

It's possible to nest selectors.

Example:

```css
selectorA {
  property: value;
  ...
  selectorb {
    property: value;
    ...
  }
}
```

Even nesting properties with the same prefix.

Example:

```css
font: {
  family: value;
  size: value;
  weight: value;
  ...
}

margin: {
  top: value;
  bottom: value;
  ...
}
```

## Extend

The `@extend` takes the style from another selector, similar to the `@include` from a `@mixin`.

Example:

```css
selector0 {
  property: value;
  property: value;
  ...
}

selector1 {
  @extend selector0;
  property: value;
  ...
}
```

## Operators

Sass can operate with numbers, strings and logic, almost like JavaScript, even between different compatible units as they get automatically converted.

Example:

```css
@debug 10s + 15s; // 25s
@debug 1in - 10px; // 0.8958333333in

@debug 5px * 3px; // 15px*px
@debug 100px + 50; // 150px
@debug 4s * 10; // 40s

@debug (12px/4px); // 3
@debug 1in % 9px; // 0.0625in

@debug -(50px + 30px); // -80px

@debug 15px / 30px; // 15px/30px
@debug (10px + 5px) / 30px; // 0.5
@debug #{10px + 5px} / 30px; // 15px/30px
```

## Import

We can modularize style sheets, communicating modules with `@import`.

Example:

`variables.scss`

```css
$var: red;
```

`styles.scss`

```css
@import "./variables";

p {
  color: $var;
}
```

### Partials

Partials will be ignored by the preprocessor, no equivalent `.css` file will be generated. Anyways, they can still be visible and imported. The final style sheet, containing all the imported partials by a module, will be processed.

Partials are identified by an underscore as a prefix. When importing them, undescore is ignored.

Example:

```bash
# styles/
_variables.scss
_mixins.scss
main.scss
```

```css
/* main.scss */
@import './variables', './mixins';
```
