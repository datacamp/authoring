# Content

The content of a course is organized into chapters, each of which consists of one or more exercises.

## Metadata

Similar to the `course.yml`, every chapter files start with a YAML header containing information about the chapter:

```
---
title    : Introdution to Basics
title_meta: Chapter 1
description: >
  In this chapter, you will take your first steps with R.
---
```


__title*__

Title of the chapter.


__description*__ 

Description of the chapter.

---

__free_preview__ 

If it is a paying course, whether this chapter is a free preview (typically the first chapter of a premium course is a free preview).

__attachments__

Generic way to include attachments. Typically used to include slides for the chapter, through slides_link. For example:

```yaml
attachments:
  slides_link: http
```

## Exercises

The YAML front-mattter is followed by exercises. The three most commonly used exercise types are:

__VideoExercise__ 

A tutorial video, explaining concepts and code that will be used in the exercises that follow. VideoExercises are typically only part of premium courses that require a subscription.

__NormalExercise__

An interactive exercise, where the student is expected to submit code based on the assignment and instructions provided. The student’s submission is compared to the ideal solution with DataCamp’s autograder and appropriate feedback is generated.

__MultipleChoiceExercise__

 Provides the student with a set of possible answers. Based on the exercise information and the instruction, the student is expected to select one (and only one) answer. During a multiple choice exercise, the user can still experiment in the R console.


A full list of all exercise types supported by the platform is provided below.

### Core Types

| Type                          | Description                                                                |
|:------------------------------|:---------------------------------------------------------------------------|
| [`VideoExercise`](./video-exercise.md) | Shows video                                                       |
| [`NormalExercise`](./normal-exercise)  | Shows exercise, instructions, code editor and console             |
| [`MultipleChoiceExercise`](./multiple-choice-exercise.md) | Shows multiple choice question and console     |
| [`PureMultipleChoiceExercise`](./multiple-choice-exercise.md#pure-mce) | Shows multiple choice question    |
| [`PlainMultipleChoiceExercise`]()  |                                                                       |
| [`ConsoleExercise`](./console-exercise) |                                                                  |
| [`TabExercise`](./tab-exercise)  |                                                                         |
| [`BulletExercise`](./bullet-exercise) |                                                                    |

### Special Types

| Type                          | Description                                            |
|:-----------------------------:---------------------------------------------------------|
|[`SingleProcessExercise`]()    | `NormalExercise`, but no solution code is executed in a parallel environment/process    |
|[`ExamExercise`]()	            | `NormalExercise`, but limits number of submissions to THREE, and provides no option to view solution |
|[`RcppExercise`]()	            | `NormalExercise`, where Submit script runs sourceCpp on `DC_CODE` saved to `script.cpp`
|[`BokehServerExercise`]()      | `NormalExercise`, with extra features to support interactive bokeh visualizations |
| [`MarkdownExercise`](./markdown-exercise) |   For supporting the `Rmarkdown` course                                 | [`SwirlExercise`](./swirl-exercise) |                                                                   |



#### References

1. https://github.com/datacamp/campus-app/wiki/Exercise-Types




