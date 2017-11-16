# Exercises

As we have learned when examining the [course data structure](../data-structure.md) the content of a course is organized into chapters, each of which consists of one or more exercises.

If you've created a course repository through [www.datacamp.com/teach](https://www.datacamp.com/teach), your chapter file will already contain some DataCamp exercises to start from. There's four types of exercises: a `VideoExercise`, a `NormalExercise`, `MultipleChoiceExercise` and  `PureMultipleChoiceExercise`. These different types of exercises have some blocks in common; other blocks are type-specific.

### Exercise Types

Following are currently supported types of exercises you can created on Datacamp platform.

| Type                          | Description                                                                |
|:------------------------------|:---------------------------------------------------------------------------|
| [`VideoExercise`](./video-exercise.md) | Displays a video exercise                                                       |
| [`NormalExercise`](./normal-exercise)  | Shows exercise, instructions, code editor and learn by doing console             |
| [`MultipleChoiceExercise`](./multiple-choice-exercise.md) | Shows multiple choice question and console     |
| [`PureMultipleChoiceExercise`](./multiple-choice-exercise.md#pure-mce) | Shows multiple choice question    |   

### Exercise blocks {#exercise-blocks}

Creating exercises is based around building blocks. Most of the exercises are sharing the blocks. However there are exercises which have specific block types.

| Block             | Video | Normal | MultipleChoice | PureMultipleChoice |
|-------------------|-------:|--------:|----------------:|--------------------:|
| `title`             |  :white_check_mark:     |  :white_check_mark:      | :white_check_mark:               | :white_check_mark:                   |
| `assignment`        | :white_check_mark:      |   :white_check_mark:     |    :white_check_mark:            |   :white_check_mark:                 |
| `instructions`      | :x:      |  :white_check_mark:      | :white_check_mark:               | :white_check_mark:                   |
| `hint`              | :x:     |  :white_check_mark:      | :white_check_mark:               |  :white_check_mark:                  |
| `pre_exercise_code` | :x:    |  :white_check_mark:      | :white_check_mark:               | :white_check_mark:                   |
| `sample_code`       |  :x:     | :white_check_mark:       |  :x:              | :x:                    |
| `solution`          | :x:      | :white_check_mark:       |  :x:              | :x:                   |
| `sct`               | :x:      |  :white_check_mark:      | :white_check_mark:               | :x:                   |
| `video_link`        | :white_check_mark:      | :x:       | :x:               | :x:                    |
| `aspect_ratio`      | :x:      | :x:       | :x:                | :white_check_mark:                    |
| `possible_answers`        | :x:      | :x:       | :x:               | :white_check_mark:                    |
| `feedbacks`      | :x:      | :x:       | :x:                | :white_check_mark:                    |

#### Block explanations

##### `title`
Title of the exercise which is going to be visible to the student when taking the course.

##### `assignment`
Assignment provides a task description student should solve.

##### `instructions`
The actual question or task for the student. In the case of a `MultipleChoiceExercise`, the instructions list the options from which the student can choose.

##### `hint`
Hint that can help the student to correctly solve the exercise.

##### `pre_exercise_code`
Code that is run in the background when the exercise is loaded. It typically loads the necessary libraries and defines variables to allow the student to start solving the exercise right away.

##### `sample_code`
Initial code that is available to the user at the onset of the exercise, to better guide the student to a solution or to limit typing efforts.

##### `solution`
Correct solution to an interactive exercise. How the exercise should have been solved ideally. However, other approaches that also lead to a correct result should be selected.

##### `sct`
Both `NormalExercises` and `MultipleChoiceExercises` require you to write so-called Submission Correctness Tests (`SCT`), to assess whether the student gave the correct answer Writing good SCTs is a challenge; that's why programming language-specific packages have been written to make this process as easy as possible. For R, there's the [testwhat](https://github.com/datacamp/testwhat) package ([GitHub wiki](https://github.com/datacamp/testwhat/wiki)). For Python, there's the [pythonwhat](https://github.com/datacamp/pythonwhat) package ([GitHub wiki](https://github.com/datacamp/pythonwhat/wiki)).

##### `video_link`
Only applicable to the `VideoExercise` pointing to the link of the Vimeo video.

##### `aspect_ratio`
Only applicable to the `VideoExercise` defining the video aspect ratio.

##### `possible_answers`
Only applicable to `PureMultipleChoiceExercise` defining a list of possible answers and a correct answer. ([How to create PureMultipleChoiceExercise](./multiple-choice-exercise.md#pure-mce))

##### `feedbacks`
Only applicable to `PureMultipleChoiceExercise` defining a list of possible feedbacks based on the chosen possible answer. ([How to create PureMultipleChoiceExercise](./multiple-choice-exercise.md#pure-mce))

> #### info::Note
> Each exercise contains the format which should be used in order to create them. It's always recommended to use the `Version 2` of the authoring format.


