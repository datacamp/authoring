## Function scoping

```yaml
type: MultipleChoiceExercise 
lang: r 
xp: 50 
```

An issue that Filip did not discuss in the video is function scoping. It implies that variables that are defined inside a function are not accessible outside that function. Try running the following code and see if you understand the results:
  
```
pow_two <- function(x) {
  y <- x ^ 2
  return(y)
}
pow_two(4)
y
x
```

`y` was defined inside the `pow_two()` function and therefore it is not accessible outside of that function. This is also true for the function's arguments of course - `x` in this case.

Which statement is correct about the following chunk of code? The function `two_dice()` is already available in the workspace.

```
two_dice <- function() {
possibilities <- 1:6
dice1 <- sample(possibilities, size = 1)
dice2 <- sample(possibilities, size = 1)
dice1 + dice2
}
```

`@instructions`

- Executing `two_dice()` causes an error.
- Executing `res <- two_dice()` makes the contents of `dice1` and `dice2` available outside the function.
- Whatever the way of calling the `two_dice()` function, R won't have access to `dice1` and `dice2` outside the function.

`@hint`

- The function `two_dice()` doesn't take any input. Calling it with an argument will generate an error.

`@pre_exercise_code`

```{r}
two_dice <- function() {
possibilities <- 1:6
dice1 <- sample(possibilities, size = 1)
dice2 <- sample(possibilities, size = 1)
dice1 + dice2
}
```

`@sct`

```{r}
msg1 <- "Calling `two_dice()` doesn't throw an error; feel free to try it out in the console. Try again."
msg2 <- "Assigning the result of a function to a variable does not change anything about the scoping of the variables inside that function. Have another go at it."
msg3 <- "Great! If you're familiar with other programming languages, you might wonder whether R passes arguments <i>by value</i> or <i>by reference</i>. Find out in the next exercise!"
ex() %>% check_mc(3, feedback_msgs = c(msg1, msg2, msg3))
```
