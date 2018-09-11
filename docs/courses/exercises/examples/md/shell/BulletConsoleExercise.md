## Bullet Console Exercise

```yaml
type: BulletConsoleExercise 
```

This is a BulletConsoleExercise. Great! Super great!
XP should be defined at the subexercise level

`@pre_exercise_code`

```{python}
```

***

### Create a Folder

```yaml
type: ConsoleExercise
xp: 10
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
Ex().success_msg("Great!")
```

***

### List Files

```yaml
type: ConsoleExercise
xp: 20
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
Ex().success_msg("Great!")
```

***

### List Files with Permissions

```yaml
type: ConsoleExercise
xp: 30
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
Ex().success_msg("Great!")
```
