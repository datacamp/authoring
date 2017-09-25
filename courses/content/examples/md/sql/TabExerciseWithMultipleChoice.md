## TabExercise with MultipleChoice Subexercise

```yaml
type: TabExercise
key: ed98f7522c
```

This is a tabexercise. Great! Super great!
XP should be defined at the subexercise level

`@pre_exercise_code`

```{r}
connect('postgresql', 'dvdrental')
```

***



```yaml
type: NormalExercise
xp: 10
key: e7cd8d45cb0
```
`@instructions`

Select the `film_id` from film

`@hint`

Here's a hint for instruction 1: use `film_id`

`@sample_code`

```{sql}
SELECT * FROM film;
```

`@solution`

```{sql}
SELECT film_id FROM film;
```

`@sct`

```{python}
Ex().check_result()
```

***



```yaml
type: MultipleChoiceExercise
xp: 20
key: 216ce6d2106
```
`@question`

What do you think?

`@possible_answers`

- One
- Two
- Three
- Four

`@sample_code`

```{sql}
```

`@sct`

```{python}
msg1 = "Option 1 is wrong.."
msg2 = "Option 2 is correct, great!"
msg3 = "Option 3 is wrong.."
msg4 = "Option 4 is wrong.."
Ex().test_mc(2,[msg1,msg2,msg3,msg4])
```

***



```yaml
type: NormalExercise
xp: 30
key: f643f41db4
```
`@sample_code`

```{sql}
SELECT ___, ___ FROM ___;
```

`@instructions`

Select the `film_id` and `title` from `film`.

`@hint`

Here's a hint for instruction 3: Use `film_id, title`.

`@solution`

```{sql}
SELECT film_id, title FROM film
```

`@sct`

```{python}
Ex().check_result()
```

***



```yaml
type: NormalExercise
xp: 40
key: -1489013679
```
`@instructions`

Select all columns from `film`.

`@sample_code`

```{sql}
SELECT ___ FROM ___;
```

`@solution`

```{sql}
SELECT * FROM film
```

`@sct`

```{python}
Ex().check_result()
```

***



```yaml
type: NormalExercise
xp: 50
key: b78ff98e7e
```
`@instructions`

Get all columns from `film`, but just get 5 rows.

`@hint`

Here's a hint for task 5: Use `LIMIT 5`.

`@sample_code`

```{sql}
___
```

`@solution`

```{sql}
SELECT * FROM film LIMIT 5
```

`@sct`

```{python}
Ex().check_result()
```
