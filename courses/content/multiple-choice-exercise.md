# Multiple Choice Exercise

There are four variants of the multiple choice exercise.

## Multiple Choice Exercise

![Multiple Choice Exercise](/images/MultipleChoiceExerciseR.png)

A `MultipleChoiceExercise` shows assignment, question, and options on the left, and console on the right. The code is executed only in a single process/environment. It requires a backend session.

## Pure Multiple Choice Exercise {#pure-mce}

![Pure Multiple Choice Exercise](/images/PlainMultipleChoiceExerciseR.png)

A `PureMultipleChoiceExercise` is a `MultipleChoiceExercise` question, but does not display a console, or require a backend session. Moreover, instead of using `test_mc` inside an `sct` block, you can use a `feedbacks` block.

{% codetabs name="Version 2", type="text" -%}

## Example of PureMultipleChoiceExercise

```yaml
type: PureMultipleChoiceExercise 
key: d4ae489740
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

{%- language name="Version 1", type="text" -%}

--- type:PureMultipleChoiceExercise key:d4ae489740

## Example of PureMultipleChoiceExercise

This is a Pure multiple choice exercise.

What is the correct answer? It's B

*** =possible_answers

- A
- [B (correct one)]
- C
- D

*** =feedbacks

- A is not correct
- B is correct!
- C is not correct
- D is not correct

{% endcodetabs %}

For some courses, it takes long for the session to initialize, such as the `sparklyr` course. A `MultipleChoiceExercise` or a `PlainMultipleChoiceExercise` in a course like this needs a session, so you have to wait several seconds before you can just answer. With the `PureMultipleChoiceExercise`, you can hit the Submit Answer button immediately.

Moreover, some people might want to create a course with just videos and multiple choice exercises. With the `PureMultipleChoiceExercise` they don't need any notion about the DataCamp session. They don't have to worry about any of the backend logic that is going on.


## Plain Multiple Choice Exercise

It is the same as a `MultipleChoiceExercise`, but without a console. However, it requires a backend session. This exercise type will be deprecated in favor of `PureMultipleChoice`, which is simply a better version of the `PlainMultipleChoiceExercise` that loads faster, is easier to code up, but looks the exact same way to the end user.

## RStudio Multiple Choice Exercise

![RStudio Multiple Choice Exercise](/images/RStudioMultipleChoiceExercise.png)




