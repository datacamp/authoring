# Select Code

In a Select Code exercise, students are asked to select the block of code that
will produce a given output. Select Code exercises require a code block (because
the code block is the correct solution), and a `distractor_code` field. In a
sense, Select Code is the reverse of a [Select Output](select-output.md)
exercise. In fact, all it takes to convert a Select Output exercise to a Select
Code exercise is to remove or comment the `distractor_output` field and add a
`distractor_code` field.

```yaml
# subtraction
- key: # generate me!
  context: "You can use `-` to subtract numbers, just like a calculator."
  output: "3"
  code: "print(8 - 5)"
  distractor_code:
    - option: "print(3 + 4)"
      feedback: "Careful, that would give you `7`."
    - option: "print(10 - 1)"
      feedback: "Careful, that would give you `9`."
```
