# Writing Exercise-level Learning Objectives

Decide upon a *single* measurable learning objective for an exercise. The learning objective of an exercise is typically that the student understands some syntax, a workflow, a concept, or a result.

## Examples

### Syntax

Typically this means learning how to use a function. For example,

> The student can calculate model predictions using `predict()`, knowing that this function takes a model object and a data frame as arguments.

> The student knows that Python classes are initialized with a method named `__init__()`, and that this method takes `self` as the first argument.

### Workflow

This usually means knowing what order several functions should be called in. It can also refer to more abstract workflow ideas. For example,

> The student can calculate groupwise summary statistics with dplyr, by first calling `group_by()` then calling `summarize()`.

> The student can articulate these modeling workflow steps: Split the data into training and testing sets, then train the model on the training set, then test the predictions on the testing set.

### Concepts

An abstract idea, that can be either statistical, programming, or domain-specific.

> The student understands the definition of autocorrelation.

> The student can predict what happens when an error occurs inside a try-block.

> The student can calculate how depreciation affects the value of a thing over time.

### Results

An interesting thing found in the dataset being explored.

> The student can interpret that on average R programmers live 8 years longer than SAS programmers.

> The student can interpret that Python programmers are 10 times more likely to own a pet snake than non-Python programmers.

## FAQs

### Can I have multiple learning objectives?

In general, an exercise should teach the student exactly one thing. If you want to have multiple learning objectives, it's a warning sign that you are trying to cram too much into a single exercise. That said, if you have several simple learning objectives, a multi-step exercise can be appropriate.

## Common problems and their solutions

### The exercise doesn't test the learning objectives

It is important that the exercise meets the objective. One common danger is that you start writing code and somehow the exercise ends up being completely different to what you originally intended. This can be fine, but make sure that you are teaching the things that students will need to know for future exercises.

## Good ideas

### Write it down

You are not currently obliged to write the learning objective down. It can very useful to articulate it though. Write it in HTML comments at the start of the exercise.

```
<!--
LO: The student knows how to ...
-->
```

## See Also

There is some related advice, including more pedagogic theory, in [Course-level learning objectives](courses/design/overview-objectives.md).
