# Step 3.2 - Example exercises

Write at least a dozen example exercises from the course. Each exercise should contain the learning objectives for that exercise, the instructions for the students, and the solution code that you expect the students to write.

## Examples

From a course on Google Sheets. This describes the learning objective, and includes all the instructions and solution. It also provides notes on the which chapter and lesson the exercise will appear in, and what the other exercises in the lesson will contain.

Ch2 L1 Log transformations

Learning objective: Students understand how to perform log transformations on data.

- Rescale the nominal geocentric distance into astronomical units by dividing by [149597870.7](https://en.wikipedia.org/wiki/Astronomical_unit). (Write this in a cell below the dataset, so students have to practice fixed references.)
- Take a log 10 transformation of these numbers.
- For comparison, take the natural log of these numbers.

**Solution**

1. Write the formula `=D2 / $D$15`.
1. Drag down the column.
1. Write the formula `=LOG10(I2)`.
1. Drag down the column.
1. Write the formula `=LN(I2)`.
1. Drag down the column.

Other exercises in lesson 2.1: Exp, sqrt, and abs transformations of data columns.

From a course on tree-based models. This is explicit about the objective, the instructions, and the solution code.

In this exercise, you'll evaluate the classifier you trained in the previous exercise.

Instructions:

1. Call the `.score()` method of the `dtc` classifier and pass it the parameters `X_test` and `y_test`. Assign the obtained value to `dtc_score`.
1. Call the `.score()` method of the `bgc` classifier and pass it the parameters `X_test` and `y_test`. Assign the obtained value to `bgc_score`.
1. Print out `dtc_score` and `bgc_score` separately.

**Solution**

```python
dtc_score = dtc.score(X_test, y_test)
bgc_score = bgc.score(X_test, y_test)

print(dtc_score)
print(bgc_score)
```


## FAQs

### How many exercises should I write?

By the end of this step it should be clear, both to you and your Curriculum Lead, 

1. how to split the course into four or five chapters,
1. how much content will go into each chapter, and
1. how to divide those chapters up into lessons.

If in doubt, write more lessons.

### What's a chapter and what's a lesson?

See the [terminology and structure](/courses/design/#terminology-and-structure) guidance.

### Which exercises should I write?

You need to include

1. a mix of exercises on all the topics from the course,
1. any exercises that involve technical challenges (long run times, calls to external APIs, etc.),
1. any exercises which you think might be tricky to fit into the DataCamp format.

### How big should the exercise be? 

Each exercise should make the student complete one to four instructions, which roughly corresponds to writing one to four lines of code. Exercises can also contain "scaffolding code" that runs before the student sees the exercise, or appears when the exercise begins. In total, you should have 12 lines of code or less in an exercise.

## Good ideas

### Spread the example exercises throughout the course

In order to be able to discern the flow of the course, it is necessary to example exercises from every chapter. (Having Chapter 1 fleshed out completely, but having nothing from the other chapters is not very useful.) 

### Label the exercises with positions

Once you've written all your example exercises, it can be useful to go back and try to label them with the chapter and lesson that they will be part of.

### Make a note of the contents of the other exercises 

To ensure that you have an appropriate amount of content in the course (44 to 60 exercises), make a note of ideas for the other  exercises that you aren't writing down here.


## Common problems and their solutions

### Unclear flow

If you don't have a strong sense of direction for what the course will contain overall, it can be difficult to write example exercises to fill it. It can sometimes help to alternate between writing example exercises and writing the course flow in Step 4.

### Monster exercises

One of the strongest predictors of the completion rate of exercises is the length of that exercise: shorter exercises high higher completion rates. Do not try to cram too much into each exercise. If in doubt, split a large exercise into two or three smaller exercises. If that makes the course have too many exercises, that's OK &ndash; we can cut the final chapter and use it as the start of another course in the future. 



## How will this be reviewed?

This step will be reviewed by at least two people other than your Curriculum Lead, possibly including an external reviewer. They will look for the following points.

- Have you clearly described the learning objective?
- Does the exercise look contain a suitable amount of work for the student to do? (Not too little or too much.)
- Does the exercise look interesting?
- Is it an authentic task, that a real data scientist would perform?
- Is it idiomatic code?
- Are the concepts/theories/etc. communicated clearly?


