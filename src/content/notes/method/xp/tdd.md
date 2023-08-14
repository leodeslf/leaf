# Test-Driven Development

Test-driven development (TDD) is an approach, introduced by Kent Beck in 2002 as part of the eXtreme Programming practices (initially called test-first development), that **reverses the developing and testing process**. We first write a test case for a given requirement, only afterwards we implement the code that passes that test.

## Double-Entry Bookkeeping, the Exemplar

Accountants have a 1000 years old discipline, the "double-entry bookkeeping", in which *every transaction is entered twice into their books*: once as a credit in a set of accounts, and again as a complementary debit in another set. Finally, the difference between these accounts is entered into a single document known as "balance sheet". The difference must be zero. If not zero, then an error has been made.

They should enter the transactions *one at a time* and compute the balance each time, since errors would be hard to find if a batch of transactions is entered between balance checks. It is so essential that it has become law in almost all parts of the world.

TDD is the corresponding practice for programmers. **DEB and TDD are equivalent**. Every required behavior is entered twice: once as a test, and then again as a production code that passes the test. They both serve the same function: to prevent errors in critically important documents where *every symbol must be correct*. The only difference is that, by the moment, TDD is not required by law, but should it?

## The Three Laws of TDD

TDD can be described in three simple rules:

1. No production code should be written until we have written a failing unit test.
1. No more of a single, sufficient to fail, unit test should be written.
1. No more production code should be written than sufficient to pass the test.

## The Cycle

The TDD process is defined by a **five-steps** cycle as follows:

1. *Identify a new feature* for the next increment.
1. *Write for it a new test* given the new specifications.
1. *Run all tests* (the only failure is the one we just wrote).
1. *Implement\* or refactor the new feature* and make it pass the new test.
1. *Repeat step 3*, if it fails, repeat from step 4, if not, start a new cycle.

*The principle of "do the simplest thing that could possibly work" (DTSTTCPW) is often followed when writing the implementation to keep things fast and simple.

The idea is to execute this cycle in a matter of minutes. In addition to the TDD process, it's good practice to run *automated-regression tests* to ensure that the whole test suite is still bug-free as new features are added.

## Why TDD

A strong argument for test-driven development is that it helps **clarify ideas** of what the code is supposed to do, before actually trying to write it. As well as better problem understanding.

Other benefits of TDD are:

- *Code coverage*: In principle, every written code segment should have at least one associated test. Therefore, we can be confident that all of the code has actually been executed. Code is tested as it is written so defects are discovered early in the process.
- *Regression testing*: A test suit is developed incrementally. We can always run regression tests to check whether the new code has introduced new bugs on already-tested behavior or not.
- *Simplified debugging*: When a test fails, it should be clear where the problem lies, the new code needs to be checked and modified. We don't necessarily need to use debugging tools to locate that problem. Reports of the use of TDD suggest that it's hardly ever necessary to use an automated debugger in TDD.
- *System documentation*: The tests themselves act as a form of documentation that describe what the code should be doing. Reading the tests can make it easier to understand the code.

## Why not TDD

It is a fact that test-driven development benefits any small to medium size project, as it makes us always think about testing. However, it is also a fact that some people exaggerates and *becomes slave of TDD*.

This manifests itself in a number of ways:

- Spending inordinate amounts of time just to keep the test coverage at 100%.
- Making lots of redundant tests, testing the same on different tests.
- Starting to design at the bottom and work the way up (Bottom-Up).

----

Reference:

- Clean Agile (page 114).
- Software Engineering (page 221).
- The Clean Coder (page 77).
- The Pragmatic Programmer (page 364).
- [Code the Unit Test First (extremeprogramming.org)](http://www.extremeprogramming.org/rules/testfirst.html)
