## Example of ConsoleExercise

```yaml
type: ConsoleExercise 
xp: 100 
```

`@instructions`

- Create a new directory, called `test`.

`@hint`

- You need to use `mkdir`.

`@solution`

```{bash}
mkdir test
```

`@sct`

```{python}
# see https://stackoverflow.com/questions/59838/check-if-a-directory-exists-in-a-shell-script
Ex().test_expr_error('[ -d "test" ]')
Ex().success_msg("Great!")
```
