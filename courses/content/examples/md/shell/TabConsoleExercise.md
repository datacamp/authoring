## TabConsoleExercise

```yaml
type: TabConsoleExercise 
key: ed98f7522c
```

This is a TabConsoleExercise. Great! Super great!
XP should be defined at the subexercise level

`@pre_exercise_code`

```{python}
```

***

### Create a Folder

```yaml
type: ConsoleExercise
xp: 10
key: f8b2c20c47
```

`@instructions`

Create a folder named `films`

`@hint`

Here's a hint for instruction 1

`@sample_code`

```{bash}
echo no sample code
```

`@solution`

```{bash}
mkdir films;
```

`@sct`

```{python}
Ex().test_expr_error('ls films', output = "0")
Ex().success_msg("Great!")
```

***

### List Files

```yaml
type: ConsoleExercise
xp: 20
key: a4d37ad20b
```

`@instructions`

List me all the files/folders in the current directory

`@hint`

Here's a hint for instruction 2

`@sample_code`

```{bash}
echo no sample code
```

`@solution`

```{bash}
ls;
```

`@sct`

```{python}
# MC-NOTE: if these exercises aren't stateful, won't have anything in cwd, so SCT will fail
Ex().test_output_contains('films', "Does the output of your command include the `films`?")
Ex().success_msg("Great!")
```

***

### List Files with Permissions

```yaml
type: ConsoleExercise
xp: 30
key: 936cddd386
```

`@instructions`

List me all the files/folders in the current directory with the permissions of each files/folders

`@hint`

Here's a hint for instruction 3

`@sample_code`

```{bash}
echo no sample code
```

`@solution`

```{bash}
ls -la;
```

`@sct`

```{python}
Ex().test_expr_output('ls -la')
Ex().success_msg("Great!")
```
