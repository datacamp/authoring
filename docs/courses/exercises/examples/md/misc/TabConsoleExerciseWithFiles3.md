## Committing Files


```yaml
type: TabConsoleExercise
xp: 100
```

In this exercise, you will practice how to edit the contents of a file and commit it to the repo.


`@sample_code`

`@@Terminal`

```{sh}

```

`@@files/file1.txt`

```{text open = TRUE, focus = TRUE, delete = FALSE, rename = FALSE}
This file will be open when the exercise is initialized.

Hello ___
```

`@@files/file2.txt`

```{text}
This file will NOT be open when the exercise is initialized.
```

***

### Edit the file

```yaml
type: FileExercise
xp: 30
```

`@instructions`

Edit the contents of `files/file1.txt` to read `Hello World`.

`@solution`

`@@files/file1.txt`

```{text}
This file will be open when the exercise is initialized.

Hello World
```

`@sct`

```{python}
# Test if the user has added Hello World.
```


***

### Commit the file

```yaml
type: ConsoleExericse
xp: 30
```

`@instructions`

Commit the file to the repo with the message `add greeting`.

`@solution`

`@@Terminal`

```{sh}
git commit -m my_files/file1.txt
```

`@sct`

```{python}
# Test if the user has committed the file to the repo with the correct message.
```

