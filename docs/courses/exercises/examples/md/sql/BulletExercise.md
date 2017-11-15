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
    sel = check_node('SelectStmt')

    distinct = sel.check_field('pref').has_equal_ast("Don't forget to use the `DISTINCT` keyword!")

    country = test_column('country', msg='Did you select the `country` column?')

    from_clause = sel.check_field('from_clause').has_equal_ast('Is your `FROM` clause correct?')

    Ex().test_correct(check_result(), [
        from_clause,
        distinct,
        test_has_columns(),
        test_ncols(),
        test_error()
    ])
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
    sel = check_node('SelectStmt')

    distinct = sel.check_field('pref').has_equal_ast("Don't forget to use the `DISTINCT` keyword!")

    certification = test_column('certification', msg='Did you select the `certification` column?')

    from_clause = sel.check_field('from_clause').has_equal_ast('Is your `FROM` clause correct?')

    Ex().test_correct(check_result(), [
        from_clause,
        certification,
        distinct,
        test_has_columns(),
        test_ncols(),
        test_error()
    ])
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
    sel = check_node('SelectStmt')

    distinct = sel.check_field('pref').has_equal_ast("Don't forget to use the `DISTINCT` keyword!")

    role = test_column('role', msg='Did you select the `role` column?')

    from_clause = sel.check_field('from_clause').has_equal_ast('Is your `FROM` clause correct?')

    Ex().test_correct(check_result(), [
        from_clause,
        distinct,
        role,
        test_has_columns(),
        test_ncols(),
        test_error()
    ])
    ```
