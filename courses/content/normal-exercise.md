# NormalExercise
A `NormalExercise` shows the exercise and instructions on the left, editor top right, and console bottom right. The code is executed in two processes/environments, so that you can easily compare objects in them in the submission correctness tests.

[![img](/images/NormalExercise.png)](https://campus.datacamp.com/courses/free-introduction-to-r/chapter-1-intro-to-basics-1?ex=3)

A `NormalExercise` is a traditional interactive exercise, where the student is expected to write code. Additional information regarding the exercise or the data set that is used is stated in the `assignment` part; the actual tasks the student has to solve through code are outlined in the `instructions`. Behind the scenes, the workspace is prepared for the student’s actions using the `pre_exercise_code`. The student starts to code in the editor that is initialized with the `sample_code`. When the student is not able to solve the exercise, he or she can refer to the `hint` or, ultimately, can peek at the `solution`. Every time the student hits the ‘Submit Code’ button, his or her code is checked for correctness using the submission correctness testing code (`sct`). This SCT generates a feedback message that depends on the input of the student.

 

| Block                | Description                                                               |
|:---------------------|:--------------------------------------------------------------------------|
| `@instructions`      | Instructions
| `@hint`              | Hints
| `@pre_exercise_code` | Code to be run prior to initializing the exercise.
| `@sample_code`       | Sample code to provide to the user.
| `@solution`          | Solution code for the exercise
| `@sct`               | Submission correctness tests.



## Context

A `NormalExercise` starts with a `## Title`, followed by a `metadata` block and a context block that describes the exercise.

{% codetabs name="Version 2", type="text" -%}

## Variable assignment 

```yaml
type: NormalExercise 
xp: 100 
```

A basic concept in (statistical) programming is called a **variable**. It allows you to 
store a value (e.g. 4) or an object.

{%- endcodetabs %}

## Instructions

{% codetabs name="Version 2", type="text" -%}

`@instructions`

- Assign the value 42 to the variable `x`. 
- Print the value of `x`.

{%- endcodetabs %}

## Hints

{% codetabs name="Version 2", type="text" -%}

`@hint`

- Look at how the value 4 was assigned to `my_variable`. 
- Use the `print` function.

{%- endcodetabs %}

## Pre Exercise Code

{% codetabs name="Version 2", type="text" -%}

`@pre_exercise_code`

```{r}
# no pec
```

{%- endcodetabs %}

## Sample Code

{% codetabs name="Version 2", type="text" -%}

`@sample_code`

```{r}
# Assign the value 42 to x
x <- 

# Print out the value of the variable x

```

{%- endcodetabs %}

## Solution

{% codetabs name="Version 2", type="text" -%}

`@solution`

```{r}
# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x
```

{%- endcodetabs %}

## Submission Correctness Tests (SCT)

{% codetabs name="Version 2", type="text" -%}

`@sct`

```{r}
test_object("x", 
  undefined_msg = "Make sure to define a variable `x`.",
  incorrect_msg = "Make sure that you assign the correct value to `x`."
) 
success_msg("Good job!")
```

{%- endcodetabs %}
