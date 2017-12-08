# Normal Exercise

A `NormalExercise` gives students some background information and instructions, then checks the code they submit and provides feedback.  The exercise and instructions are shown on the left, the code editor in the top right, and an interactive console for experimentation in the bottom right.  Code is executed in two processes/environments so that you can safely compare objects in them in the submission correctness tests.

[![img](/images/NormalExercise.png)](https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1?ex=3)

Information regarding the exercise or the dataset is stated in the `assignment` part; the actual tasks the student has to solve is outlined in the `instructions`. Behind the scenes, the workspace is prepared for the student’s actions using the `pre_exercise_code`. The student starts to code in the editor that is initialized with the `sample_code`. When the student is not able to solve the exercise, they can refer to the `hint` or look at the `solution`. Every time the student clicks the "Submit Code" button, their code is checked using the Submission Correctness Testing code (`sct`), which generates a feedback message.

| Block                | Description                                       |
|:---------------------|:--------------------------------------------------|
| `@instructions`      | Instructions                                      |
| `@hint`              | Hints                                             |
| `@pre_exercise_code` | Code to be run prior to initializing the exercise |
| `@sample_code`       | Sample code to provide to the user                |
| `@solution`          | Solution code for the exercise                    |
| `@sct`               | Submission correctness tests                      |

## Example

This chapter contains one `NormalExercise` for R.  Each block is described in detail following the example.

    ---
    title       : This is chapter 1
    description : This is chapter 1 description
    ---

    ## Interactive Exercise Title

    ```yaml
    type: NormalExercise
    lang: r
    xp: 100
    ```

    This basic exercise will challenge you to assign a variable in R.

    `@instructions`
    - Assign `5` to the variable `x` in the editor on the right.

    `@hint`
    Use `<-` for assignment.

    `@pre_exercise_code`
    ```{r}
    y <- 3
    ```

    `@sample_code`
    ```{r}
    # Assign 5 to the variable x
    ```

    `@solution`
    ```{r}
    # Assign 5 to the variable x
    x <- 5
    ```

    `@sct`
    ```{r}
    test_error()
    test_object("x",
                undefined_msg = "Make sure to define `x`!",
                incorrect_msg = "Have you correctly assigned 5 to `x`!")
    success_msg("Good job! Head over to the next exercise")
    ```

## Context

A `NormalExercise` starts with `## Title`, followed by a `metadata` block and a context block that describes the exercise.

    ### Interactive Exercise Title

    ```yaml
    type: NormalExercise
    lang: r
    xp: 100
    ```

    This basic exercise will challenge you to assign a variable in R.

## Instructions

    `@instructions`
    - Assign `5` to the variable `x` in the editor on the right.

## Hints

    `@hint`
    Use `<-` for assignment.

## Pre Exercise Code

    `@pre_exercise_code`
    ```{r}
    y <- 3
    ```

## Sample Code

    `@sample_code`
    ```{r}
    # Assign 5 to the variable x
    ```

## Solution

    `@solution`
    ```{r}
    # Assign 5 to the variable x
    x <- 5
    ```

## Submission Correctness Tests (SCT)

    `@sct`
    ```{r}
    test_error()
    test_object("x",
                undefined_msg = "Make sure to define `x`!",
                incorrect_msg = "Have you correctly assigned 5 to `x`!")
    success_msg("Good job! Head over to the next exercise")
    ```

See also:
- [Exercises](/courses/exercises/README.md#exercise-blocks) page.
- [Experience Points](/courses/xp.md)
