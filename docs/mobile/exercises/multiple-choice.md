# Multiple Choice Exercises

The student has to choose one or more correct answers. This is the only exercise
type that doesn't have a default `question` field - you have to ask the student
a particular question! You *can* use `code`, `output`, or `table` blocks if they
are useful, but they aren't required.

The `text` field contains the correct answers, and `distractor_text` contains
the incorrect answers. For a single correct answer, `text` can be a string. In
this case, the student is only permitted to select one option.

```yaml
# lambda functions
- key: # generate me!
  context: "Lambda is useful for creating anonymous functions! 😏"
  question: "Which of the following are correct?"
  text: "Lambda functions do not contain a return statement"
  distractor_text:
    - option: "Lambda is not useful for creating anonymous functions"
      feedback: "Shame on you!" # Don't actually shame students
    - option: "Lambda functions contain a return statement"
      feedback: "Lambda functions contain an expression which is returned!"
```

![Multiple Choice exercise with one option](/images/mobile/multi-choice-one-option-small.png)

For multiple correct answers, text can be an array of strings. In this case, the
student will be allowed to select multiple options, and the exercise will be
considered incorrect unless the student selects *all* the correct answers.

```yaml
# lambda functions
- key: # generate me!
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

![Multiple Choice exercise with multiple option](/images/mobile/multi-choice-multi-option-small.png)
