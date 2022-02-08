# Sorting Algorithms

From the book Data Structures and Algorithms in C++.

An algorithm is a **set of well-defined instructions** to solve a given problem, taking a set of inputs and producing a desired output.

Algorithm rules:

- Input and output should be *defined precisely*.
- Each step should be *clear and unambiguous*.
- It should be the *most effective way* to get a solution.
- It should be defined as an *abstraction*, not as an implementation.

## An Optimal Algorithm

The efficiency of data handling can be substantially increased if the data are sorted according to some **criteria of order**. Very often, the *sorting criteria are natural*, as in the case of numbers, or the numeric value of alphanumerical characters. Sorting can be made in *ascending or descending* order. Once the criterion is selected, the second step is *how to sort the data using that criterion*.

The final ordering of data can be obtained on a variety of ways, and only some of them can be considered meaningful and efficient. To decide which method is best, certain **criteria of efficiency** have to be established and a method for quantitatively *comparing different algorithms* must be chosen.

To make the comparison machine-independent, certain critical *properties of sorting algorithms* should be defined when comparing alternative methods. Two such properties are the **number of comparisons** and the **number of movements**. The efficiency of these two operations *depend on the size of the data set*.

Because determining the precise number of comparisons is not always necessary or possible, an approximate value can be computed. For this reason, the number of comparisons and movements is *approximated with the big-O notation* by giving the order of magnitude of these numbers. But the order of magnitude can vary depending on the initial ordering of data.

By measuring the efficiency of a given algorithm, we do not only get to know **how much time it takes** for it to sort the data, but also the **intelligence** of that method. For example, an algorithm can (it better should) *recognize an already sorted data set*, so it doesn't make any unnecessary movement or comparison. By the other hand it can be completely unaware of that fact, something obviously unefficient.

The number of comparisons and the number of movements do not have to be coincident. An algorithm can be very efficient on the former and perform poorly on the later, or vice versa. Some sorting methods perform the same operations regardless of the initial ordering of data, others are more flexible. The number of operations is computed (if possible) for three case scenarios.

The three cases are:

- *Best case* (often, data already in order).
- *Worst case* (it can be data in reverse order).
- *Average case* ( data in random order).

Usually, simple algorithms often perform better with a small amount of data than their more complex counterparts, whose effectiveness may become obvious only when data samples become very large.

## Comparison Sorting Algorithms

### Bubble Sort

### Heap Sort

### Insertion Sort

### Merge Sort

### Quick Sort

### Selection Sort

### Shell Sort

## Integer Sorting Algorithms

### Bucket Sort

### Count Sort

## Searching Algorithms

### Linear Search

### Binary Search

### Breadth-first Search

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

The main difference is the *storage of subproblem results*. In a dynamic approach, each subproblem result is stored for future reference, whereas, with a divide and conquer approach, it won't happen. That's why we use a dynamic approach when we know we will need to solve the same problem multiple times. -->

<!-- https://www.programiz.com/dsa/divide-and-conquer -->

<!-- ## Greedy Algorithms

## Dynamic Programming -->

<!-- https://www.programiz.com/dsa -->
