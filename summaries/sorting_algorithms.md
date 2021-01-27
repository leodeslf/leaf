# Sorting Algorithms

Conditions:

* Take only one argument the array.
* Avoid sorting a single-item or empty array.
* Avoid built-in methods, objects or constants.
* Generate recursion or closures if it's possible.
* Just one function per algorithm if it's possible.
* Return a sorted copy, do not modify the original.

Examples to test:

* `[2, 3, 1, 0, 3]`
* `[2, 1, 0]`
* `[0, 1, 2]`
* `[1, 0]`

## Table of contents

* [Bubble](sorting_algorithms#Bubble)
* <!-- [Bucket](sorting_algorithms#Bucket) -->
* <!-- [Count](sorting_algorithms#Count) -->
* <!-- [Heap](sorting_algorithms#Heap) -->
* [Insertion](sorting_algorithms#Insertion)
* <!-- [Merge](sorting_algorithms#Merge) -->
* [Quick](sorting_algorithms#Quick)
* <!-- [Radix](sorting_algorithms#Radix) -->
* [Selection](sorting_algorithms#Selection)
* [Shell](sorting_algorithms#Shell)

## Bubble

Pseudocode

```txt
Bubble(array)
  For each element of array
    If next element is greater
      Swap them
  If no swaps were made
    Return sorted array
  Else
    Bobble(array)
```

JavaScript

```JavaScript
function Bubble(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const sort = [...arr];
  let swap = false;
  for (let i = 0; i < n; i++) {
    if (sort[i] > sort[i + 1]) {
      [sort[i], sort[i + 1]] = [sort[i + 1], sort[i]];
      swap = true;
    }
  }
  /* End */
  return swap ? Bubble(sort) : sort;
}
```

## Bucket

Pseudocode

```txt
Bucket(array)
```

JavaScript

```JavaScript
function Bucket() {

}
```

## Count

Pseudocode

```txt
Count(array)
```

JavaScript

```JavaScript
function Count() {

}
```

## Heap

Pseudocode

```txt
Heap(array)
```

JavaScript

```JavaScript
function Heap() {

}
```

## Insertion

Pseudocode

```txt
Insertion(array)
  For each element of array from 1
    Move +1 place greater elements from the left
    Put element at the right spot
```

JavaScript

```JavaScript
function Insertion(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const sort = [arr[0]];
  for (let i = 1; i < n; i++) {
    const val = arr[i];
    let j = i - 1;
    for (; j >= 0 && sort[j] > val; j--) {
      sort[j + 1] = sort[j];
    }
    sort[j + 1] = val;
  }
  /* End */
  return sort;
}
```

## Merge

Pseudocode

```txt
Merge(array)
```

JavaScript

```JavaScript
function Merge() {

}
```

## Quick

Pseudocode

```txt
Quick(array)
  Pick last element as pivot
    Put smaller elements in "before" array
    Put greater or equal elements in "after" array
    Return Quick(before) + pivot + Quick(after)
```

JavaScript

```JavaScript
function Quick(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const pivot = arr[n - 1], beforeArr = [], afterArr = [];
  for (let i = 0, j = n - 2; i <= j; i++, j--) {
    arr[i] < pivot ?
      beforeArr = [...beforeArr, arr[i]] :
      afterArr = [...afterArr, arr[i]];      
    if (i === j) break;
    arr[j] < pivot ?
      beforeArr = [...beforeArr, arr[j]] :
      afterArr = [...afterArr, arr[j]];
  }
  /* End */
  return [
    ...(beforeArr.length > 1 ? Quick(beforeArr) : beforeArr),
    pivot,
    ...(afterArr.length > 1 ? Quick(afterArr) : afterArr)
  ];
}
```

## Radix

Pseudocode

```txt
Radix(array)
```

JavaScript

```JavaScript
function Radix() {

}
```

## Selection

Pseudocode

```txt
Selection(array)
  For each elementI of array to n - 2
    For each elementJ at the right of elementI
      Pick the smallest elementJ
      If elementJ is smaller than elementI
        Save it and its index
    If saved elementJ
       Swap elementI and elementJ
```

JavaScript

```JavaScript
function Selection(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const sort = [...arr];
  for (let i = 0; i < n - 1; i++) {
    let min = sort[i];
    let from = i;
    for (let j = i + 1; j < n; j++) {
      if (sort[j] < min) {
        min = sort[j];
        from = j;
      }
    }
    if (from > i) {
      [sort[i], sort[from]] = [sort[from], sort[i]];
    }
  }
  /* End */
  return sort;
}
```

## Shell

Pseudocode

```txt
Shell(array)
  Pick a gap smaller than n and greater than 0
  While gap greater than 0
    For each element of array from gap
      If the element at gap distance at the left is bigger
        Swap them
    Reduce gap
```

JavaScript

```JavaScript
function Shell(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const sort = [...arr];
  let gap = (n - n % 2) * .5;
  while (gap > 0) {
    for (let i = gap; i < n; i++) {
      let left = sort[i - gap], right = sort[i];
      if (left > right) {
        [sort[i - gap], sort[i]] = [right, left];
      }
    }
    gap--;
  }
  /* End */
  return sort;
}
```
