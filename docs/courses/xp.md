## Experience Points (XP)

To enable DataCamp’s gamification features, you have to specify a number of experience points for each exercise. A `MultipleChoiceExercise` or `VideoExercise` typically gets 50 points, while a `NormalExercise` normally gets 100 points:

    ## Scatter plot

    ```yaml
    type: NormalExercise
    lang: r
    xp: 100

    …rest of exercise omitted…
    ```

30 percent of the exercise's XP will be deducted if the student asks for the hint, and all of the XP will be deducted if the student asks for the solution. As soon as you finish an exercise, DataCamp records it as completed, regardless of the XP that you earn. It is therefore possible (but not recommended) to finish an entire course and earn a certificate without earning any experience points.
