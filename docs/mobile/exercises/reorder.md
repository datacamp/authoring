# Reorder Exercises

A reorder exercise presents the student with randomly shuffled lines of code
that need to be dragged into the correct sequence in order to produce the given
output. Reorder exercises do **not** require distractors.

By default every individual line is reorderable:

```yaml
- key: e3956121-94ec-c134-d3eb-03192b3b3941
  code:
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
- key: 20fe593a-caf0-46de-b457-cc147f4bd609
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
  output:
    - "[1] 400"

```

If you'd like the student to reorder blocks of code that are longer than 1 line,
you can use 4 dash `-` symobls to mark the blocks.

```yaml
- key: cd3ea9c8-3b90-407c-a46e-676559af9dbd
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
