# Normal Exercise
An interactive exercise, where the student is expected to submit code based on the assignment and instructions provided. The student’s submission is compared to the ideal solution with DataCamp’s autograder and appropriate feedback is generated.

A `NormalExercise` shows the exercise and instructions on the left, editor top right, and console bottom right. The code is executed in two processes/environments, so that you can easily compare objects in them in the submission correctness tests.

[![img](/images/NormalExercise.png)](https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1?ex=3)

Additional information regarding the exercise or the data set that is used is stated in the `assignment` part; the actual tasks the student has to solve through code are outlined in the `instructions`. Behind the scenes, the workspace is prepared for the student’s actions using the `pre_exercise_code`. The student starts to code in the editor that is initialized with the `sample_code`. When the student is not able to solve the exercise, he or she can refer to the `hint` or, ultimately, can peek at the `solution`. Every time the student hits the ‘Submit Code’ button, his or her code is checked for correctness using the submission correctness testing code (`sct`). This SCT generates a feedback message that depends on the input of the student. 

| Block                | Description                                                               |
|:---------------------|:--------------------------------------------------------------------------|
| `@instructions`      | Instructions
| `@hint`              | Hints
| `@pre_exercise_code` | Code to be run prior to initializing the exercise.
| `@sample_code`       | Sample code to provide to the user.
| `@solution`          | Solution code for the exercise
| `@sct`               | Submission correctness tests.


> #### info::NOTE
> Detailed information about blocks and their usage can be found on [Exercise Blocks page](./README.md#exercise-blocks)

## Complete example
Following is an complete example of a chapter containing one `NormalExercise` for `R` technology.
Each block is described in detail following this example.

{% codetabs name="Version 2", type="text" -%}
---
title       : This is chapter 1
description : This is chapter 1 description
---

## Interactive Exercise Title

```yaml
type: NormalExercise
lang: r
xp: 100
skills: 1,3
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
{%- endcodetabs %}

## Context

A `NormalExercise` starts with a `## Title`, followed by a `metadata` block and a context block that describes the exercise.

{% codetabs name="Version 2", type="text" -%}

### Interactive Exercise Title

```yaml
type: NormalExercise
lang: r
xp: 100
skills: 1,3
```

This basic exercise will challenge you to assign a variable in R.

{%- endcodetabs %}

## Instructions

{% codetabs name="Version 2", type="text" -%}
`@instructions`
- Assign `5` to the variable `x` in the editor on the right.
{%- endcodetabs %}

## Hints

{% codetabs name="Version 2", type="text" -%}
`@hint`
Use `<-` for assignment.

{%- endcodetabs %}

## Pre Exercise Code

{% codetabs name="Version 2", type="text" -%}

`@pre_exercise_code`
```{r}
y <- 3
```

{%- endcodetabs %}

## Sample Code

{% codetabs name="Version 2", type="text" -%}

`@sample_code`
```{r}
# Assign 5 to the variable x
```

{%- endcodetabs %}

## Solution

{% codetabs name="Version 2", type="text" -%}

`@solution`
```{r}
# Assign 5 to the variable x
x <- 5
```

{%- endcodetabs %}

## Submission Correctness Tests (SCT)

{% codetabs name="Version 2", type="text" -%}

`@sct`
```{r}
test_error()
test_object("x",
            undefined_msg = "Make sure to define `x`!",
            incorrect_msg = "Have you correctly assigned 5 to `x`!")
success_msg("Good job! Head over to the next exercise")
```

{%- endcodetabs %}

> #### info::NOTE
> Detailed information about blocks and their usage can be found on [Exercise Blocks page](./README.md#exercise-blocks)