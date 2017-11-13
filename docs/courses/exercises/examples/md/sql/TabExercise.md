## WHERE AND OR (2)

```yaml
type: TabExercise 
lang: sql 
xp: 100 
key: ecc1838fc7
```

You now know how to select rows that meet __some__ but not __all__ conditions by combining `AND` and `OR`.

For example, the following query selects all films that were released in 1994 or 1995 which had a rating of PG or R.

```
SELECT title
FROM films
WHERE (release_year = 1994 OR release_year = 1995)
AND (certification = 'PG' OR certification = 'R');
```

<hr>

Now you'll write a query to get the title and release year of films released in the 90s which were in French or Spanish and which took in more than $2M gross.

It looks like a lot, but you can build the query up one step at a time to get comfortable with the underlying concept in each step. Let's go!

`@pre_exercise_code`

```{python}
connect('postgresql', 'films')
set_options(visible_tables = ['films'])
```

`@sample_code`

```{sql}
```

***

```yaml
type: NormalExercise
xp: 30
key: 510b387baa
```


`@instructions`

Get the title and release year for films released in the 90s.

`@solution`

```{sql}
SELECT title, release_year
FROM films
WHERE release_year >= 1990 AND release_year < 2000;
```

`@hint`

```
SELECT ___, ___
FROM ___
WHERE ___ >= 1990 AND ___ < 2000;
```

`@sct`

```{python}
sel = check_node('SelectStmt')

title = test_column('title', msg='Did you select the `title` column?')

release_year = test_column('release_year', msg='Did you select the `release_year` column?')

from_clause = sel.check_field('from_clause')

where_clause = sel.check_field('where_clause')

where_release_year1 = where_clause.has_equal_ast(sql='release_year >= 1990', start='expression', exact=False, msg='Did you check the `release_year` correctly in your `WHERE` clause?')

where_release_year2 = where_clause.has_equal_ast(sql='release_year < 2000', start='expression', exact=False, msg='Did you check the `release_year` correctly in your `WHERE` clause?')

Ex().test_correct(check_result(), [
    from_clause,
    where_release_year1,
    where_release_year2,
    title,
    release_year,
    test_has_columns(),
    test_ncols(),
    test_error()
])
```

***

```yaml
type: NormalExercise
xp: 30
key: 969ed73542
```

`@instructions`

Now, build on your query to filter the records to only include French or Spanish language films.

`@solution`

```{sql}
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish');
```

`@hint`

```
SELECT ___, ___
FROM ___
WHERE (___ >= 1990 AND ___ < 2000)
AND (___ = 'French' OR ___ = 'Spanish');
```

`@sct`

```{python}
sel = check_node('SelectStmt')

title = test_column('title', msg='Did you select the `title` column?')

release_year = test_column('release_year', msg='Did you select the `release_year` column?')

from_clause = sel.check_field('from_clause')

where_clause = sel.check_field('where_clause')

where_release_year1 = where_clause.has_equal_ast(sql='release_year >= 1990', start='expression', exact=False, msg='Did you check the `release_year` correctly in your `WHERE` clause?')

where_release_year2 = where_clause.has_equal_ast(sql='release_year < 2000', start='expression', exact=False, msg='Did you check the `release_year` correctly in your `WHERE` clause?')

where_language1 = where_clause.has_equal_ast(sql="language = 'French'", start='expression', exact=False, msg='Did you check the `language` correctly in your `WHERE` clause?')

where_language2 = where_clause.has_equal_ast(sql="language = 'Spanish'", start='expression', exact=False, msg='Did you check the `language` correctly in your `WHERE` clause?')


Ex().test_correct(check_result(), [
    from_clause,
    where_release_year1,
    where_release_year2,
    where_language1,
    where_language2,
    title,
    release_year,
    test_has_columns(),
    test_ncols(),
    test_error()
])
```

***

```yaml
type: NormalExercise
xp: 30
key: d961856c7a
```

`@instructions`

Finally, restrict the query to only return films that took in more than $2M gross.

`@solution`

```{sql}
SELECT title, release_year
FROM films
WHERE (release_year >= 1990 AND release_year < 2000)
AND (language = 'French' OR language = 'Spanish')
AND gross > 2000000;
```

`@hint`

```
SELECT ___, ___
FROM ___
WHERE (___ >= 1990 AND ___ < 2000)
AND (___ = '___' OR ___ = '___')
AND ___ > ___;
```

`@sct`

```{python}
sel = check_node('SelectStmt')

title = test_column('title', msg='Did you select the `title` column?')

release_year = test_column('release_year', msg='Did you select the `release_year` column?')

from_clause = sel.check_field('from_clause')

where_clause = sel.check_field('where_clause')

where_release_year1 = where_clause.has_equal_ast(sql='release_year >= 1990', start='expression', exact=False, msg='Did you check the `release_year` correctly?')

where_release_year2 = where_clause.has_equal_ast(sql='release_year < 2000', start='expression', exact=False, msg='Did you check the `release_year` correctly in your `WHERE` clause?')

where_language1 = where_clause.has_equal_ast(sql="language = 'French'", start='expression', exact=False, msg='Did you check the `language` correctly in your `WHERE` clause?')

where_language2 = where_clause.has_equal_ast(sql="language = 'Spanish'", start='expression', exact=False, msg='Did you check the `language` correctly in your `WHERE` clause?')

where_gross = where_clause.has_equal_ast(sql='gross > 2000000', start='expression', exact=False, msg='Did you check the `gross` correctly in your `WHERE` clause?')

Ex().test_correct(check_result(), [
    from_clause,
    where_release_year1,
    where_release_year2,
    where_language1,
    where_language2,
    where_gross,
    title,
    release_year,
    test_has_columns(),
    test_ncols(),
    test_error()
])
```