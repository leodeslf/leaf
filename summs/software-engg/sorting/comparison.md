# Comparison Sorts

## Bubble

```txt
Bubble(array)
  For each element of array
    If next element is greater
      Swap them
  If swaps were made
    Bobble(array)
```

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

## Heap

```txt
Heap(array)
  For each element of array
    Add element to (binary) tree
    If element is greater than its parents
      Swap them one by one (bottom to top)
  For each element of tree from last to 0
    Swap last and first elements
    Add new last element of tree to array from left
    Delete new last element of tree
    For each element of tree
      If it's smaller than its childs
        Swap them one by one (top to bottom)
```

```JavaScript
function Heap(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const sort = [...arr];
  for (let i = 0; i < n; i++) {
    let j = i;
    while (j > 0) {
      const parent = ((j % 2 === 0) ? j - 2 : j - 1) * .5;
      if (sort[j] > sort[parent]) {
        [sort[j], sort[parent]] = [sort[parent], sort[j]];
        j = parent;
      } else break;
    }
  }
  [sort[n - 1], sort[0]] = [sort[0], sort[n - 1]];
  for (let last = n - 2; last > 0; last--) {
    for (let j = 0; j * 2 + 1 <= last;) {
      const left = j * 2 + 1;
      const right = j * 2 + 2;
      if (sort[j] < sort[left] &&
        (right <= last ? sort[left] >= sort[right] : true)) {
        [sort[j], sort[left]] = [sort[left], sort[j]];
        j = left;
      } else if (sort[j] < sort[right] && right <= last) {
        [sort[j], sort[right]] = [sort[right], sort[j]];
        j = right;
      } else break;
    }
    [sort[last], sort[0]] = [sort[0], sort[last]];
  }
  /* End */
  return sort;
}
```

## Insertion

```txt
Insertion(array)
  For each element of array from 1
    Move +1 place greater elements from the left
    Put element at the right spot
```

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

```txt
Merge(array)
  For each single-block lenght (from 1 to n)
    For each run (from 0 to n)
      Sort items from each single-block couple
```

```JavaScript
function Merge(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  let sort = [...arr];
  let temp = [];
  for (let singleN = 1; singleN < n; singleN *= 2) {
    const coupleN = singleN * 2;
    for (let runAt = 0; runAt < n; runAt += coupleN) {
      let left = 0 + runAt;
      let right = singleN + runAt;
      const mid = left + singleN;
      const end = right + singleN;
      while ((left < mid && left < n) || (right < end && right < n)) {
        if ((left < mid) && (sort[left] <= sort[right]) ||
          (right >= end || right >= n)) {
          temp = [...temp, sort[left]];
          left++;
          continue;
        }
        if ((right < end) && (sort[right] <= sort[left]) || (left >= mid)) {
          temp = [...temp, sort[right]];
          right++;
        }
      }
    }
    [sort, temp] = [[...temp], []];
  }
  /* End */
  return sort;
}
```

## Quick

```txt
Quick(array)
  Pick last element as pivot
    Put smaller elements in "before" array
    Put greater or equal elements in "after" array
    Return Quick(before) + pivot + Quick(after)
```

```JavaScript
function Quick(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  const pivot = arr[n - 1];
  let beforeArr = [], afterArr = [];
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
  return [...(Quick(beforeArr)), pivot, ...(Quick(afterArr))];
}
```

## Selection

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

```txt
Shell(array)
  Pick a gap smaller than n and greater than 0
  While gap greater than 0
    For each element of array from gap
      If the element at gap distance at the left is bigger
        Swap them
    Reduce gap
```

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
