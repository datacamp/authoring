# Tab Exercise

![tab-exercise](/images/TabExercise.png)

A `TabExercise` presents an exercise as a series of short sub-exercises, which makes each step easier. They are best suited to problems whose solution required several steps in sequence.

1. [Tab Exercise in SQL](examples/md/sql/TabExercise.md)
2. [Tab Exercise in R](examples/md/r/TabExercise.md)
3. [Tab Exercise in Python](examples/md/python/TabExercise.md)

Please read [this article](/courses/guides/tab-vs-bullet-exercises.html) to understand how to choose between a `TabExercise` and a `BulletExercise`.

## Authoring

Every sub-exercise in a `TabExercise` has its own `instruction`, `hint`, `solution`, and `sct` blocks. If you specify these blocks for the parent exercise, they will *not* be used. However, the `sample_code` block can be specified at either the sub-exercise level or the parent exercise level. 

- If `sample_code` is specified at the parent exercise level, it will only be used to initialize the first sub-exercise. Each following sub-exercises will use the submission for the previous exercise for initialization.
- If `sample_code` is specified at the sub-exercise level, it will be used for initialization each time a sub-exercise is completed.

### Pre-Exercise Code

`pre_exercise_code` defined at the exercise level is executed once before the start of *each* sub-exercises.
However, `pre_exercise_code` in a `TabConsoleExercise` in a `shell` course is executed only once
at the start of the sequence of sub-exercises.

### XP

Experience points are assigned at the sub-exercise level and work the same way as in a normal exercise: the learner loses 30% of the XP for using the hint, and all of the XP for using the solution. The total XP of an exercise is the sum of the XP for its sub-exercises.

### Example


    ## WHERE AND OR (2)

    ```yaml
    type: TabExercise 
    lang: sql 
    xp: 100 
    ```

    Write a query to get the title and release year of films released
    in the 90s which were in French or Spanish and which took in more
    than $2M.

    `@pre_exercise_code`

    ```{python}
    connect('postgresql', 'films')
    set_options(visible_tables = ['films'])
    ```

    `@sample_code`

    ```{sql}
    ```

    ***

    ### Get Films Released in 90s

    ```yaml
    type: NormalExercise
    xp: 30
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
    # Hint
    ```

    `@sct`

    ```{python}
    # SCTs
    ```

    ***

    ### Filter for French/Spanish Films

    ```yaml
    type: NormalExercise
    xp: 30
    ```

    `@instructions`

    Now, build on your query to filter the records to only include
    French or Spanish language films.

    `@solution`

    ```{sql}
    SELECT title, release_year
    FROM films
    WHERE (release_year >= 1990 AND release_year < 2000)
    AND (language = 'French' OR language = 'Spanish');
    ```

    `@hint`

    ```
    # Hint
    ```

    `@sct`

    ```{python}
    # SCT
    ```

## Tab Console Exercise

A `TabConsoleExercise` is basically restricted form of `TabExercise`, and is currently supported only for Shell courses.

| `TabExercise` | `TabConsoleExercise` |
|---------------|----------------------|
| Can be a mixture of exercise types | Can only use `ConsoleExercise` |
| Runs sub-exercises as if they were independent | Execution is chained |

If you want to reset a student's workspace each time, use a `TabExercise`. If you want them to retain the results of their actions, use a `TabConsoleExercise`.

![Tab Console Exercise](/images/TabConsoleExerciseShell.png)

__Examples__

1. [Tab Console Exercise in Shell](examples/md/shell/TabConsoleExercise.md)
