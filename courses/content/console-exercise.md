# Console Exercise

![Console Exercise - Shell](/images/ConsoleExerciseShell.png)

A `ConsoleExercise` only features a console. Typing a command in the console and hitting `Enter` submits the answer, and the backend provides feedback. This is currently enabled only for shell courses (`lang:shell`).

__Examples__

1. [Console Exercise in Shell](examples/md/shell/ConsoleExercise.md)

__Authoring__

{% codetabs name="Version 2", type="markdown" -%}

## Create a New Directory

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
Ex().test_expr_error('[ -d "test" ]')
Ex().success_msg("Great!")
```

{% endcodetabs %}