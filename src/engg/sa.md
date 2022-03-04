# Sorting Algorithms

From the book Data Structures and Algorithms in C++.

An algorithm is a **set of well-defined instructions** to solve a given problem, taking a set of inputs and producing a desired output.

Algorithm rules:

- Input and output should be *defined precisely*.
- Each step should be *clear and unambiguous*.
- It should be the *most effective way* to get a solution.
- It should be defined as an *abstraction*, not as an implementation.

The efficiency of data handling can be substantially increased if the data are sorted according to some **criteria of order**. Very often, the *sorting criteria are natural*, as in the case of numbers, or the numeric value of alphanumerical characters. Sorting can be made in *ascending or descending* order. Once the criterion is selected, the second step is *how to sort the data using that criterion*.

The final ordering of data can be obtained on a variety of ways, and only some of them can be considered meaningful and efficient. To decide which method is best, certain **criteria of efficiency** have to be established and a method for quantitatively *comparing different algorithms* must be chosen.

To make the comparison machine-independent, certain critical *properties of sorting algorithms* should be defined when comparing alternative methods. Two such properties are the **number of comparisons** and the **number of movements**. The efficiency of these two operations *depend on the size of the data set*.

Because determining the precise number of comparisons is not always necessary or possible, an approximate value can be computed. For this reason, the number of comparisons and movements is *approximated with the big-O notation* by giving the order of magnitude of these numbers. But the order of magnitude can vary depending on the initial ordering of data.

By measuring the efficiency of a given algorithm, we do not only get to know **how much time it takes** for it to sort the data, but also the **intelligence** of that method. For example, an algorithm can (it better should) *recognize an already sorted data set*, so it doesn't make any unnecessary movement or comparison. By the other hand it can be completely unaware of that fact, something obviously unefficient.

The number of comparisons and the number of movements do not have to be coincident. An algorithm can be very efficient on the former and perform poorly on the latter, or vice versa. Some sorting methods perform the same operations regardless of the initial ordering of data, others are more flexible. The number of operations is computed (if possible) for three case scenarios.

The three cases are:

- *Best case* (often, data already in order).
- *Worst case* (it can be data in reverse order).
- *Average case* ( data in random order).

Usually, simple algorithms often perform better with a small amount of data than their more complex counterparts, whose effectiveness may become obvious only when data samples become very large.

## Elementary Sorting Algorithms

This kind of algorithm tend to be efficient for sorting a *small number of elements*. As the number of elements increases, efficiency decreases.

### Insertion Sort

In insertion sort, given an item, *shift all greater-left items by one position* to finally put it in the right spot when there are no more greater-left items. It makes use of a key to temporary hold the items value.

```txt
insertion(array, n)
  for i = 1 to n - 1
    move +1 place all greater items than array[i] from its left
    put key in the right spot
  return array
```

```javascript
function insertion(array) {
  const n = array.length;
  let key;
  for (let i = 1, j; i < n; i++) {
    key = array[i]
    for (j = i; j > 0 && key < array[j - 1]; j--) {
      array[j] = array[j - 1];
    }
    array[j] = key;
  }
  return array;
}
```

### Selection Sort

The selection sort algorithm takes, usually from left to right, a range of items in which we *localize the smallest one and swap it with the first one*, to then repeat the process with the remaining unordered ones. We loop until `n - 2` (inclusive) because if all items but the last have been already sorted, `n - 1` has to be the largest.

```txt
selection(array, n)
  for i = 0 to n - 2
    select the smallest item from array
    swap it with array[i]
  return array
```

```javascript
function selection(array) {
  const n = array.length;
  for (let i = 0, j, lowestIndex; i < n - 1; i++) {
    for (j = i + 1, lowestIndex = i; j < n; j++) {
      if (array[j] < array[lowestIndex]) {
        lowestIndex = j;
      }
    }
    [array[lowestIndex], array[i]] = [array[i], array[lowestIndex]];
  }
  return array;
}
```

### Bubble Sort

A sort algorithm in where we *swap any unordered adjacent pair of items* from an edge of the array to the other. Any time we make a swap, another scan should be made to verify if the new positioning left all items in the right place.

```txt
bubble(array, n)
  for i = 0 to n - 2
    for j = n - 1 to i + 1
      if array[j] > array[j - 1]
        swap array[j] and array[j - 1]
  return array
```

