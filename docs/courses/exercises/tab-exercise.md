# SQL Tab exercise example

    # Tab Exercise

    ![tab-exercise](/images/TabExercise.png)

    A `TabExercise`, similar to a [`BulletExercise`](bullet-exercise.md), allows an exercise to be presented as a series of smaller sub-exercises, which make them easier to attempt and solve. They are best suited when the solution to an exercise involves bringing together multiple concepts that are related.

    1. [Tab Exercise in SQL](examples/md/sql/TabExercise.md)
    2. [Tab Exercise in R](examples/md/r/TabExercise.md)
    3. [Tab Exercise in Python](examples/md/python/TabExercise.md)


    Please read [this article](../guides/tab-vs-bullet-exercises.html) to understand the distinction between `TabExercise` and `BulletExercise`, and learn when to use one of the over the other.

    ## Authoring

    Every sub-exercise in a `TabExercise` or a `BulletExercise` has its own `instruction`, `hint`, `solution`, and `sct` blocks. If you specify these blocks for the parent exercise, they will NOT be used. 

    ### Sample Code

    The `sample_code`, however, can be specified at the sub-exercise level or at the parent exercise level. 

    - If `sample_code` is specified at the parent exercise level, it will only be used to initialize the editor for the first subexercise. In the subexercises that follow, your submission for the previous subexercise is used to initialize your script. 
    - If `sample_code` is specified at the subexercise level, it will be used to initialize the editor every time you complete a subexercise.

    ### Pre Exercise Code

    The `pre_exercise_code`, that is defined at the exercise level, is executed each time you complete a subexercise and you are sent to the next subexercise.

    ### XP

    Experience Points (XP) are assigned at the subexercise level and work the same way as in a normal exercise: you loose 30% if you use the hint, and the additional 70% if you use the solution. The total XP of a parent exercise is calculated by summing the XP you earned for all the subexercises.

    ### Example


    {% codetabs name="Version 2", type="text" -%}

    ## WHERE AND OR (2)

    ```yaml
    type: TabExercise 
    lang: sql 
    xp: 100 
    ```

    You will Write a query to get the title and release year of films released 
    in the 90s which were in French or Spanish and which took in more than $2M.

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

    {% endcodetabs %}

    ## Tab Console Exercise

    A `TabConsoleExercise` is just like a `TabExercise`, but the subexercises are all (and all have to be) of the type `ConsoleExercise`. The state in between subexercises is preserved so that there is a sense of progression and buildup throughout the subexercises. This is currently supported only for shell courses (`lang: shell`)

    ![Tab Console Exercise](/images/TabConsoleExerciseShell.png)

    __Examples__

    1. [Tab Console Exercise in Shell](examples/md/shell/TabConsoleExercise.md)
