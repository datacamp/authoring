# Challenge Content

Here are the recommended guidelines to be followed when creating challenges.

## Pool level

- MCChallenges < 20%
- OutputChallenges < 30%
- BlankChallenges at least 50%.

## Challenge level

### `OuputChallenge`

- Limit number of characters per line to 50
- Limit number of lines to 5
- Only the last line of code should generate an output

### `BlanksChallenge`

- Limit number of characters per line to 50
- Limit number of lines to 5
- Limit length of distractors to 9
- Distractors should be 'atomic'
  - Single word: `lapply`, `my_var`, ...
  - Single string: `"test"`, `""`, `" "`, ...
  - Single syntax element: `(`, `[`, `]`, ...
  - Example of what's not good: `c("a", "b", "c")`

### `MultipleChoiceChallenge`

- No extra guidelines.
- Make sure to wrap code elements in code tags.