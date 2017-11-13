## Onboarding | Query Result

```yaml
type: MultipleChoiceExercise 
lang: sql 
xp: 50
```

Notice the **query result** tab in the bottom right corner of your screen. This is where the results of your SQL queries will be displayed.

Run the query in the editor and check out the resulting table in the query result tab!

<hr>

Who is the second person listed in the query result?

`@pre_exercise_code`

```{python}
connect('postgresql', 'films')
```

`@sample_code`

```{sql}
SELECT name FROM people;
```

`@instructions`

- Kanye West
- A. Michael Baldwin
- 50 Cent
- Jay Z

`@hint`

Run the code in the editor and look at the query result tab under the editor!

`@sct`

```{python}
msg1 = 'Nope, look at the query result tab!'
correct = 'Correct!'

Ex().test_mc(2, [msg1, correct, msg1, msg1])
```