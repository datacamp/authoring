# Challenge Style

Always presents the original DataFrame in the context/assignment of
a challenge and have outputs only reflect the modified version that
results from some candidate or generated code.

Always show DataFrames and/or displayed code as the final element of
context, after all prose description of the challenge.

In context displayed code output, always use `>>>` to introduce the
expression that produces that output (i.e., rather than exclusively
bare output introduced in the prose description).

When displaying a DataFrame as context simply echo it from the prompt
rather than add an explicit 'print(df)', as in:

```
>>> df_weather
            Max TemperatureF  Min TemperatureF
Date
2013-1-1                  32                21
2013-1-2                  25                17
2013-1-3                  32                16
...                      ...               ...
2013-12-29                44                39
2013-12-30                41                23
2013-12-31                26                23
[365 rows x 2 columns]
```

Decide how many rows to display of a DataFrame and whether to show the
summary of rows/columns on a case-by-case basis best to illustrate the
content of the specific challenge.  This simply allows
`pd.options.display.whatever` to have been set somewhere not shown
(but can also be manually edited to produce the equivalent result, as
needed).

Use double quotes for string literals rather than single quotes
wherever possible in code shown in context or blanks challenges.

Never include hyperlinks in challenges.

Avoid the word `yield` when not specifically discussing generators.
The word "produce" is a good alternative for "what will you get after
suitable manipulations."