```javascript
function bubble(array) {
  let n = array.length;
  for (let i = 1, j; i < n; i++) {
    for (j = n - 1; j >= i; j--) {
      if (array[j] < array[j - 1]) {
        [array[j], array[j - 1]] = [array[j - 1], array[j]];
      }
    }
  }
  return array;
}
```

### Comb Sort

In comb sort the idea is quite similar to bubble sort, we still swapping items, but this time, we *swap items with a greater gap between them*. We start from the largest possible gap, which is the array length, comparing the first and the last element. Then reduce the gap dividing it by a shrink factor, usually 1.3, and compare all possible pairs with that configuration, repeat the process while the gap is at least one (comparing adjacent items).

```txt
comb(array, n)
  gap = n
  while (gap / 1.3 > 1)
    swap unordered pairs
  // if (gap / 1.3 < 1)
  scan again until no more swaps are made
    swap unordered pairs
  return array
```

```javascript
function comb(array) {
  const n = array.length;
  let i, j, gap = n;
  while ((gap = Math.floor(gap / 1.3)) > 1) {
    for (i = n - 1; i >= gap; i--) {
      j = i - gap;
      if (array[i] < array[j]) {
        [array[i], array[j]] = [array[j], array[i]];
      }
    }
  }
  let again = true;
  for (i = 0; i < n - 1 && again; i++) {
    for (j = n - 1, again = false; j > i; j--) {
      if (array[j] < array[j - 1]) {
        [array[j], array[j - 1]] = [array[j - 1], array[j]];
        again = true;
      }
    }
  }
  return array;
}
```

## Efficient Sorting Algorithm

Efficient algorithms can break the limit of `O(n^2)` of simpler sorting algorithms. They are better options for sorting a *large data set* than the elementary ones. The approach of *divide and conquer* is applied to first sort subarrays, making the overall state of the array closer to the best case scenario (an already sorted array), then the whole piece is sorted.

### Shell Sort

The heart of shell sort is an ingenious division of the array into several subarrays, as described before for efficient algorithms in general. It's similar to insertion, but the trick is that *items spaced farther apart are compared first*, then the items closer to each other are compared, and so on, until adjacent items are compared on the last pass.

```txt
shell(array, n)
  compute gaps from gap = 1 to gap < n
  for each gap from last to first
    for each logical subarray of items with gap distance between them
      sort subarray items with insertion sort
  return array
```

```javascript
function shell(array) {
  const n = array.length;
  const gaps = [];
  let i, gap;
  for (i = 0, gap = 3 * i + 1; gap < n; i++, gap = 3 * gap + 1) {
    gaps[i] = gap;
  }
  let j, k, offset, key;
  for (i--; i >= 0; i--) {
    gap = gaps[i];
    for (offset = gap; offset < 2 * gap; offset++) {
      for (j = offset; j < n; j += gap) {
        key = array[j];
        k = j;
        while (k - gap >= 0 && key < array[k - gap]) {
          array[k] = array[k - gap];
          k -= gap;
        }
        array[k] = key;
      }
    }
  }
  return array;
}
```

<!-- https://oeis.org/A003462 -->

### Heap Sort

Heap sort uses an approach inherent to selection sort, but instead of starting from the smallest item, it *starts from the largest item and uses a max-heap tree*. We need to create a max-heap tree without actually creating a new data structure.

```txt
heap(array, n)
  convert the array into a max-heap
  for each unsorted item
    swap the largest one (the root) with the last one
    restore the max-heap property
  return array
```

```javascript
function moveDown(array, first, last) {
  let largest = 2 * first + 1;
  while (largest <= last) {
    if (largest < last && array[largest] < array[largest + 1]) {
      largest++;
    }
    if (array[first] < array[largest]) {
      [array[first], array[largest]] = [array[largest], array[first]];
      first = largest;
      largest = 2 * first + 1;
    } else {
      largest = last + 1;
    }
  }
}

function heap(array) {
  const n = array.length;
  let i;
  for (i = Math.floor(n * .5) - 1; i >= 0; i--) {
    moveDown(array, i, n - 1);
  }
  for (i = n - 1; i >= 1; i--) {
    [array[0], array[i]] = [array[i], array[0]];
    moveDown(array, 0, i - 1);
  }
  return array;
}
```

### Quicksort

