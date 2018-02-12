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

## Tab Stacked Normal Exercise {#tab-stacked-normal-exercise}

A `TabStackedNormalExercise` is a shorter variation of a `TabExercise` which consists of numerous `NormalExercises`. The UI look is therefore identical to the `TabExercise` while the authoring format has been shortened and it's more convenient to remember and author.

![Tab Stacked Normal Exercise](/images/TabStackedNormalExercise.png)
<center><i>UI of <code>TabStackedNormalExercise</code> is identical to <code>TabExercise</code></i></center>


Following is an example on how to author this type of exercise:

    ---
    title: TabStackedNormalExercise
    description: An example of TabStackedNormalExercise
    ---

    ## This is the title

    ```yaml
    type: TabStackedNormalExercise
    xp: 100
    key: aec26f6a30
    subkeys:
    - 1
    - 2
    - 3
    - 4
    subxps:
    - 20
    - 20
    - 20
    - 20
    ```

    This is an assignment

    `@pre_exercise_code`

    ```{r, eval=FALSE}
    # code for preparing the learning environment
    ```

    `@instructions`

    - Instructions for first Normal Exercise
    - Instructions for second Normal Exercise
    - Instructions for third Normal Exercise
    - Instructions for fourth Normal Exercise

    `@hint`

    - Hint for first Normal Exercise
    - Hint for second Normal Exercise
    - Hint for third Normal Exercise
    - Hint for fourth Normal Exercise

    `@sample_code`

    ```{r}
    #' @step
    # Sample code for first Normal Exercise

    #' @step
    # Sample code for second Normal Exercise

    #' @step
    # Sample code for third Normal Exercise

    #' @step
    # Sample code for fourth Normal Exercise

    ```

    `@solution`

    ```{r}
    #' @step
    # Solution for first Normal Exercise

    #' @step
    # Solution for second Normal Exercise

    #' @step
    # Solution for third Normal Exercise

    #' @step
    # Solution for fourth Normal Exercise
    ```

    `@sct`

    ```{r}
    #' @step
    # Sct for first Normal Exercise
    test_object(...)

    #' @step
    # Sct for second Normal Exercise
    test_object(...)

    #' @step
    # Sct for third Normal Exercise
    test_correct(...)

    #' @step
    # Sct for fourth Normal Exercise
    test_function(...)
    success_msg("Good job!")
    ```

### Authoring

The purpose of this section is to enumerate and explain all the building blocks of `TabStackedNormalExercise` exercise:

#### Title

An exercise starts with a title:

    ## This is a title

#### YAML header

A header is required in order to initialize the exercise:

    ```yaml
    type: TabStackedNormalExercise
    xp: 100
    key: aec26f6a30
    subkeys:
    - 1
    - 2
    - 3
    - 4
    subxps:
    - 20
    - 20
    - 20
    - 20
    ```

It consists of:
- `type` set to `TabStackedNormalExercise`.
- `xp` amount of xp student gains for resolving this exercise as a whole.
- `key` a unique key (on chapter level) for this exercise.
- `subkeys` which are the keys assigned to the `NormalExercise\s` being created.
- `subxps` which is the xp for each of the `NormalExercise\s` being created.

Both `subkeys` and `subxps` should always have the same length.

#### Instructions

List of instructions for each of the Normal Exercises being created.

    `@instructions`

    - Instructions for first Normal Exercise
    - Instructions for second Normal Exercise
    - Instructions for third Normal Exercise
    - Instructions for fourth Normal Exercise

In this example four `NormalExercise\s` are going to be created where the first one will have the instructions set to `Instructions for first Normal Exercise` while the last will have instructions set to `Instructions for fourth Normal Exercise`.

#### Hint

List of hints for each of the Normal Exercises being created.

    `@hint`

    - Hint for first Normal Exercise
    - Hint for second Normal Exercise
    - Hint for third Normal Exercise
    - Hint for fourth Normal Exercise

In this example four `NormalExercise\s` are going to be created where the first one will have the hint set to `Hint for first Normal Exercise` while the last will have instructions set to `Hint for fourth Normal Exercise`.

#### Solution

Solutions to each of the Normal Exercises being created, where the each `NormalExercise` inherits the solution from all the previous `NormalExercise`'s.

    `@solution`

    ```{r}
    #' @step
    # Solution for first Normal Exercise

    #' @step
    # Solution for second Normal Exercise

    #' @step
    # Solution for third Normal Exercise

    #' @step
    # Solution for fourth Normal Exercise
    ```

In this example first `NormalExercise` solution would be:

    `@solution`

    ```{r}
    # Solution for first Normal Exercise
    ```
while last `NormalExercise` solution would be:

    `@solution`

    ```{r}
    # Solution for first Normal Exercise

    # Solution for second Normal Exercise

    # Solution for third Normal Exercise

    # Solution for fourth Normal Exercise
    ```

#### SCT (Submission correctness test)

SCT for each of the Normal Exercises being created, where the each `NormalExercise` inherits the SCT's from all the previous `NormalExercise`'s.

    `@sct`

    ```{r}
    #' @step
    # Sct for first Normal Exercise
    test_object(...)

    #' @step
    # Sct for second Normal Exercise
    test_object(...)

    #' @step
    # Sct for third Normal Exercise
    test_correct(...)

    #' @step
    # Sct for fourth Normal Exercise
    test_function(...)
    success_msg("Good job!")
    ```

In this example first `NormalExercise` SCT would be:

    `@sct`

    ```{r}
    # Sct for first Normal Exercise
    test_object(...)
    ```
while last `NormalExercise` SCT would be:

    `@sct`

    ```{r}
    # Sct for first Normal Exercise
    test_object(...)

    # Sct for second Normal Exercise
    test_object(...)

    # Sct for third Normal Exercise
    test_correct(...)

    # Sct for fourth Normal Exercise
    test_function(...)
    success_msg("Good job!")
    ```

#### Sample code

Sample code is a combination of all `solution` blocks from previous `NormalExercise\s` and a `sample_code` block for the current `NormalExercise`.

    `@sample_code`

    ```{r}
    #' @step
    # Sample code for first Normal Exercise


    #' @step
    # Sample code for second Normal Exercise


    #' @step
    # Sample code for third Normal Exercise


    #' @step
    # Sample code for fourth Normal Exercise

    ```

    `@solution`

    ```{r}
    #' @step
    # Solution for first Normal Exercise

    #' @step
    # Solution for second Normal Exercise

    #' @step
    # Solution for third Normal Exercise

    #' @step
    # Solution for fourth Normal Exercise
    ```

As per example above the first `NormalExercise` `sample_code` would be: 

    `@sample_code`

    ```{r}
    # Sample code for first Normal Exercise

    ```

While the third `NormalExercise` `sample_code` would be:

    `@sample_code`

    ```{r}
    # Solution for first Normal Exercise

    # Solution for second Normal Exercise

    # Sample code for third Normal Exercise

    ```

While the fourth `NormalExercise` `sample_code` would be:

    `@sample_code`

    ```{r}
    # Solution for first Normal Exercise

    # Solution for second Normal Exercise

    # Solution for third Normal Exercise

    # Sample code for fourth Normal Exercise

    ```

Sample code has a special behavior of combining `solution` and `sample_code` in order to create a `NormalExercise`.

> #### warning::Important
> Number of `subkeys` and `subxps` should alway match the amount of list items in `hint` and `instructions` while also matching the amount of steps defined in `sample_code`, `sct` and `solution` blocks.
> In case there is a mismatch in any of above-mentioned keys and blocks a descriptive error will be thrown on the course build time.