# Tab vs. Bullet Exercises

`TabExercise` and `BulletExercise` allow an exercise to be presented as a series of smaller sub-exercises, which make them easier to tackle. The table below shows the three key differences between the two types.


|Criterion     | Bullet          |  Tab             |
|:-------------|:----------------|:-----------------|
| Concepts     | Homogenous      | Heterogenous     |
| Relationship | Independent     | Dependent        |
| Length       | Short (1 Line)  | Long (> 2 lines) |


## Concepts

The first difference is the concepts they cover. The sub-exercises in a `BulletExercise` are homogenous and focus on one concept, whereas those in a `TabExercise` are heterogenous and help the learner understand how multiple concepts are combined.

## Dependence

The second difference is the relationship between tasks. The sub-exercises in a `BulletExercise` have instructions that are independent of each other and make sense as standalone exercises, whereas those in a `TabExercise` build on each other.

## Length

The third difference is length. The sub-exercises in a `BulletExercise` are displayed at the same time, so it is important to keep their instructions short. The sub-exercises in a `TabExercise`, on the other hand, are displayed one at a time, so they can be longer.

## Example 1: Selecting Multiple Columns

In this exercise, we want the learner to select multiple columns from a table. It involves a single concept, so we use a `BulletExercise`.

- Get the title of every film from the films table.
- Get the title and release_year for every film..
- Get the release year and country for every film.
- Get all columns from the films table.

## Example 2: Select, Filter and Order

Consider the following exercise:

> Get the title and release year of films released in 2000 or 2015, in the order they were released.
>
> ```sql
> SELECT title, release_year
> FROM films
> WHERE release_year IN (2000, 2015)
> ORDER BY release_year
> ```

This exercise requires the learner to apply the three concepts `SELECT`, `WHERE` and `ORDER BY`, so it is best expressed as a `BulletExercise`.

1. Get the `title` and `release` year of `films`.
2. Filter the results to only return films released in 2000 or 2015
3. Order the results by the release year.

Note how each task depends on the previous one and the solution code builds up step by step. By this point, we expect the user to have learned each of the individual concepts, so each task can be done with minimal guidance. To ensure that the user is not blocked at an intermediate step, we can provide hints. For example, a good hint for Task 1 could be:

```sql
SELECT ____, ____
FROM films;
```

A great way to bolster learning would be to follow this exercise with a `NormalExercise` like the one below.

> Get all details for all films except those released in 2015 and order them by release year.

this presents the learner with a similar task, but lets them reason figure out the complete logic on their own, which will help them retain what they have learned.

It is possible to take this one step forward by treating "`SELECT` and `ORDER BY`" as a single concept and giving the user a single `BulletExercise` to practice on:

1. Get all details for all films released in 2015 ordered by release year.
2. Get title for all films released after 2010 ordered in descending order of release year.
3. Get all details for all films EXCEPT those released in 2015 and order them by release year.

While this might seem to violate the principle of homogeneity, by this point this pattern is a single concept in the user's mind for the `BulletExercise` to reinforce.