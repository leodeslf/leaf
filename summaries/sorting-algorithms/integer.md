# Integer Sorts

## Bucket

```txt
Bucket(array)
  Set number of buckets
  For each element of array
    Put element in corresponding bucket
  For each bucket of buckets array
    Put Bucket(buckets) into into sorted array
```

```JavaScript
function Bucket(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  let max = -Infinity, min = Infinity;
  for (let i = 0; i < n; i++) {
    if (arr[i] > max) max = arr[i];
    if (arr[i] < min) min = arr[i];
  }
  if (max === min) return arr;
  const bkts = [];
  const bktsN = n >= 5 ? 5 : n;
  for (let i = 0; i < bktsN; i++) bkts[i] = [];
  for (let i = 0; i < n; i++) {
    const bkt = Math.floor((arr[i] - min) / (max - min) * (bktsN - 1));
    bkts[bkt] = [...bkts[bkt], arr[i]];
  }
  let sort = [];
  for (let i = 0; i < bktsN; i++) {
    sort = [
      ...sort,
      ...Bucket(bkts[i])];
  }
  /* End */
  return sort;
}
```

## Count

```txt
Count(array)
  For each element of array
    Add +1 to count[element]
  For each element of count array
    Add element to sorted array, element value amount of times
```

```JavaScript
function Count(arr) {
  const n = arr.length;
  if (n < 2) return arr;
  /* Start */
  let sort = [];
  const count = [];
  for (let val of arr) {
    count[val] = count[val] !== undefined ? count[val]++ : 0;
  }
  let countN = count.length;
  for (let i = 0; i < countN; i++) {
    const val = count[i];
    if (val === undefined) continue;
    for (let times = val; times >= 0; times--) {
      sort = [...sort, val];
    }
  }
  /* End */
  return sort;
}
```
