# Exercise blocks

Exercises may contain the following kinds of blocks:

| Block               | Video              | Normal             | MultipleChoice     | PureMultipleChoice |
|---------------------|-------------------:|-------------------:|-------------------:|-------------------:|
| `title`             | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `assignment`        | :white_check_mark: | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `instructions`      | :x:                | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `hint`              | :x:                | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `pre_exercise_code` | :x:                | :white_check_mark: | :white_check_mark: | :white_check_mark: |
| `sample_code`       | :x:                | :white_check_mark: | :x:                | :x:                |
| `solution`          | :x:                | :white_check_mark: | :x:                | :x:                |
| `sct`               | :x:                | :white_check_mark: | :white_check_mark: | :x:                |
| `possible_answers`  | :x:                | :x:                | :x:                | :white_check_mark: |
| `feedbacks`         | :x:                | :x:                | :x:                | :white_check_mark: |

> #### info::Note
> `TabExercise` and `BulletExercise` are not included in the comparison table because they are combinations of other exercise types.

- `title`: title of the exercise shown to students taking the course.
- `assignment`: describes the task the student is to solve.
- `instructions`: the actual question or task for the student. In the case of a `MultipleChoiceExercise`, the instructions list the options from which the student can choose.
- `hint`: a hint the student can request.
- `pre_exercise_code`: code run in the background when the exercise is loaded to load necessary libraries, define variables, etc.
- `sample_code`: starter code made available to the user at the beginning of the exercise.
- `solution`: a correct solution to an interactive exercise.  DataCamp's back end runs this code when building the course to check that the exercise's submission tests run correctly.
- `sct`: the exercise's submission correctness tests (described below).
- `video_link`: the link to the video (`VideoExercise` only).
- `aspect_ratio`: the aspect ratio (`VideoExercise` only).
- `possible_answers`: a list of possible answers and a correct answer (`PureMultipleChoiceExercise` only). See [How to create PureMultipleChoiceExercise](multiple-choice-exercise.md#pure-mce) for details.
- `feedbacks`: a list with feedback for each possible answer (`PureMultipleChoiceExercise` only). See [How to create PureMultipleChoiceExercise](multiple-choice-exercise.md#pure-mce) for details.
