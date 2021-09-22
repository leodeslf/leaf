# Unit Testing

Unit testing can increase system security and reliability by pointing to a wide range of bugs in individual software components before a release. This technique involves breaking software components into smaller, self-contained "units" that have no external dependencies, and then testing each unit.

Unit tests consist of **code that exercises a given unit with different inputs** selected by the engineer writing the test.

Unit tests typically run locally as part of engineering workflows to provide fast feedback to developers before they submit changes to the codebase. In continuous integration/continuous delivery (CI/CD) pipelines, unit tests often run before a commit is merged into a repository's mainline branch. This practice attempts to prevent code changes that break behavior that other teams rely on.

## Writing effective Unit Tests

The **quality** and **comprehensiveness** of unit tests can significantly impact the **robustness** of your software.

Unit tests should be **fast** and **reliable** to give engineers immediate feedback on whether a change has broken expected behavior. By writing and maintaining unit tests, we can ensure that as engineers add new features and code, they do not break behavior covered by relevant tests.

Tests should be **hermetic**, if a test can't repeatedly produce the same results in an isolated environment, we can't rely on it.

It's useful to execute the same **test with different parameters** or environmental data. Thereby reducing boilerplate code, minimizing the amount of duplicated code, and making refactoring efforts less tedious. Unit test frameworks often provide a way to do that.

## When to Write Unit Tests

A common strategy is to **write tests immediately after the code**. These tests typically accompany the new code in the same commit.

In organizations that practice **code review**, a peer reviewer can double-check the tests to ensure they're sufficiently robust to maintain the quality of the codebase.

Instead of writing tests after writing the code, **test-driven development** (TDD) methodologies encourage engineers to **write unit tests based on requirements** and expected behaviors *before* writing code. Then, only when a feature is implemented and the tests pass, engineers progress to the next feature.

We can also write unit tests in response to *manual testing*, *code review* efforts, during a *milestone*, and to verify that a *proposed bug fix* works, so later refactoring won't reintroduce the same bug.

>In the interest of covering as many scenarios as possible, you'll spend more time writing tests than writing the code being tested, especially when dealing with nontrivial systems.

## How Unit Testing Affects Code

To improve the comprehensiveness of tests, we may need to design new code to **include testing** provisions, or refactor older code to make it **more testable**.

Refactoring involves providing a way to **intercept calls** to external systems. To achieve that we could remove *direct* calls and replace them with *abstractions*. That way tests will guarantee that we won't get random failures because of external errors, or even worse, unavailable systems.

>These abstractions and their corresponding implementations are called *mocks*, *stubs*, or *fakes*. Engineers sometimes use these words interchangeably, despite the fact that the concepts vary in implementation complexity and features, so it's important to ensure everyone at the organization uses consistent vocabulary.

If we have to completely rewrite the tests every time a method changes, we may need to rethink the tests -or even the architecture of the system itself.
