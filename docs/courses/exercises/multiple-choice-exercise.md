# Multiple Choice Exercises

There are two different types of `MultipleChoiceExercise`.

## Multiple Choice Exercise

![Multiple Choice Exercise](/images/MultipleChoiceExerciseR.png)

A `MultipleChoiceExercise` shows assignment, question, and options on the left, and console on the right. The code is executed only in a single process/environment.

### Complete example

This is an example taken from Datacamp [Introduction to Python for Data Science](https://www.datacamp.com/courses/intro-to-python-for-data-science) free course.
Following the example all blocks are going to be explained in detail.

{% codetabs name="Version 2", type="text" -%}
---
title_meta  : Chapter 1
title       : Python Basics
description : An introduction to the basic concepts of Python. Learn how to use Python both interactively and through a script. Create your first variables and acquaint yourself with Python's basic data types.
---

## When to use Python?

```yaml
type: MultipleChoiceExercise
lang: python
xp: 50
skills: 2
```

Python is a pretty versatile language. For which applications can you use Python?

`@instructions`
- You want to do some quick calculations.
- For your new business, you want to develop a database-driven website.
- Your boss asks you to clean and analyze the results of the latest satisfaction survey.
- All of the above.

`@hint`
Filip mentioned in the video that Python can be used to build practically any piece of software.

`@pre_exercise_code`
```{python}
# pec comes here
```

`@sct`
```{python}
msg1 = "Incorrect. Python can do simple and quick calculations, but it is much more than that!"
msg2 = "Incorrect. There is a very popular framework to build database-driven websites (Django), but Python can do much more."
msg3 = "Incorrect. Python is a powerful tool to do data analysis, but you can also use it for other ends."
msg4 = "Correct! Python is an extremely versatile language."
test_mc(4, [msg1, msg2, msg3, msg4])
```
{% endcodetabs %}

#### Context

A `MultipleChoiceExercise` starts with a `## Title`, followed by a `metadata` block and a context block that describes the exercise.

{% codetabs name="Version 2", type="text" -%}

## When to use Python?

```yaml
type: MultipleChoiceExercise
lang: python
xp: 50
skills: 2
```

Python is a pretty versatile language. For which applications can you use Python?

{%- endcodetabs %}

#### Instructions

{% codetabs name="Version 2", type="text" -%}

`@instructions`
- You want to do some quick calculations.
- For your new business, you want to develop a database-driven website.
- Your boss asks you to clean and analyze the results of the latest satisfaction survey.
- All of the above.

{%- endcodetabs %}

#### Hints

{% codetabs name="Version 2", type="text" -%}

`@hint`
Filip mentioned in the video that Python can be used to build practically any piece of software.

{%- endcodetabs %}

#### Pre Exercise Code

{% codetabs name="Version 2", type="text" -%}

`@pre_exercise_code`
```{python}
# pec comes here
```

{%- endcodetabs %}

#### Submission Correctness Tests (SCT)

{% codetabs name="Version 2", type="text" -%}

`@sct`
```{python}
msg1 = "Incorrect. Python can do simple and quick calculations, but it is much more than that!"
msg2 = "Incorrect. There is a very popular framework to build database-driven websites (Django), but Python can do much more."
msg3 = "Incorrect. Python is a powerful tool to do data analysis, but you can also use it for other ends."
msg4 = "Correct! Python is an extremely versatile language."
test_mc(4, [msg1, msg2, msg3, msg4])
```

{%- endcodetabs %}

> #### info::NOTE
> Detailed information about blocks and their usage can be found on [Exercise Blocks page](./README.md#exercise-blocks)  
> Detailed information about `xp` and `skills` can be found in [Gamification page](../../gamification.md)

## Pure Multiple Choice Exercise {#pure-mce}

![Pure Multiple Choice Exercise](/images/PlainMultipleChoiceExerciseR.png)

A `PureMultipleChoiceExercise` is a `MultipleChoiceExercise` question, but does not display a console. Moreover, instead of using `test_mc` inside an `sct` block, you can use a `feedbacks` block.

### Complete example

This is a chapter example with one `PureMultipleChoiceExercise`. Following the example all blocks are going to be explained in detail.

{% codetabs name="Version 2", type="text" -%}
---
title       : This is chapter with Pure Multiple Choice exercise
description : Yes! This chapter contains a Pure Multiple Choice exercise!
---

## Example of PureMultipleChoiceExercise

```yaml
type: PureMultipleChoiceExercise 
```

This is a Pure multiple choice exercise.

What is the correct answer? It's B

`@possible_answers`

- A
- [B (correct one)]
- C
- D

`@feedbacks`

- A is not correct
- B is correct!
- C is not correct
- D is not correct

{% endcodetabs %}

#### Context

A `PureMultipleChoiceExercise` starts with a `## Title`, followed by a `metadata` block and a context block that describes the exercise.

{% codetabs name="Version 2", type="text" -%}

## Example of PureMultipleChoiceExercise

```yaml
type: PureMultipleChoiceExercise 
```

This is a Pure multiple choice exercise.

What is the correct answer? It's B

{%- endcodetabs %}

#### Possible answers
A simple list of all possible answers student can choose from. The correct answer is surrounded by square bracket. (eg. `[B (correct one)]`)

{% codetabs name="Version 2", type="text" -%}

`@possible_answers`

- A
- [B (correct one)]
- C
- D

{%- endcodetabs %}

#### Feedbacks
A list which maps to "Possible answers" where you can provide customized feedback depending on the answer student has chosen.

{% codetabs name="Version 2", type="text" -%}

`@feedbacks`

- A is not correct
- B is correct!
- C is not correct
- D is not correct

{%- endcodetabs %}

> #### info::NOTE
> Detailed information about blocks and their usage can be found on [Exercise Blocks page](./README.md#exercise-blocks)  
> Detailed information about `xp` and `skills` can be found in [Gamification page](../../gamification.md)

## Plain Multiple Choice Exercise

It is the same as a `MultipleChoiceExercise`, but without a console. However, it requires a backend session. This exercise type will be deprecated in favor of `PureMultipleChoice`, which is simply a better version of the `PlainMultipleChoiceExercise` that loads faster, is easier to code up, but looks the exact same way to the end user.

> #### warning::NOTE
> This type of exercise is replaced by `PureMultipleChoice` exercise.