Quicksort *divides the array into two subarrays and a key called bound* or pivot. The first one contains items less than or equal to the pivot, the second subarray includes items equal to or grater than the pivot. Then the same partition process is repeated for both subarrays, and so on, until there are only one-cell arrays that do not need to be sorted at all.

```txt
quicksort(array)
  if array.length > 1
    choose a bound (index)
      for each item of array
        put items smaller than array[bound] on its left
        put items greater/equal to array[bound] on its right
    if more elements need to be sorted for subarrayN
      quicksort(subarrayN)
  return array
```

```javascript
function quicksort(array, first, last) {
  const n = array.length;
  if (n > 1) {
    first ??= 0, last ??= n - 1;
    const bound = array[Math.floor((first + last) * .5)];
    let lower = first, upper = last;
    while (lower <= upper) {
      while (array[lower] < bound) {
        lower++;
      }
      while (array[upper] > bound) {
        upper--;
      }
      if (lower <= upper) {
        [array[lower++], array[upper--]] = [array[upper], array[lower]];
      }
    }
    if (lower - 1 > first) {
      array = quicksort(array, first, lower - 1);
    }
    if (lower < last) {
      array = quicksort(array, lower, last);
    }
  }
  return array;
}
```

<!-- https://www.guru99.com/images/1/011019_1052_QuickSortAl6.png -->
<!-- https://gist.github.com/claudiahdz/39a86084edaaabe7fc17c321c0bb6896 -->

### Mergesort

The key process here is to *merge sorted halves of an array into one sorted array*. The process of dividing arrays into two halves is done recursively and stops when the array has fewer than two items. Each resulting halve has to be sorted first to then be able to merge. Subarrays are logically separated, no new data structure is created.

```txt
mergesort(array) {
  if array.length > 1    
    array = mergesort(left half of array)
    array = mergesort(right half of array)
    merge both halves (create only one new-temporal data structure)
  return array
}
```

```javascript
function mergesort(array, first, last) {
  const n = array.length;
  first ??= 0, last ??= n - 1;
  if (first < last) {
    const mid = Math.floor((first + last) * .5);
    array = mergesort(array, first, mid);
    array = mergesort(array, mid + 1, last);
    const temp = [];
    let k = 0, left = first, right = mid + 1;
    while (left <= mid && right <= last) {
      if (array[left] < array[right]) {
        temp[k++] = array[left++];
      } else {
        temp[k++] = array[right++];
      }
    }
    while (left <= mid) {
      temp[k++] = array[left++];
    }
    while (right <= last) {
      temp[k++] = array[right++];
    }
    for (let i = first; i <= last; i++) {
      array[i] = temp[i - first];
    }
  }
  return array;
}
```

<!-- https://www.interviewbit.com/tutorial/merge-sort-algorithm/ -->
<!-- https://www.toptal.com/developers/sorting-algorithms/merge-sort -->

### Radix Sort

The radix approach is to *sort integers by each one of its digits*. For example, starting from the rightmost digit (the units), then the second rightmost digit (the tens) and so on, until all the digits of the longest number have been sorted, partially keeping the order of previous steps.

```txt
radix(array, n)
  for digit = 0 (rightmost) to 9 (leftmost)
    for i = 0 to n - 1
      put all items among piles 0 through 9 based on array[i]'s digit value
    merge all items from the piles into array
  return array
```

```javascript
function radix(array) {
  const n = array.length;
  const piles = [], pilesN = [];
  let i;
  for (i = 0; i < 10; i++) {
    piles[i] = [];
    pilesN[i] = 0;
  }
  const radix = 10, digits = 10;
  let j, pile;
  for (let digit = 0, factor = 1; digit < digits; factor *= radix, digit++) {
    for (i = 0; i < n; i++) {
      pile = Math.floor((array[i] / factor) % radix);
      piles[pile][pilesN[pile]++] = array[i]; // "Enqueue".
    }
    for (pile = i = 0; pile < radix; pile++) {
      for (j = 0; j < pilesN[pile]; j++) {
        array[i++] = piles[pile][j]; // "Dequeue".
      }
      pilesN[pile] = 0;
    }
  }
  return array;
}
```

### Counting Sort

Counting sort first *counts the number of times each integer occures* using an array wich is indexed with the value of the given integer.

```txt
counting(array, n)
  for i = 0 to n - 1
    add +1 to count[array[i]]
  for i = 0 to n - 1
    put i count[i] amount of times in array
return array
```

