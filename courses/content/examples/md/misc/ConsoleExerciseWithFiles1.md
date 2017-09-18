## Committing Files


```yaml
type: ConsoleExercise
xp: 100
key: asd89a00a
```

In this exercise, you will practice how to edit the contents of a file and commit it to the repo.

`@instructions`

- Edit the contents of `my_files/file.txt` to read `Hello World`.
- Commit it to the `git` repo with a commit message `add greeting`.


`@sample_code`

`@@Terminal`

```{sh}

```

`@@files/file1.txt`

```{text open = TRUE, focus = TRUE, delete = FALSE}
This file will be open when the exercise is initialized.

Hello ___
```

`@@files/file2.txt`

```{text}
This file will NOT be open when the exercise is initialized.
```

`@solution`

`@@Terminal`

```{sh}
git commit -m my_files/file1.txt
```

`@@files/file1.txt`

```{text open = TRUE, focus = TRUE, delete = FALSE}
This file will be open when the exercise is initialized.

Hello World
```

`@@files/file2.txt`

```{text}
This file will NOT be open when the exercise is initialized.
```
