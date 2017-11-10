# Blanks Challenge

In a `BlanksChallenge`, the student is presented a 'required output', and has to fill in the blanks of a script in such a way that, when executed, the script produces the same output as the required output.

![Blanks Challenge](images/BlanksChallenge.png)

The `variables` are added with YAML syntax. In the `code` block, you have to prepend the variable name with a `_` if you want to turn this into a blank in the interface.


{% codetabs name="Version 2", type="text" -%}

## Complete the Script

```yaml
type: BlanksChallenge 
```

`@code`

```{r}
x <- {{_var1}}
y <- {{_var2}}
list(x, y)
```

`@variables`

```{yaml}
var1:
  - 'c(1, 2)'
  - 'c(3, 4)'
var2:
  - 'c(7, 8)'
  - 'c(9, 10)'
```

{%- language name="Version 1", type="text" -%}

--- type:BlanksChallenge

## Complete the Script

*** =code

```{r}
x <- {{_var1}}
y <- {{_var2}}
list(x, y)
```

*** =variables

var1:
  - 'c(1, 2)'
  - 'c(3, 4)'
var2:
  - 'c(7, 8)'
  - 'c(9, 10)'

{% endcodetabs %}

If a student encounters this challenge, the backend will randomly choose a value for `var1` and `var2`. Suppose that the backend selects `c(1, 2)` for `var1` and `c(7, 8)` for `var2`, then the student is expected to fill in the blanks as follows:

```r
x <- c(1, 2)
y <- c(7, 8)
```


## Blanks Challenge with Distractors

This is a variant of the `BlanksChallenge`, where the interface displays a set of code snippets to choose from in order to complete the script.

![Blanks Challenge with Distractors](images/BlanksChallengeWithDistractors.png)

{% codetabs name="Version 2", type="text" -%}

## Complete the Script

```yaml
type: BlanksChallenge 
```

`@code`

```{r}
x <- {{_var1}}
y <- {{_var2}}
list(x, y)
```

`@variables`

```{yaml}
var1:
  - 'c(1, 2)'
  - 'c(3, 4)'
var2:
  - 'c(7, 8)'
  - 'c(9, 10)'
```

`@distractors`

```{yaml}
var1:
  - '{{var1}}'
  - 'c(5, 6)'
var2:
  - '{{var2}}'
  - 'c(11, 12)'
```

{%- language name="Version 1", type="text" -%}

--- type:BlanksChallenge key:9v8inklg4su2kae6418twqaor

*** =code

```{r}
x <- {{_var1}}
y <- {{_var2}}
list(x, y)
```

*** =variables

var1:
  - 'c(1, 2)'
  - 'c(3, 4)'
var2:
  - 'c(7, 8)'
  - 'c(9, 10)'

*** =distractors

var1:
  - '{{var1}}'
  - 'c(5, 6)'
var2:
  - '{{var2}}'
  - 'c(11, 12)'

{% endcodetabs %}


In addition to what is displayed for a free form `BlanksChallenge`, four distractors will be added to the list: `c(3, 4)`, `c(5, 6)`, `c(9, 10)` and `c(11, 12)`. In the `distractors` block, you can specify both a `variable` and extra `distractors`. If you specify a `variable`, all other options, that are not the target, will be considered to add to the `distractors` list. The additional distractors you can add for each blank allow you to also specify distractors that you don't want to be used as 'target blanks'.