```javascript
function counting(array) {
  const n = array.length;
  const count = [];
  let i;
  for (i = 0; i < n; i++) {
    count[i] = 0;
  }
  for (i = 0; i < n; i++) {
    count[array[i]]++;
  }
  let j, k;
  for (i = k = 0; i < n; i++) {
    for (j = count[i]; j > 0; j--) {
      array[k++] = i;
    }
  }
  return array;
}
```

## Comparative Table

Each implementation sorting an average case array with multiple lengths (`n`).

Algorithm|`16`|`256`|`4,096`|`65,536`|`1,048,576`|`67,108,864`
---|---|---|---|---|---|---
*Insertion Sort*|0.0002ms|0.014ms|2.9ms|736.2ms|317.5s|-|
*Selection Sort*|0.0003ms|0.032ms|5.92ms|1.4s|389.3s|-|
*Bubble Sort*|0.0003ms|0.076ms|18.32ms|7.1s|1924.4s|-|
*Comb Sort*|0.0003ms|0.011ms|0.4ms|11.2ms|197ms|-|
*Shell Sort*|0.0003ms|0.005ms|0.31ms|8.2ms|263ms|36.2s
*Heap Sort*|0.0003ms|0.006ms|0.33ms|7.4ms|182ms|25.3s
*Quicksort*|0.0004ms|0.007ms|0.34ms|6.8ms|131ms|10.6s
*Mergesort*|0.0009ms|0.02ms|0.59ms|13.4ms|298ms|29.4s
*Radix Sort*|0.0034ms|0.048ms|0.74ms|12.8ms|216ms|14.2s
*Counting Sort*|0.0048ms|0.073ms|1.52ms|125ms|80ms|2.9s

<!-- ## Asymptotic Analysis

It's the analysis of *performance over input size* (among other conditions) for a given algorithm, as it may vary in different ways while scaling. Asymptotic notations are the mathematical notations used to **measure the efficiency** (running times) of an algorithm as the input tends towards a particular value.

There are three notations for the different *scenarios*:

- **Big-O** notation, *worst-case*.
- **Omega** notation, *best-case*.
- **Theta** notation, *average-case*.

https://www.programiz.com/dsa/asymptotic-notations

### Master Method & Theorem

#### Master Method

It's a formula for solving *recurrence relations* of the form `T(n) = aT(n / b) + f(n)`.

Where:

- `n` = size of input.
- `a` = number of subproblems.
- `a >= 1` and `b > 1` are constants.
- `n / b` = size of each subproblem (assuming all of them to have the same size).
- `f(n)` = the cost of dividing the problem and cost of merging the solutions.
- `f(n)` is an asymptotically positive function.

#### Master Theorem

The master theorem is used in calculating the **time complexity** of recurrence relations (divide and conquer algorithms) in a simple and quick way.

As the method defines, time complexity is given by `T(n) = aT(n / b) + f(n)`.

Where `T(n)` has the following *asymptotic bounds*:

For|If|Thus
---|---|---
`T(n) = Θ(n^(log_b(a)))`|`f(n) =O(n^(log_b(a - ϵ)))`|`f(n) < n^(log_b(a))`
`T(n) = Θ(n^(log_b(a)) * log(n))`|`f(n) =Θ(n^(log_b(a)))`|`f(n) = n^(log_b(a))`
`T(n) = Θ(f(n))`|`f(n) =Ω(n^(log_b(a + ϵ)))`|`f(n) > n^(log_b(a))`

Being `ϵ > 0` a constant.

The master theorem *cannot* be used if:

- `T(n)` is not monotone.
- `f(n)` is not a polynomial.
- `a` is not a constant.
- `a < 1`.

https://www.programiz.com/dsa/master-theorem

### Divide and Conquer Algorithm

It's a **strategy** of solving a large problem by:

1. Breaking (*divide*) the problem into smaller subproblems.
1. Solving (*conquer*) the subproblems.
1. Merging (*combining*) them to get the desired output.

Advantages:

- Tends to simplify the complexity of problems.
- It's suitable for multiprocessing systems.
- It makes efficient use of memory caches.

#### Divide and Conquer vs Dynamic approach

The main difference is the *storage of subproblem results*. In a dynamic approach, each subproblem result is stored for future reference, whereas, with a divide and conquer approach, it won't happen. That's why we use a dynamic approach when we know we will need to solve the same problem multiple times. 

https://www.programiz.com/dsa -->
