# Pure Multiple Choice Exercises

For the pure multiple choice exercise, add a [meta sheet](../exercises/meta.md) and
add the field `type` with value `PureMultipleChoiceExercise`.

Only a meta sheet is required for a pure multiple choice exercise. The following fields
can be defined:

* **type**: needs to be set to `PureMultipleChoiceExercise`
* **title**: the title of the exercise
* **assignment**: the context of the exercise
* **hint**: optional hint you want to give the user (if requested)
* **possible_answers**: a markdown list of choices that the user will have to choose from.
  The correct option is between square brackets (`[`).
* **feedback**: a markdown list of the same length with feedback messages for each of the option.

An example for **possible_answers** would be:

      - The answer is this
      - No, the answer is this
      - [No, but really... this is the answer]

The corresponding **feedback** could be:

      - That's not quite right
      - Not really
      - Correct!

Remember, there is no sample, solution or SCT sheet for pure multiple choice exercises.
