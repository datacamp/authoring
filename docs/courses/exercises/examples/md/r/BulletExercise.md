## Building a plot!

```yaml
type: BulletExercise 
lang: r 
xp: 150 
```

`@pre_exercise_code`

```{r}
library(ggplot2)
```

`@sample_code`

```{r}
ggplot(mtcars, aes(x = mpg, y = wt))
```

***

## Add a scatterplot

```yaml
type: NormalExercise
xp: 30
```


`@instructions`

Use `geom_point` to add a scatterplot

`@hint`

Submit the query!

`@solution`

```{r}
ggplot(mtcars, aes(x = mpg, y = wt)) +
  geom_point()
```

`@sct`

```{r}
# Test if user added geom_point
```

***

## Add a regression line

```yaml
type: NormalExercise
xp: 30
```

`@instructions`

Use `geom_smooth` with `method` set to `lm` to add a regression line

`@hint`

Submit the query!

`@solution`

```{r}
ggplot(mtcars, aes(x = mpg, y = wt)) +
  geom_point() +
  geom_smooth(method = 'lm')
```

`@sct`

```{r}
# Test if the user added a geom_smooth with method = 'lm'
```
