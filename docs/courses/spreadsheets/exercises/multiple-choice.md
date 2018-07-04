# Multiple Choice Exercises

Similar to video exercises, it is also not yet possible to create multiple choice exercises using
the spreadsheets authoring interface. There are however some guidelines to be forward compatible:

For the multiple choice exercises, add a Meta sheet and add a field `type` with value
`MultipleChoiceExercise`. You can use the regular `title`, `assignment` and `hint`
fields described [here](./meta.md). Two extra fields should be added as well:
`options` and `feedback`:

- `options` is a markdown list of choices that the user will have to choose from. The correct option
  is between square brackets (`[`).
- `feedback` is a list of the same length with feedback messages for each of the option.

An example for `options` would be:

      - The answer is this
      - No, the answer is this
      - [No, but really... this is the answer]

The corresponding `feedback` could be:

      - That's not quite right
      - Not really
      - Correct!

This means your meta sheet for a multiple choice exercise can have up until 7 fields: `type`,
`title`, `assignment`, `hint`, `options` and `feedback`. There is no sample,
solution or SCT sheet for multiple choice exercises.
