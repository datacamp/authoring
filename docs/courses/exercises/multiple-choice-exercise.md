# Multiple Choice Exercises

There are two different types of multiple choice exercises: `MultipleChoiceExercise` and `PureMultipleChoiceExercise`.

## Multiple Choice Exercise

![Multiple Choice Exercise](/images/MultipleChoiceExerciseR.png)

A `MultipleChoiceExercise` shows the assignment, question, and options on the left, and a console on the right. Code is executed in a single process/environment.

### Example

This is an example taken from DataCamp's [Introduction to Python for Data Science](https://www.datacamp.com/courses/intro-to-python-for-data-science).  All blocks are explained in detail below the example listing.

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

#### Context

A `MultipleChoiceExercise` starts with `## Title`, followed by a `metadata` block and a context block that describes the exercise.

    ## When to use Python?

    ```yaml
    type: MultipleChoiceExercise
    lang: python
    xp: 50
    ```

    Python is a pretty versatile language. For which applications can you use Python?

#### Instructions

    `@instructions`
    - You want to do some quick calculations.
    - For your new business, you want to develop a database-driven website.
    - Your boss asks you to clean and analyze the results of the latest satisfaction survey.
    - All of the above.

#### Hints

    `@hint`
    Filip mentioned in the video that Python can be used to build practically any piece of software.

#### Pre Exercise Code

    `@pre_exercise_code`
    ```{python}
    # pec comes here
    ```

#### Submission Correctness Tests (SCT)

    `@sct`
    ```{python}
    msg1 = "Incorrect. Python can do simple and quick calculations, but it is much more than that!"
    msg2 = "Incorrect. There is a very popular framework to build database-driven websites (Django), but Python can do much more."
    msg3 = "Incorrect. Python is a powerful tool to do data analysis, but you can also use it for other ends."
    msg4 = "Correct! Python is an extremely versatile language."
    test_mc(4, [msg1, msg2, msg3, msg4])
    ```
    
    The `test_mc()` function is used to provide tailored feedback in a `MultipleChoiceExercise`. It varies slightly depending on the technology. The same test for an R course would be `test_mc(4, feedback_msgs = c(msg1, msg2, msg3, msg4))`, and for a Shell course, would be `Ex() >> test_mc(4, [msg1, msg2, msg3, msg4])`.
    
    Regardless of technology, the `test_mc()` function takes in two required arguments. The first encodes the correct response (option 4 in the above example), while the second required argument is a list of strings (or _vector_ of strings, in R exercises) of length equal to the number of possible options. Each string corresponds to the feedback message that learners would see if they were to select that option. It is encouraged to write informative feedback messages, as these provide an opportunity for you to correct any mistaken mental models learners may have and guide them towards the solution.
    

See also:
- [Exercises](/courses/exercises/README.md#exercise-blocks)  
- [Experience Points](/courses/xp.md)

## Pure Multiple Choice Exercise {#pure-mce}

![Pure Multiple Choice Exercise](/images/PlainMultipleChoiceExerciseR.png)

A `PureMultipleChoiceExercise` is a `MultipleChoiceExercise` question that does not display a console, i.e., does not have any coding.  Instead of using `test_mc` inside an `sct` block, you use a `feedbacks` block.

### Example

This chapter contains one `PureMultipleChoiceExercise`.  All of the blocks are explained in detail following the example listing.

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

#### Context

A `PureMultipleChoiceExercise` starts with `## Title`, followed by a `metadata` block and a context block that describes the exercise.

    ## Example of PureMultipleChoiceExercise

    ```yaml
    type: PureMultipleChoiceExercise 
    ```

    This is a Pure multiple choice exercise.

    What is the correct answer? It's B

#### Possible answers

This block lists the answers the student can choose from. The correct answer is surrounded by square brackets.

    `@possible_answers`

    - A
    - [B (correct one)]
    - C
    - D

#### Feedbacks

This block has a list corresponding to `@possible_answers` with feedback for each possible answer (including the correct one).

    `@feedbacks`

    - A is not correct
    - B is correct!
    - C is not correct
    - D is not correct

## Plain Multiple Choice Exercise

This exercise type is the same as a `MultipleChoiceExercise`, but without a console. However, it requires a backend session. This exercise type has been deprecated in favor of `PureMultipleChoice`, which loads faster and is easier to write.
