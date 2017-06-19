Code reviews are about keeping code clean and limiting technical debt.  To that end, we will look for things that increase technical debt or create an environment where technical debt can be introduced easily later.

# What we look for
## 1. Untested code
We’re mostly going to look at new and changed code.  For changed code, we’ll check the existing tests to make sure they’ve been updated if necessary.  For new code, we’ll check that new tests were created.

## 2. All logical paths are tested
Tests should cover all branches of logical decisions (e.g., if statements).  We’ll check this by looking at a code coverage report that shows which lines were executed.

## 3. Logical `AND` and `OR` operations are tested
Boolean operations can be somewhat hidden logical paths.  That is, a code coverage report will show every line is tested, but if boolean parts of a condition aren’t fully exercised, then some logical paths aren’t actually tested.  We’ll check the tests to make sure they check both sides of logical operations.

## 4. Test names describe what the tests are doing
Test names shouldn’t be overly technical.  Ideally folks outside the development team can read the tests and know what’s passing and what’s failing.  Test names should describe their behavior and not just be the name of the method being tested.  We’ll check the test names to make sure they’re descriptive.

## 5. Tests actually do what they’re supposed to
It’s easy to get to 100% code coverage without actually testing anything. We’ll look at the tests themselves to make sure they’re actually making the right assertions about the methods under test.

## 6. Cyclomatic complexity, code depth, and method lengths are reasonable
We’ll use automated tools to do [static source analysis](https://18f.gsa.gov/2016/10/04/what-is-static-source-analysis/).  Anywhere the metrics are higher than what we’d generally like, we’ll look at the code itself to see if they make sense.  We’re going to take a more in-depth look when we a cyclomatic complexity above 10, a code depth above 5, or a method length above 25 lines.

## 7. Opportunities to abstract and refactor
We’ll look for duplication in the code where it might make sense to break functionality into methods that can be reused.

## 8. Unwieldy methods
Methods that are hard to reason about are also difficult to test, difficult to maintain, and prone to bugs.  We’ll look out for methods that are complex and suggest either refactoring that method or possibly breaking it into smaller pieces.

## 9. Meaningful method and variable names
Method names should accurately reflect what the method does, and variable names should pretty clearly indicate what data they’re holding.  Don’t be afraid of long names.  This also applies to method argument names.  Ideally, someone looking at a method signature should be able to infer what it does without any additional documentation.  We’ll look at these names to be sure they make sense.  Good naming practices contribute to self-documenting code and reduce the manual documentation burden.

## 10. Commented-out code
With good version control, it should be unnecessary to comment out blocks of code - just delete them and get them from source history if you really need them again in the future.  Obviously it’s fine to comment out code while you’re developing, but once a feature is ready to merge, that former code should just be removed.  We’ll be looking for these commented code blocks.

## 11. Necessary comments
Comments in the code should describe complex bits of logic that aren’t easily glanceable - if someone new to the code can’t skim it and understand it, a comment might be in order.  As we’re reviewing the code, if we find a bit we can’t understand quickly from the code and context, we’ll be looking for a comment that explains it.  Comments should appear with the code they’re describing. That said, we prefer inline code documentation such as PyDoc, JsDoc, to help better understand method expectations.

## 12. Documented APIs
If your code exposes a public API - whether that’s public methods on a class or HTTP endpoints in a REST service - those public methods should be documented.  We like documentation that can be extracted into some pretty markup (e.g., .NET’s XML comments, jsdoc, or [OAS](https://www.openapis.org/) - formerly Swagger).  We’ll check that any public-facing methods have useful documentation. 

## 13. Adherence to the project’s style guide
The project should adopt a code style guide and code should conform.  Which guide the team chooses is less important than the consistency that comes from actually using it.  We’ll check to make sure there’s a linter configured to check code style, that it passes, and that any exceptions are documented and explained in the code.
 
# What we’ll do
## 1. We’ll be nitpicky
Code is a UX.  Its users are other developers.  In the spirit of user-centered design, we’ll be interested in the experience of future developers.  We’ll look at your code with the question in the back of our minds, “Would I want to work on this?”

## 2. We’ll be thorough
After the work to write the code, it deserves for us to give it proper attention.  We’ll take the time to carefully look over it and give our feedback.

## 3. We’ll ask questions
If we’re not sure about something, we’ll ask for clarity.  We may ask a lot.

## 4. We’ll be kind
We wouldn’t want anyone being mean to us because of an oversight, mistake, or just a different idea, so won’t do it to you either.  Code reviews are really conversations, not dictates.  We’ll make suggestions rather than simply saying, “that’s wrong.”
