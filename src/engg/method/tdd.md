# Test-Driven Development

From the books:

- The Pragmatic Programmer.
- Software Engineering.

Test-driven development (TDD) is an approach, introduced by Kent Beck in 2002, that **reverses the developing and testing process**. We first write a test case for a given requirement, only afterwards we implement the code that passes that test.

## The cycle

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
