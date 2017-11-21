# Bullet Exercise

![bullet-exercise](/images/BulletExercise.png)

A `BulletExercise`, similar to a [`TabExercise`](tab-exercise.md), allows an exercise to be presented as a series of smaller sub-exercises, which make them easier to attempt and solve. They are best suited to teach a single concept by focusing on its different aspects.

__Examples__

1. [Bullet Exercise in SQL](examples/md/sql/BulletExercise.md)
2. [Bullet Exercise in R](examples/md/r/BulletExercise.md)
3. [Bullet Exercise in Python](examples/md/python/BulletExercise.md)

Please read [this article](/courses/guides/tab-vs-bullet-exercises.html) to understand the distinction between `TabExercise` and `BulletExercise`, and learn when to use one of the over the other.

## Bullet Console Exercise

A `BulletConsole` exercise is just like a `BulletExercise`, but the subexercises are all (and all have to be) of the type `ConsoleExercise`. The state in between subexercises is preserved so that there is a sense of progression and buildup throughout the subexercises. This exercise type is currently supported only for shell courses (`lang: shell`).

![Bullet Console Exercise - Shell](/images/BulletConsoleExerciseShell.png)