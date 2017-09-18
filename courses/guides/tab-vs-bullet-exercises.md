# Tab vs. Bullet Exercises

`TabExercise` and `BulletExercise` allow an exercise to be presented as a series of smaller sub-exercises, which make them easier to attempt and solve. There are three key differences between the two exercises types as indicated in the table below.


| Criterion    | Bullet          |  Tab             |
| -------------|:----------------|:-----------------|
| Concepts     | Homogenous      | Heterogenous     |
| Relationship | Independent     | Dependent        |
| Length       | Short (1 Line)  | Long (> 2 lines) |


__Concepts__

The first difference is on the concepts covered in the exercises. The sub-exercises in a `BulletExercise` are homogenous and focus on ONE concept, whereas those in a `TabExercise` are heterogenous, and help the learner understand how multiple concepts combine together.

__Dependence__

The second difference is the relationship between tasks. The sub-exercises in a `BulletExercise` have instructions that are __independent__ of each other and make sense as standalone exercises, whereas those in a `TabExercise` are __dependent__ on each other and represent a buildup of sorts, where each sub-exercise requires the learner to build on top of the previous one.

__Length__

The third difference is of length. The sub-exercises in a `BulletExercise`  should ideally have really short instructions. As they display all tasks at the same time, it is really important to keep the instructions short to reduce the cognitive load imposed. The sub-exercises in a `TabExercise` on the other hand typically have longer instructions, and this works since they are displayed only one at a time.

__Example 1: Selecting MULTIPLE Columns__

In this exercise, we want the learner to learn how to select multiple columns from a table. It involves a single concept and so we should use a `BulletExercise`.

Get the title of every film from the films table.
Get the title and release_year for every film..
Get the release year and country for every film.
Get all columns from the films table.

__Example 2: Select, filter and order!__

Consider the following exercise

> Get the title and release year of films released in 2000 or 2015, in the order they were released.

```sql
SELECT title, release_year
FROM films
WHERE release_year IN (2000, 2015)
ORDER BY release_year
```

In this exercise, we want the learner to apply three concepts `SELECT`, `WHERE` and `ORDER BY`. So, it is best suited to be expressed a `BulletExercise`.

1. Get the `title` and `release` year of `films`.
2. Filter the results to only return films released in 2000 or 2015
3. Order the results by the release year.

Note how each task __depends__ on the previous one and the __solution__ code builds on top of each other. By this point, we expect the user to have learnt each of the individual concepts, and so each task can do with minimal guidance. To ensure that the user does not get stuck in a task, we can provide hints that provide more guidance. For example, a good hint for Task 1 could be

```sql
SELECT ____, ____
FROM films;
```

A great way to bolster learning would be to follow this exercise with a `NormalExercise` shown below

> Get all details for all films except those released in 2015 and order them by release year.

The idea here is to present the learner with a similar task, but let them reason out the complete logic of the exercise, which should work much better for retention.

It is possible to take this one step forward and consider `SELECT and ORDER BY` as a single concept at this point and use `BulletExercise` to allow the user to practice.

1. Get all details for all films released in 2015 ordered by release year.
2. Get title for all films released after 2010 ordered in descending order of release year.
3. Get all details for all films EXCEPT those released in 2015 and order them by release year.

While this might seem to violate the principle of homogeneity, one can argue that at this point, this pattern is a single concept that we expect the user to have learnt, and the bullet exercise provides a nice way for them to repeatedly practice it to etch it into their muscle memory.