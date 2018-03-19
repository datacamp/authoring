# Reorder Exercises

A reorder exercise presents the student with randomly shuffled lines of code
that need to be dragged into the correct sequence in order to produce the given
output. Reorder exercises do **not** require distractors.

By default every individual line is reorderable:

```yaml
# data.frame()
- key: # generate me!
  context: "You can create a data frame with the `data.frame` function."
  code:
    - |-
      df <- data.frame(a = 1:100, b = 101:200)
      df <- subset(df, b > 170)
      df <- df[1:2, ]
      df
  output: |-4
            a   b
        71 71 171
        72 72 172
```

If there are multiple possible solutions, you can specify them all in a list.

```yaml
# comments
- key: # generate me!
  context: "Anything that comes after the `#` character is a comment and is not interpreted as code."
  code:
    - |-
      # this is a comment
      x <- 400
      x
    - |-
      x <- 400
      # this is a comment
      x
    - |-
      x <- 400
      x
      # this is a comment
  output: "[1] 400"

```

If you'd like the student to reorder blocks of code that are longer than 1 line,
you can use 4 dash `-` symbols to mark the blocks.

```yaml
# while loop
- key: # generate me!
  context: ""
  code:
    - |-
      offset = -2
      ----
      while offset != 0:
      ----
          if offset > 0:
              offset = offset - 1
      ----
          else:
              offset = offset + 1
      ----
          print(offset)
  output: |-
    -1
    0
```
