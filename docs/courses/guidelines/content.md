# Course Content

We designed our learning platform and product to [realize a vision](https://medium.com/datacamp/datacamp-the-plan-7ff04346fd6b). Content plays a central role in user experience. The main objective of these guidelines is to ensure that all the content we develop is in sync with this vision and provides our users with the best possible user experience. All of these guidelines are driven by research into the factors that maximized student engagement in our 150+ desktop courses.

## Courses

Shorter courses are more digestible and have higher completion rates. We aim for courses to be completable within 4 hours. The following guidelines are in place to ensure that courses enable learners to apply their learning as quickly as possible.

- A course should consist of 4 chapters.
- A chapter should consist of 3-4 lessons.
- A course should consist of 44 - 60 exercises.

As a reminder, each lesson is comprised of a video followed by 2-4 exercises. 

## Chapters

Completing a chapter gives the user a sense of success. In particular, the first chapter should be short and concise, as it sets the tone for the course, and is at the top of the funnel. The following guidelines are in place to ensure that chapters are short and can be completed in 30-45 minutes.

- Chapter 1 should consist of 3 lessons with a total 8 - 12 exercises (recommended is 10).
- Chapters 2 - 4 should consist of 10 - 16 exercises (recommended is 15).

## Exercises

The title of an exercise needs to be concise and fit within a line in the interface. 

- All Exercises should have a title of length 5 - 50 characters (recommended is 30)

Interactive coding exercises are the most commonly used exercise type on the platform. We have 3 types of coding exercises - `NormalExercise`, `TabExercise`, and `BulletExercise` - each of which consists of seven components: __Context__, __Instructions__, __Pre_exercise_code__, __Sample_code__, __Solution__, __Hint__, and __SCT__. 

It's essential to understand the interplay between these components, specifically: The Context, Instructions, and Sample Code, and Solution.

#### Context

This is the high-level description of an exercise which provides details on what the learning objective of the exercise is, what the student is about to solve, and **why**. Any relevant background information goes in here. The Context should reference the preceding video (or coding) exercise as much as possible, and avoid directly restating things from the video, except in cases where a reminder or reference may be useful, such as a function definition. Students have just spent 2-4 minutes watching the video, so it’s important to get them coding quickly.

#### Instructions

These are the specific steps a student must follow to solve a coding exercise. There is a balance between providing too much information and not enough: As a general rule of thumb, instructions in the first half of a course or chapter should provide more guidance to students compared to the second half.

Consider the following instruction:

- Write a function to calculate the set of nodes that are shared between two nodes.
- Write a function called `shared_partition_nodes()` that takes in 3 arguments - a graph `G`, `node1`, `node2` - and returns the set of nodes that are shared between `node1` and `node2`.

The first instruction is too vague and open ended for a student to successfully solve, while the second provides the function name, arguments, and return values expected, giving the student a clear understanding of what is required. 

**Instructions must be written in the form of bullets**. Each instruction generally corresponds to one line of code. There may be multiple ways to solve an exercise, but because we only have one solution script, allowing the student too much flexibility should be avoided. This makes it easier for us to provide useful feedback when students make mistakes. 
 
 #### Solution Code
 
This is the Solution for the exercise, which students can ask for if they are stuck. This is also the code against which the student's submission is compared by DataCamp's feedback system.

#### Sample Code

This is a faded out version of the Solution Code, which students must fill out in order to complete the exercise. How much code to fade out is a function of how guided the instructions are. Exercises should not just be about "filling in the blanks", and ideally, students should be challenged to write nearly complete lines of code themselves.

Note that comments in DataCamp exercises are not like comments in general coding. Here, comments are intended to be abbreviated instructions, providing a structure to the code that helps students map the (bulleted) instructions to the code that they need to write.
 
At a high level, our guidelines for coding exercises boil down to the following key points:

- Concise context.
- No more than 4 instructions per exercise.
- No more than 15 lines of solution code (including comments) per exercise.

More specific guidelines listed in the following sections.

### NormalExercise

__Context__

We want learners to dive into the interactive portion of an exercise as quickly as possible. Keeping the context short helps achieve this goal. The following guidelines are in place to ensure that the context fits well within a page and a part of the instructions are already visible.

- A NormalExercise should have assignment text of length 30 - 780 characters (recommended is 540)
- At least 40% of NormalExercises in a course should have assignment text that are within the recommended 540 characters.

__Instructions__

Our data shows that the length of instructions is a big driver of completion rates. Longer instructions often mean that the exercise is trying to do too much. This results in lower ratings, higher percentage of users asking for hints and solutions, leading to a sub-optimal learning experience. The following guidelines are in place to ensure that instructions are concise.


- A NormalExercise should have instructions of length 30 - 480 characters (recommended is 360)
- A NormalExercise should have 1-4 bulleted instructions (recommended is 3).
- At least 40% of NormalExercises in a course should have instructions that are within the recommended 360 characters.

Limiting the number of instructions will limit the number of things a user is required to do to complete the exercise. The character limits are in place to ensure that instructions fit well within a page and allow users to complete them without much scrolling.

__Hints__

Hints help learners complete an exercise, when they are stuck. It is important that hints are concise and don't distract the user. The following guidelines are in place to ensure that hints are concise.

- A NormalExercise should have hints of length 30 - 360 characters (recommended is 270).
- A NormalExercise should have between 1-4 bulleted hints (recommended is 3).
- At least 40% of NormalExercises in a course should have hints that are within the recommended 270 characters. 

__Code__

On a 13" screen, the learning interface displays 15 lines of code in the editor. It would be ideal if the code fits within the editor and a user does not have to scroll to reveal additional code. The following guidelines are in place to ensure that code is visible without additional scrolling.

- A NormalExercise should have sample code between 2 - 15 lines (recommended is 10).
- A NormalExercise should have solution code between 2 - 15 lines (recommended is 10)).
- At least 40% of NormalExercises in a course should have sample code that are within the recommended 10 lines.
- At least 40% of NormalExercises in a course should have solution code that are within the recommended 10 lines.
- **Comments in the sample and solution code must match.**

