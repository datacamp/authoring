# Exercises

Every course is [organized into chapters](https://authoring.datacamp.com/courses/design/#terminology-and-structure) consisting of one or more exercises.  If you created a course repository through [www.datacamp.com/teach](https://www.datacamp.com/teach), your chapter files will already contain some DataCamp exercises to start from.

DataCamp supports variety of different exercises, each of which consists of several blocks.  Some types of blocks are used by many exercises, while others are exercise-specific.  Whenever possible, choose a coding exercise over a non-coding exercise: people come to us for hands-on instruction, and having them use what they're learning right away improves retention.

Whatever types of exercises you choose, it is essential that they be *reproducible*: anyone with the right software must be able to re-run them and get the answer that you expect.  The "anyones" you must initially satisfy are your Curriculum Lead, our Content Developers (who will be in charge of final edits and of deploying your course), and our automated back end (which must be able to run your code and its correctness tests unsupervised).  This requirement means that it isn't practical to use live data feeds in exercises, since their contents may change outside your control.  Instead, unless you have explicitly agreed it with your Curriculum Lead, you should always rely on archived datasets (either those included with the packages you are teaching or those you have explicitly included in your lesson).

## Exercise Types {#exercise-types}

These types of exercises are currently supported:

| Type                                                                 | Description |
|:---------------------------------------------------------------------|:------------|
| [`VideoExercise`](video-exercise.md)                                 | Displays a video exercise |
| [`NormalExercise`](normal-exercises)                                  | Instructions, exercise, code editor, and console |
| [`MultipleChoiceExercise`](multiple-choice-exercise.md)              | Multiple choice question and console |
| [`PureMultipleChoiceExercise`](multiple-choice-exercise.md#pure-mce) | Multiple choice question without a console |
| [`TabExercise`](tab-exercise.md)                                     | A series of connected sub-exercises |
| [`BulletExercise`](bullet-exercise.md)                               | A series of connected sub-exercises |   


![DataCamp for Teachers - Dashboard](/images/exercise-decision-tree.png)
_What Exercise Should I Use?_
