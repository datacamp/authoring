# Select Table

A Select Table exercise is essentially identical to a [Select Output
exercise](select-output.md), but instead of a choosing the correct `output`
block, students are asked to choose the correct `table` block. This is ideal for
exercises when the output of a code block is better represented as a table - SQL
queries, for example.

```yaml
# SELECT *
- key: # generate me!
  tabs:
    - key: team_mobile
      type: table
  context: "`SELECT *` will pull every column from a table."
  code: "SELECT * FROM team_mobile"
  table:
    data: |-
      Name   ,Awesomeness,Role
      Spencer,100        ,Content
      Boris  ,100        ,Product
      Jens   ,100        ,Code
    message: "Showing 3 out of 3 rows."
  distractor_table:
    - option:
        data: |-
          Name   ,Awesomeness,Role
          Spencer,0          ,Content
          Boris  ,100        ,Product
          Jens   ,100        ,Code
        message: "Showing 3 out of 3 rows."
      feedback: "Spencer is also awesome."
    - option: |-
        Name   ,Awesomeness,Role
        Spencer,100        ,Content
        Boris  ,0          ,Product
        Jens   ,100        ,Code
      feedback: "Boris is also awesome."
```

Both the `table` and the `options` under `distractor_feedback` have a similar
structure. Each are composed of two subfields. First is `data`, which contains
the actual table data as comma separated values. They needn't be aligned as they
are in the example above, but sometimes this improves readability for yourself.
The second is `message`, which contains a short string of text that is displayed
in the footer of the table. The most common use for the table message is to
indicate row truncation, because tables should not be displayed with more than 5
rows as a general rule. If you *are* truncating the result, the `message` field
is mandatory, otherwise it is not.