__Submission Correctness Tests__

Submission correctness tests are the tests which verify whether the solution a student has submitted is correct. If you are interested, you can read the technical details [here](https://authoring.datacamp.com/courses/exercises/technical-details/sct.html).

**DataCamp Content Developers write these tests. As an instructor, you are only required to write success messages for your exercises.**

### BulletExercise

BulletExercises are perfect to help users learn by repetition or faded learning. The guidelines below ensure that the overall length of a bullet exercise is in line with that of a normal exercise. It also ensures that the bullet exercises appear in a visually appealing manner.

- A BulletExercise should have context of length 10 - 600 characters (recommended is 300).
- A BulletExercise should have 2 - 4 sub-exercises (recommended is 3).
- A BulletExericse should have subexercises that have instructions of length 10 - 120 characters (recommended is 60).

### TabExercise

TabExercises are perfect to help users learn to combine multiple concepts together. For example, an exercise combining multiple dplyr verbs. The guidelines below ensure that the overall length of a tab exercise is in line with that of a normal exercise. It also ensures that the tab exercises appear in a visually appealing manner.

- A TabExercise should have context of length 10 - 780 characters (recommended is 540).
- A TabExercise should have 2 - 4 sub-exercises (recommended is 3).
- A TabExercise should have subexercises that have instructions of length 10 - 240 characters (recommended is 120).

## Multiple Choice Exercises

We have two types of Multiple Choice Exercises:

### MultipleChoiceExercise

Here, a Shell/Console is available for the student to use. 

- A MultipleChoiceExercise should have context of length 30 - 600 characters (recommended is 540).
- A MultipleChoiceExercise should have options of length 10 - 300 characters (recommended is 240, this is the aggregate length across all options in the exercise).
- A MultipleChoiceExercise should have between 3 - 5 options (recommended is 4).

### PureMultipleChoiceExercise

Here, there is no Shell/Console available for the student to use. The guidelines are the same as for MultipleChoiceExercises.

*Please note* that we prefer to limit the number of multiple choice questions in a course to no more than 3 per chapter. We also do not allow back to back multiple choice questions. This ensures learners do most of their learning by doing in our coding exercises. Multiple choice questions in which students have to do some coding in the console to identify the solution are preferred to purely conceptual multiple choice questions.
