## Let's use the viewer pane!

```yaml
type: RStudioMultipleChoiceExercise 
xp: 50 
skills: 1 
```

The viewer pane is similar to the plots pane, but it displays HTML output.

True or false?

`@instructions`

- True
- False

`@hint`

Remember, you can view interactive output within the viewer tab.

`@pre_exercise_code`

```{r eval = FALSE}
# no pec
```

`@sct`

```{r eval = FALSE}
msg1 <- "Correct!"
msg2 <- "Incorrect, rewatch the video and see what Garrett says about the viewer pane."

test_mc(1, feedback_msgs = c(msg1, msg2))
```
