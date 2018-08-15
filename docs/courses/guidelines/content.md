# Course Content

We designed our learning platform and product to realize a vision. Content plays a central role in user experience. The main objective of these guidelines is to ensure that all the content we develop is in sync with this vision and provides our users with the best possible user experience. All of these guidelines are driven by research into the factors that maximized student engagement in our 150+ desktop courses.

## Courses

Shorter courses are more digestible and have higher completion rates. We aim for courses to be completable within 4 hours. The following guidelines are in place to ensure that courses enable learners to apply their learning as quickly as possible.

- A course should should consist of 4 chapters.
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

### NormalExercise

Interactive coding exercises are the most commonly used exercise type on the platform. They consist of seven components: __assignment__, __instructions__, __pre_exercise_code__, __sample_code__, __solution__, __hint__, and __sct__. In this section, we will discuss guidelines and rules for these components.

__Instructions__

Our data shows that the length of instructions is a big driver of completion rates. Longer instructions often mean that the exercise is trying to do too much. This results in lower ratings, higher percentage of users asking for hints and solutions, leading to a sub-optimal learning experience. The following guidelines are in place to ensure that instructions are concise.


- A NormalExercise should have instructions of length 30 - 480 characters (recommended is 360)
- A NormalExercise should have 1-4 bulleted instructions (recommended is 3).
- At least 40% of NormalExercises in a course should have instructions that are within the recommended 360 characters.

Limiting the number of instructions will limit the number of things a user is required to do to complete the exercise. The character limits are in place to ensure that instructions fit well within a page and allow users to complete them without much scrolling.

__Assignment__

We want learners to dive into the interactive portion of an exercise as quickly as possible. Keeping the assignment text short helps achieve this goal. The following guidelines are in place to ensure that assignment text fits well within a page, and a part of the instructions are already visible.

- A NormalExercise should have assignment text of length 30 - 780 characters (recommended is 540)
- At least 40% of NormalExercises in a course should have assignment text that are within the recommended 540 characters.

__Hints__

Hints help learners complete an exercise, when they are stuck. It is important that hints are concise and don't distract the user. The following guidelines are in place to ensure that hints are concise.

- A NormalExercise should have hints of length 30 - 360 characters (recommended is 270).
- A NormalExercise should have between 1-4 bulleted hints (recommended is 3).
- At least 40% of NormalExercises in a course should have hints that are within the recommended 270 characters. 

__Code__

On a 13" screen, the learning interface displays 15 lines of code in the editor. It would be ideal if the code fits within the editor and a user does not have to scroll to reveal additional code. The following guidelines are in place to ensure that code is visible without additional scrolling.

- A NormalExercise should have sample code between 1 - 15 lines (recommended is 10).
- A NormalExercise should have solution code between 1 - 15 lines (recommended is 10)).
- At least 40% of NormalExercises in a course should have sample code that are within the recommended 10 lines.
- At least 40% of NormalExercises in a course should have solution code that are within the recommended 10 lines.

__Submission Correctness Tests__

Submission correctness tests are the tests which verifies whether the solution a student has submitted is correct.

DataCamp Content Developers write these tests. As an instructor, you are only required to write success messages for your exercises.

### MultipleChoiceExercise

The following guidelines are in place to ensure that MultipleChoiceExercises are concise and can be completed by a user within 2 - 3 minutes.

- A MultipleChoiceExercise should have assignment text of length 30 - 600 characters (recommended is 540).
- A MultipleChoiceExercise should have options of length 10 - 300 characters (recommended is 240, this is the aggregate length across all options in the exercise).
- A MultipleChoiceExercise should have between 3 - 5 options (recommended is 4).

*Please note* that we prefer to limit the number of multiple choice questions in a course to no more than 3 per chapter. We also do not allow back to back multiple choice questions. This ensures learners do most of their learning by doing in our coding exercises. Multiple choice questions in which students have to do some coding in the console to identify the solution are preferred to purely conceptual multiple choice questions.

### BulletExercise

BulletExercises are perfect to help users learn by repetition or faded learning. The guidelines below ensure that the overall length of a bullet exercise is in line with that of a normal exercise. It also ensures that the bullet exercises appear in a visually appealing manner.

- A BulletExercise should have assignment text of length 10 - 600 characters (recommended is 300).
- A BulletExercise should have 2 - 4 sub-exercises (recommended is 3).
- A BulletExericse should have subexercises that have instructions of length 10 - 120 characters (recommended is 60).

### TabExercise

TabExercises are perfect to help users learn to combine multiple concepts together. For example, an exercise combining multiple dplyr verbs. The guidelines below ensure that the overall length of a tab exercise is in line with that of a normal exercise. It also ensures that the tab exercises appear in a visually appealing manner.

- A TabExercise should have assignment text of length 10 - 780 characters (recommended is 540).
- A TabExercise should have 2 - 4 sub-exercises (recommended is 3).
- A BulletExericse should have subexercises that have instructions of length 10 - 240 characters (recommended is 120).
