# Tap

Tap exercises require a special `code` block; it must include at least one `??`
placeholder. Each `??` corresponds to the location of a fill-in-the-blank in the
rendered exercise.

They also require a special additional field `blanks`. The `blanks` field
specifies the correct sequence of blanks (in the correct order), while the
`distractor_blanks` field specifies the additional distractor items that will be
available.

```yaml
- key: 78b2878b-67f1-41c7-b082-5aaab52017e6
  code: |-
    x = 17
    ?? x = 10
    print(x)
  output: "17"
  blanks:
    - "#"
  distractor_blanks:
    - "//"
    - "/*"
```

If there are multiple solutions possible, you can specify `blanks` as a list of
lists - one for each solution:

```yaml
- key: 78b2878b-67f1-41c7-b082-5aaab52017e6
  code: |-
    ?? and ??
  output: "TRUE"
  blanks:
    -
      - (2 == 2)
      - (1 == 1)
    -
      - (2 == 2)
      - (1 == 1)
  distractor_blanks:
    - "(1 == 2)"
```
