# Bullet Exercise

![bullet-exercise](/images/BulletExercise.png)

A `BulletExercise` allows an exercise to be presented as a series of smaller sub-exercises, which makes each step easier. They are best suited to teach a single concept by focusing on its different aspects.  The `pre_exercise_code` block for a `BulletExercise` is executed once for each bullet, so that they are checked independently.

__Examples__

1. [Bullet Exercise in SQL](examples/md/sql/BulletExercise.md)
2. [Bullet Exercise in R](examples/md/r/BulletExercise.md)
3. [Bullet Exercise in Python](examples/md/python/BulletExercise.md)

Please read [this article](/courses/guides/tab-vs-bullet-exercises.html) to understand how to choose between a `BulletExercise` and a `TabExercise`.

## Bullet Console Exercise

A `BulletConsole` exercise is just like a `BulletExercise`, but its sub-exercises must all be `ConsoleExercise`s. State is preserved between sub-exercises to give a sense of progression through the overall exercise, i.e., the `pre_exercise_code` is executed once at the start of the sequence, rather than for each bullet. This exercise type is currently supported only for Shell courses.

![Bullet Console Exercise - Shell](/images/BulletConsoleExerciseShell.png)
