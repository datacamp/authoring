# Writing Hints

This page describes how to write the hints that students can ask for to help them complete the exercise.

## Examples

From [Repetition](https://campus.datacamp.com/courses/string-manipulation-in-r-with-stringr/pattern-matching-with-regular-expressions?ex=8) in "String Manipulation in R with stringr". The hints refer to knowledge that the students already have from previous exercises.

> - The input to the `negated_char_class()` is the same as that of `char_class()` you used in the previous exercise.
> - Wrapping `exactly()` around a pattern is the same as specifying the pattern in between `START %R%` and `%R% END` like you've done before.

From [Specifying the Microwave Oven class](https://campus.datacamp.com/courses/object-oriented-programming-in-r-s3-and-r6/using-r6?ex=2) in "Object-Oriented Programming in R: S3 & R6". The hints focus on anticipating students' mistakes (misspelling; wrong assignment operator) rather than providing solution code.

> - The class name is case sensitive. Did you spell `"MicrowaveOven"` correctly?
> - Use `=` for assigning arguments within the call to `R6Class`. For example, `private = list()`, not `private <- list()`.
> - Similarly, use `power_rating_watts = 800`, not `power_rating_watts <- 800`.


## FAQs

### How much help should each hint provide?

A good heuristic is that the hint should get the student half way to the answer.

### How many hints should I provide?

One hint per instruction is a good starting point. For easier exercises, this may reveal too much of the solution, and for harder exercises it may not cover all the common problems that students have, so you are free to use your judgement and have greater or fewer hints if necessary.


## Good ideas

### Jog students' memories

A common reason that students may fail to be able to complete an exercise is that they have forgotten something they learned in a previous exercise. You can use the hint to jog their memory.

### Anticipate a problem

Often there are a few specific things that students will get wrong. You can use the hint to address these things.


## Common problems and their solutions

### Providing the answer

It can be tempting to solve the problem of an exercise being too hard by providing a chunk of the solution in the hint. If an exercise is reduced to a "copy and paste" problem, the student doesn't learn much, so this is discouraged. In general, try to phrase the hint so some thinking is still required to solve the exercise.

### Repeating the instruction

The opposite problem is that hints can simply repeat or rephrase information in the instructions, without providing any new help. Since students have to spend XP to see the hint, this is a big source of frustration.
