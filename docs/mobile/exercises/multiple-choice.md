# Multiple Choice Exercises

The student has to choose one or more correct answers.

## Example

```yaml
- type: MultipleChoice
  context: "Lambda is useful for creating anonymous functions! 😏"
  question: "Which of the following are correct?"
  text:
    - "Lambda is useful for creating anonymous functions"
    - "Lambda functions do not contain a return statement"
  distractor_text:
    - option: "Lambda is not useful for creating anonymous functions"
      feedback: "Shame on you!"
    - option: "Lambda functions contain a return statement"
      feedback: "Lambda functions contain an expression which is returned!"
```
