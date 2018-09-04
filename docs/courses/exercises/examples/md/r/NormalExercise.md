## How it works

```yaml
type: NormalExercise 
xp: 100 
```

You can execute R commands straight in the console. This is a good way to experiment with R code, as your submission is not checked for correctness.

`@instructions`

- In the editor on the right there is already some sample code. Can you see which lines are actual R code and which are comments?
- Add a line of code that calculates the sum of 6 and 12, and hit the 'Submit Answer' button.

`@hint`

Just add a line of R code that calculates the sum of 6 and 12, just like the example in the sample code!

`@pre_exercise_code`

```{r}
# no pec
```

`@sample_code`

```{r}
# Calculate 3 + 4
3 + 4

# Calculate 6 + 12

```

`@solution`

```{r}
# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6 + 12
```

`@sct`

```{r}
ex() %>% check_output_expr("6 + 12")
success_msg("Awesome!")
```
