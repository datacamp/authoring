# SQL Bullet exercise example

    ## SELECT DISTINCT

    ```yaml
    type: BulletExercise 
    lang: sql 
    xp: 100 
    ```

    Often your results will include many duplicate values. If you want to select all the unique values from a column, you can use the `DISTINCT` keyword.

    This might be useful if, for example, you're interested in knowing which languages are represented in the `films` table:

    ```sql
    SELECT DISTINCT language
    FROM films;
    ```

    Remember, you can check out the data in the tables by clicking on the tabs to the right under the editor!

    `@pre_exercise_code`

    ```{python}
    connect('postgresql', 'films')
    set_options(visible_tables = ['films', 'roles'])
    ```

    `@sample_code`

    ```{sql}
    ```

    ***

    ## Unique Countries

    ```yaml
    type: NormalExercise
    xp: 30
    ```

    `@instructions`

    Get all the unique countries represented in the `films` table.

    `@solution`

    ```{sql}
    SELECT DISTINCT country
    FROM films;
    ```

    `@hint`

    ```
    SELECT DISTINCT ___
    FROM ___;
    ```

    `@sct`

    ```{python}
    # SCT comes here, see sqlwhat.readthedocs.io
    ```

    ***

    ```yaml
    type: NormalExercise
    xp: 30
    ```

    `@instructions`

    Get all the different film certifications from the `films` table.

    `@solution`

    ```{sql}
    SELECT DISTINCT certification
    FROM films;
    ```

    `@hint`

    ```
    SELECT DISTINCT ___
    FROM ___;
    ```

    `@sct`

    ```{python}
    # SCT comes here, see sqlwhat.readthedocs.io
    ```

    ***

    ```yaml
    type: NormalExercise
    xp: 30
    ```

    `@instructions`

    Get the different types of film roles from the `roles` table.

    `@solution`

    ```{sql}
    SELECT DISTINCT role
    FROM roles;
    ```

    `@hint`

    ```
    SELECT DISTINCT ___
    FROM ___;
    ```

    `@sct`

    ```{python}
    # SCT comes here, see sqlwhat.readthedocs.io
    ```
