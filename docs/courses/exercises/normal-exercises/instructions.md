# Writing `NormalExercise` Instructions

This page gives advice on how to write good instructions for `NormalExercise`s.

## Examples

From [Choosing is not losing! The select verb](https://campus.datacamp.com/courses/dplyr-data-manipulation-r-tutorial/chapter-two-select-and-mutate?ex=3) in "Data Manipulation in R with dplyr". The function that is the focus of the exercise, `select()`, is explicitly mentioned, however the student must engage their brain to figure out what code to write.

> - Use `select()` to print out a `tbl` that contains only the columns `ActualElapsedTime`, `AirTime`, `ArrDelay` and `DepDelay` of `hflights`.
> - Print out a `tbl` with the columns `Origin` up to and including `Cancelled` of `hflights`.
> - Find the most concise way to select: columns `Year` up to and including `DayOfWeek`, columns `ArrDelay` up to and including `Diverted`. You can examine the order of the variables in `hflights` with `names(hflights)` in the console.

From [Computing the covariance](https://campus.datacamp.com/courses/statistical-thinking-in-python-part-1/quantitative-exploratory-data-analysis?ex=14) in "Statistical Thinking in Python (Part 1)". The function that is the exercise's focus, `np.cov()` is explicitly mentioned; but functions that have been seen before, like `print()`, are not.

> - Use `np.cov()` to compute the covariance matrix for the petal length (`versicolor_petal_length`) and width (`versicolor_petal_width`) of *I. versicolor*.
> - Print the covariance matrix.
> - Extract the covariance from entry `[0,1]` of the covariance matrix. Note that by symmetry, entry `[1,0]` is the same as entry `[0,1]`.
> - Print the covariance.


## FAQs

### What if there are several ways to solve an exercise?

If the learning objective of the exercise is to teach the use of a particular function or bit of code, your instructions should ask the student to use that. In general however, you should be too prescriptive about how the student solves the task. This is particularly true in courses targeting more [advanced students](courses/design/personas.html#advanced-alex).

## Good ideas

### Keep it simple

The guidelines limit you to 4 instructions and 480 characters (less than two Tweets). If you are struggling to keep within this limit, it's an indication that there is too much content in the exercise. Consider splitting it into two.

### Ween the students off details

The first time new syntax is introduced, it's OK to give a detailed, hand-holding instruction. If a similar task is performed later on in the course, try to give less detail in the instructions.

### Make sure the student is prepared

Any code that the student has to write should have been introduced at least twice before the student has to use it (in a video, and in the assignment text).

### Mention the setup

If the pre-exercise code creates any variables or plots, it can be helpful to mention this fact at the start of the instructions.

## Common problems and their solutions

### Being too vague

Instructions need to be very specific about what they want the students to do. Vague instruction make it harder to test that the student has the correct answer, and can lead to frustration.

### Copy and paste

One common response to an exercise being too hard is to provide instructions that allow the student to copy and paste the answer. At this point, the student isn't learning anything, so this is discouraged.

