# Multiple Choice Exercises

The student has to choose one or more correct answers. The `text` field contains
the correct answers, and `distractor_text` contains the incorrect answers.

For a single correct answer, `text` can be a string:

```yaml
- type: MultipleChoice
  context: "Lambda is useful for creating anonymous functions! 😏"
  question: "Which of the following are correct?"
  text: "Lambda functions do not contain a return statement"
  distractor_text:
    - option: "Lambda is not useful for creating anonymous functions"
      feedback: "Shame on you!" # Don't actually shame students
    - option: "Lambda functions contain a return statement"
      feedback: "Lambda functions contain an expression which is returned!"
```

For multiple correct answers, text can be an array of strings. The exercise will
be considered incorrect unless the student selects *all* the correct answers.

```yaml
- type: MultipleChoice
  context: "Lambda is useful for creating anonymous functions! 😏"
  question: "Which of the following are correct?"
  text:
    - "Lambda is useful for creating anonymous functions"
    - "Lambda functions do not contain a return statement"
  distractor_text:
    - option: "Lambda is not useful for creating anonymous functions"
      feedback: "Shame on you!" # Don't actually shame students
    - option: "Lambda functions contain a return statement"
      feedback: "Lambda functions contain an expression which is returned!"
```
