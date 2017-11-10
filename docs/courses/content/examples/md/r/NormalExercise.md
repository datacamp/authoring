## How it works

```yaml
type: NormalExercise 
xp: 100 
skills: 1 
key: 15d729634a
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
test_output_contains("18", incorrect_msg = "Make sure to add `6 + 12` on a new line. Do not start the line with a `#`, otherwise your R code is not executed!")
success_msg("Awesome! See how the console shows the result of the R code you submitted? Now that you're familiar with the interface, let's get down to R business!")
```
