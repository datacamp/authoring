## XP

To enable DataCamp’s gamification features, you have to specify a number of experience points for each exercise. A `MultipleChoiceExercise` or `VideoExercise` typically gets `50` xp points, a `NormalExercise` normally gets `100` experience points:

    ## Scatter plot

    ```yaml
    type: NormalExercise
    lang: r
    xp: 100
    ```

    ... _rest of exercise omitted_

If the student asks for the hint, 30 percent of the exercise's XP will be deducted; if the student asks for the solution, all XP will be deducted. As soon as you finish an exercise, DataCamp's databases will consider it completed, irrespective of the xp that you earn. It's hence perfectly possible to finish an entire course and earn a certificate, but to earn no experience points.
