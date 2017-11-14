# Gamification

To enable DataCamp’s gamification features, you have to specify one or more skills and a number of experience points for each exercise. A `MultipleChoiceExercise` or `VideoExercise` typically gets `50` xp points, a `NormalExercise` normally gets `100` experience points. The skill that you attribute to your exercise depends on its contents. Have a look at the header of this interactive R exercise:

    ## Scatter plot

    ```yaml
    type: NormalExercise
    lang: r
    xp: 100
    skills: 1,4
    ```

    ... _rest of exercise omitted_

This interactive exercise earns the student 100 xp for the R skill (1) and the visualization skill (4) after successfully completing the exercise. The student can check the earned XP on his or her personal profile.

If the student asks for the hint, 30 percent of the exercise's XP will be deducted; if the student asks for the solution, all XP will be deducted. The student can come back after 24 hours to try again and earn full XP again. As soon as you finish an exercise, DataCamp's databases will consider it completed, irrespective of the xp that you earn. It's hence perfectly possible to finish an entire course and earn a certificate, but to earn no experience points.

At the moment, the following skills, with their corresponding skills ids are available on DataCamp:

| Skill                     | Skill id |
|---------------------------|----------:|
| R Programming             | 1        |
| Python Programming        | 2        |
| Data Handling             | 3        |
| Data Manipulation         | 4        |
| Reporting                 | 5        |
| Machine Learning          | 6        |
| Statistical Modeling      | 7        |
| Importing & Cleaning Data | 8        |