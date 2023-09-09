# Sorting Algorithms

An algorithm is a **set of well-defined instructions** to solve a given problem, taking a set of inputs and producing a desired output.

Basic algorithm rules:

- Input and output should be *defined precisely*.
- Each step should be *clear and unambiguous*.
- It should be the *most effective way* to get a solution.
- It should be defined as an *abstraction*, not as an implementation.

## Developing a Good Algorithm

The efficiency of data handling can be substantially increased if the data are sorted according to some **criteria of order**. Very *often, the sorting criteria are natural*, as in the case of numbers, or the numeric value of alphanumeric characters. Sorting can be made in *ascending or descending* order. Once the criterion is selected, the second step is **how to sort** the data using that criterion.

There are infinite ways to sort the data, not all of them are efficient. To decide which method is best, certain **criteria of efficiency** have to be established, and a **method for quantitatively comparing** different algorithms must be chosen, certain critical properties should be defined when comparing alternative methods. Two such properties to do that are the **number of comparisons** and the **number of movements**. *The efficiency of these two operations depend on the size of the data set*.

## Estimating Efficiency

We need to measure **how much time it takes** for it to sort the data, but also need to get to know the *intelligence* of that method. For example, an algorithm can (it better should) *recognize an already sorted data set*, so it doesn't make any unnecessary movement or comparison. On the other hand it can be completely unaware of that fact. Determining the precise number of operations **is not always necessary or possible**. For this reason, *the number of comparisons and movements is approximated*.

The number of **comparisons and movements** can vary independently. An algorithm can be efficient on the former and perform poorly on the latter, or vice versa. They can always perform the same operations regardless of **the initial ordering of data**, others are more flexible. Some algorithms perform better on small data samples, others perform better on larger ones, so the **size of the data sample** is also important. The number of operations is often computed (if possible) for three case scenarios.

The three cases are:

- **Best case**: when the data is already in order, *Big-O* notation.
- **Worst case**: the data is in reverse order, *Omega* notation.
- **Average case**: data consistently in random order, *Theta* notation.

## Elementary Sorting Algorithms

This kind of algorithm tends to be efficient for sorting a *small number of elements*. As the number of elements increases, efficiency decreases.

### Insertion Sort

In insertion sort, given an item, *shift all greater-left items by one position* to finally put it in the right spot when there are no more greater-left items. It makes use of a key to temporarily hold the item's value.

```ftl
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

```ftl
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

A sort algorithm in which we *swap any unordered adjacent pair of items* from one edge of the array to the other. Any time we make a swap, another scan should be made to verify if the new positioning left all items in the right place.

```ftl
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

In comb sort the idea is quite similar to bubble sort, we still swap items, but this time, we *swap items with a greater gap between them*. We start from the largest possible gap, which is the array length, comparing the first and the last element. Then reduce the gap dividing it by a shrink factor, usually 1.3, and compare all possible pairs with that configuration, repeat the process while the gap is at least one (comparing adjacent items).

```ftl
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

```ftl
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
  for (i = 0, gap = 1; gap < n; i++, gap = 3 * gap + 1) {
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

More at [Sequence A003462 (oeis.org)](https://oeis.org/A003462).

### Heap Sort

Heap sort uses an approach inherent to selection sort, but instead of starting from the smallest item, it *starts from the largest item and uses a max-heap tree*. We need to create a max-heap tree without actually creating a new data structure.

```ftl
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

Quicksort *divides the array into two subarrays and a key called bound* or pivot. The first one contains items less than or equal to the pivot, the second subarray includes items equal to or greater than the pivot. Then the same partition process is repeated for both subarrays, and so on, until there are only one-cell arrays that do not need to be sorted at all.

```ftl
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

### Merge Sort

The key process here is to *merge sorted halves of an array into one sorted array*. The process of dividing arrays into two halves is done recursively and stops when the array has fewer than two items. Each resulting halve has to be sorted first to then be able to merge. Subarrays are logically separated, no new data structure is created.

```ftl
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

### Radix Sort

The radix approach is to *sort integers by each one of its digits*. For example, starting from the rightmost digit (the units), then the second rightmost digit (the tens) and so on, until all the digits of the longest number have been sorted, partially keeping the order of previous steps.

```ftl
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

Counting sort first *counts the number of times each integer occurs* using an array which is indexed with the value of the given integer.

```ftl
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

**Average benchmark** results for each *algorithm* implementation sorting an average case collection on multiple *lengths* to compare its performance evolution. The best and second best algorithms for each collection length are highlighted.

Elementary Sorting Algorithms (algorithm vs collection length):

||`25`|`250`|`1,000`|`15,000`|`50,000`
---|---|---|---|---|---
*Insertion Sort*|**0.00063ms**|*0.0153ms*|*0.1861ms*|*38.7ms*|*427ms*
*Selection Sort*|*0.00072ms*|0.0311ms|0.3943ms|78.3ms|866ms
*Bubble Sort*|0.00099ms|0.0700ms|0.9445ms|339ms|4.2s
*Comb Sort*|0.00099ms|**0.0082ms**|**0.0654ms**|**1.57ms**|**6.60ms**

Efficient Sorting Algorithm (algorithm vs collection length):

||`25`|`250`|`1,000`|`15,000`|`50,000`|`1,000,000`
---|---|---|---|---|---|---
*Shell Sort*|*0.00081ms*|*0.0045ms*|*0.0554ms*|1.39ms|5.90ms|229.3ms
*Heap Sort*|0.00117ms|0.0061ms|0.0571ms|*1.38ms*|5.60ms|176.6ms
*Quicksort*|0.00108ms|0.0076ms|0.0679ms|1.40ms|*5.20ms*|*125.2ms*
*Mergesort*|0.00189ms|0.0207ms|0.1239ms|2.55ms|10.1ms|290.6ms
*Radix Sort*|0.00603ms|0.0451ms|0.1798ms|2.80ms|9.40ms|207.6ms
*Counting Sort*|**0.00036ms**|**0.0022ms**|**0.0078ms**|**0.18ms**|**1.10ms**|**36.40ms**

---

Reference:

- Data Structures and Algorithms in C++ (page 491).
- Introduction to Algorithms (page 16, 170, 194, 197).
- [Learning DS & Algorithms (programiz.com)](https://www.programiz.com/dsa).

<!-- TODO remake (fix?) algorithms -->
