# Challenges

As we have learned when examining the [challenges data structure](../repo-structure.md) the content of a challenge is organized into chapters in `challenges/` folder, each of which consists of one or more challenges.

### Challenge Types

Following are currently supported types of challenge types you can create on DataCamp platform.

| Type                          | Description                                                                |
|:------------------------------|:---------------------------------------------------------------------------|
| [`OutputChallenge`](./output-challenge.md) | In this challenge student has to match code with the corresponding output, or match output with the corresponding code|
| [`MultipleChoiceChallenge`](./multiple-choice-challenge)  | Presents the student with a block of text that can be a statement or question, and the student has to select the correct option |
| [`BlanksChallenge`](./blanks-challenge.md) | In this challenge student is presented a 'required output', and has to fill in the blanks of a script in such a way that, when executed, the script produces the same output as the required output    |


### Challenges blocks

Creating challenges is based around building blocks.

#### Block explanations

#### `code`

The code block provides a template to generate options for a challenge. It contains references to the variables with `{{ }}` notation.
For example, the code template below uses for variables `var1`, `var2` and `fun1`, whose values are dynamically generated based on the values specified in the variables block.

#### `assignment`

The assignment block allows you to specify the assignment student needs to answer. eg. `Which function convert a character string to uppercase?`

#### `options`

Following the assignment block, options should be specified to provide list of answers while marking one as correct by surrounding it with `[]`.

##### `context`

In some cases, you might want to specify a bit more context with the challenge at hand. You can do this by optionally specifying a `context` block. This context part will be parsed as markdown, and shown in a simple div at the top of the view.

    ```yaml
    type: BlanksChallenge 
    ```

    `@context`

    This is some extra context. You should only use this when it's _really_ required!

#### `variables`

You can specify variables as a list of values for each variable name, and the backend will use them to randomly generate a view from a challenge. These variables are 'local', so they can only be referenced in the challenge where they are specified.

    `@variables`

    ```{yaml}
    var1:
      - 'list(p = c(3, 9))'
      - 'list(q = c(8, 4))'
      - 'list(r = c(2, 6))'
    var2:
      - 'c(3, 4)'
      - 'c(1, 2)'
      - 'c(7, 5)'
      - 'c(8, 6)'
    fun1:
      - 'c'
      - 'list'
    ```

Instead of exhaustively specifying all the values - like in `OutputChallenge`, `MultipleChoiceChallenge` and `BlanksChallenge` - a variable's value can also be defined as an R or Python expression (depending on the language you're writing up a pool for). Take this example:

    `@variables`

    ```{yaml}
    var1:
      - '!expr sprintf("c(%s)", paste(sample(-4:4, 4), collapse = ", "))'
      - 'c(1, 1, 1, 1)'
    fun1:
      - '!expr sample(c("var", "mean", "sd", "max", "min"), 1)'
    ```

When the challenge backend renders this kind of challenge and tries to find a valid value for `var1`, it will first execute the `sprintf(...)` expression. It will use the values that result from that as if they were hard coded values. This allows you to make the number of possibilities virtually endless. Notice that you can still specify hardcoded values in addition to 'expression values', as the `'c(1, 1, 1, 1)'` example shows. This is supported for R, Python and SQL now.

#### `distractors`

@content?

#### `pre_challenge_code`

Often, you'll want to use a bit more advanced code for your expression values, and potentially reuse this. You can use the optional `pre_challenge_code` block for this. When the backend executes the expression to generate a value, it will first execute this code. You can think of it as initialization code.

    `@pre_challenge_code`

    ```{r}
    generate_vector <- function(x) {
      sprintf("c(%s)", paste(sample(-4:4, x), collapse = ", "))
    }
    ```

    `@variables`

    ```{yaml}
    var1:
      - '!expr generate_vector(4)'
    fun1:
      - '!expr sample(c("var", "mean", "sd", "max", "min"), 1)'
    ```

The `pre_challenge_code` is also run before the student tries out code or does a submission when he or she is actually taking a challenge, so you can also use it to pre-initialize your workspace. This can be useful, for example,when you want students to interact with a complex data frame that requires a lot of code to set up, but that you don't want people to see. Take care, however, in using this feature, as it can reduce the overall understandability of your code. If you don't provide extra information in the context, this can lead to obscure challenges!

## YAML Syntax

To specify both `variables` and `distractors`, you have to use YAML syntax. YAML is powerful, but sometimes peculiar. To make sure it always behaves as expected, we suggest you _always_ wrap every variable in single quotes. This will be easiest. This becomes a bit odd if you want to specify a string, with quotes:

    el1:
      - 'quotes not kept'
      - '"double quotes"'
      - "'single quotes'"
      - '"this isn''t a problem"'

To see how this particular piece of YAML is parsed, you can use http://yaml-online-parser.appspot.com/ to check. If you check out the JSON output for the example above, it will be:

    {
      "el1": [
        "quotes not kept",
        "\"double quotes\"",
        "'single quotes'",
        "\"this isn't a problem\""
      ]
    }

Here, it becomes clear that the first element indeed does not keep the single quotes, while the other ones do.