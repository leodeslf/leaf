---
layout: default
---
## Unit Testing

Unit testing is an approach that **prevents the release of code that contains bugs**. Typically run locally as part of engineering workflows to provide feedback before a commit is made and any change is sent into the repository's mainline branch.

This technique involves breaking software components into smaller, isolated code blocks called units to be tested. *A unit has no external dependencies*. The tests consist of code that exercises a given unit with different inputs.

### Writing effective Unit Tests

A unit test needs to be fast and **hermetic** at all, that means it should repeatedly *produce the same results* given the same inputs in the same environment, if not, it's not a reliable test. As expected, the efficiency and comprehensiveness of unit tests can significantly impact the robustness of the software.

It's useful to execute the same test with *different inputs*. Thereby minimizing the amount of: duplicated code; boilerplate code; and refactoring efforts.

### When to Write Unit Tests

A common strategy is to write tests **immediately after the code**. These tests typically accompany the new code in the same commit. In organizations that practice code review, a peer reviewer can *double-check the tests* to ensure they're sufficiently robust to maintain the quality of the codebase.

Instead of writing tests after the code, we can *write tests before writing code* following *test-driven development* (TDD) methodologies, these tests are based on requirements and expected behaviors.

We can also *write tests in response to*: manual testing; code review efforts; during a milestone; and to verify that a proposed bug fix works, so later refactoring won't reintroduce the same bug.

>In the interest of covering as many scenarios as possible, you'll spend more time writing tests than writing the code being tested, especially when dealing with nontrivial systems.

### How Unit Testing Affects Code

To improve the comprehensiveness of tests, we may need to design new code to *include testing* provisions, or refactor older code to make it *more testable*. Refactoring involves providing a way to **intercept calls** (e.g.: to verify that the code invokes the interceptor the correct number of times, or with the correct arguments).

We should *remove direct calls* and replace them with **abstractions**. This dramatically reduces the "flakiness" of a test that depends on real-word systems, as tests will guarantee that we won't get random failures because of external dependencies, or even worse, unavailable systems (e.g: when consuming APIs).

>These abstractions and their corresponding implementations are called *mocks*, *stubs*, or *fakes*. Engineers sometimes use these words interchangeably, despite the fact that the concepts vary in implementation complexity and features, so it's important to ensure everyone at the organization uses consistent vocabulary.

Another fact to keep in mind is that, if we have to completely rewrite the tests every time a method changes, we may need to rethink the tests or even the architecture of the system itself.

----

Reference: Building Secure & Reliable Systems (page 272).
