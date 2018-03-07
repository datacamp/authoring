# Select Output

Select output exercises require a code block (because the output block is the
correct solution).

```yaml
# subtraction
- key: # generate me!
  context: "You can use `-` to subtract numbers, just like a calculator."
  output: "3"
  code: "print(8 - 5)"
  distractor_output:
    - option: "4"
      feedback: "8 - 5 isn't 4, try again."
    - option: "8 - 5"
      feedback: "The mathematical expression will be evaluated before it is printed."
```
