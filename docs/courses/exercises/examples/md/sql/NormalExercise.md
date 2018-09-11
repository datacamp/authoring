## Onboarding | Errors

```yaml
type: NormalExercise 
lang: sql 
xp: 100
```

If you submit the code to the right, you'll see that you get two types of errors.

_SQL_ errors are shown below the editor. These are errors returned by the _SQL_ engine. You should see:

```
syntax error at or near "'DataCamp <3 SQL'" LINE 2: 'DataCamp <3 SQL' ^
```

<br>

_DataCamp_ errors are shown in the **Instructions** box. These will let you know in plain English where you went wrong in your code! You should see:

```
You need to add SELECT at the start of line 2!
```

`@instructions`

Submit the code to the right, check out the errors, then fix them!

`@hint`

In the editor, change line 2 to `SELECT 'DataCamp <3 SQL'`.

`@pre_exercise_code`

```{python}
connect('postgresql', 'films')
```

`@sample_code`

```{sql}
-- Try running me!
'DataCamp <3 SQL'
AS result;
```

`@solution`

```{sql}
-- Try running me!
SELECT 'DataCamp <3 SQL'
AS result;
```

`@sct`

```{sql}
Ex().has_code('SELECT|select', msg='You need to add `SELECT` at the start of line 2!')
Ex().success_msg("Well done!")
```
