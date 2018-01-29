# Content Guidelines

We designed our learning platform and product to realize a vision. Content plays a central role in user experience. The main objective of these guidelines are to ensure that all the content we develop is in sync with this vision and provides our users with the best possible user experience.

## Courses

Shorter courses have higher completion rates. A reasonable target for courses should be that they are completable within 2.5 to 3.5 hours. The following guidelines are in place to ensure that courses are short.

####### C1. A course should should consist of 4 - 5 chapters. {#C1}
####### C2. A course should consist of 40 - 60 exercises. {#C2}

## Chapters

Completing a chapter gives the user a sense of success. In particular, the first chapter should be short and concise, as it sets the tone for the course, and is at the top of the funnel. The following guidelines are in place to ensure that chapters are short, and completeable within 30 - 45 minutes.

####### CH1. Chapter 1 should consist of 8 - 12 exercises (recommended is 10) {#CH1}
####### CH2. Chapters 2 - 5 should consist of 10 - 16 exercises (recommended is 15) {#CH2}

## Exercises

The title of an exercise needs to be concise and fit within a line in the interface. The following guidelines ensures its fit.

####### E1. All Exercises should have a title of length 5 - 50 characters (recommended is 30) {#E1}

### Normal Exercise

Interactive coding exercises are the most commonly used exercise type on the platform. They consist of seven components: __assignment__, __instructions__, __pre_exercise_code__, __sample_code__, __solution__, __hint__, and __sct__. In this section, we will discuss guidelines and rules for these components.

__Instructions__

Our data shows that length of instructions is a big driver of completion rates. Moreover, longer instructions often mean that the exercise is trying to do too much. This results in lower ratings, higher percentage of users asking for hints and solutions, leading to a sub-optimal learning experience. The following guidelines are in place to ensure that instructions are concise.


####### NE1. A NormalExercise should have instructions of length 30 - 480 characters (recommended is 360) {#NE1}
####### NE2. A NormalExercise should have between 0 - 4 instructions items (recommended is 3) {#NE2}
####### NE3. At least 40% of NormalExercises in a course should have instructions that are within the recommended 360 characters. {#NE3}

The intent is that limiting the number of instructions will limit the number of things a user is required to do to complete the exercise. The character limits are in place to ensure that instructions fit well within a page and allow users to complete them without much scrolling.

__Assignment__

We want learners to dive into the interactive portion of an exericse as quickly as possible. Keeping the assignment text short helps achieve this goal. The following guidelines are in place to ensure that assignment text fits well within a page, and a part of the instructions are already visible.

####### NE4. A NormalExercise should have assignment text of length 30 - 780 characters (recommended is 540) {#NE4}
####### NE4. At least 40% of NormalExercises in a course should have assignment text that are within the recommended 540 characters.

__Hints__

Hints help learners complete an exercise, when they are stuck. It is important that hints are concise and dont distract the user. The following guidelines are in place to ensure that hints are concise.

####### NE6. A NormalExercise should have hints of length 30 - 360 characters (recommended is 270). {#NE6}
####### NE7. A NormalExercise should have between 0 - 4 hint items (recommended is 3) {#NE7}
####### NE8. At least 40% of NormalExercises in a course should have hints that are within the recommended 270 characters. {#NE8}

__Code__

On a 13" screen, the learning interface displays 15 lines of code in the editor. It would be ideal if the code fits within the editor and a user does not have to scroll to reveal additional code. The following guidelines are in place to ensure that code is visible without additional scrolling.

####### NE9. A NormalExercise should have sample code between 1 - 15 lines (recommended is 10) {#NE9}
####### NE10. A NormalExercise should have solution code between 1 - 15 lines (recommended is 10)) {#NE10}
####### NE11. At least 40% of NormalExercises in a course should have sample code that are within the recommended 10 lines. {#NE11}
####### NE12. At least 40% of NormalExercises in a course should have solution code that are within the recommended 10 lines. {#NE12}

__Submission Correctness Tests__

Submission correctness test defines the test which verifies whether the solution student has submitted is correct.
The following guidelines are in place:

####### NE13. Every exercise needs to have a submission correctness test. {#NE13}
####### NE14. Every exercise submission correctness test needs to call the `sucess_msg` method. {#NE14}

### MultipleChoiceExercise

The following guidelines are in place to ensure that MultipleChoiceExercises are concise and can be completed by a user within 2 - 3 minutes.

####### MC1. A MultipleChoiceExercise should have assignment text of length 30 - 600 characters (recommended is 540) {#MC1}
####### MC2. A MultipleChoiceExercise should have options of length 10 - 300 characters (recommended is 240, this is the aggregate length across all options in the exercise) {#MC2}
####### MC3. A MultipleChoiceExercise should have between 3 - 5 options (recommended is 4) {#MC3}

### BulletExercise

BulletExercises are perfect to help users learn by repetition or faded learning. The guidelines below ensure that the overall length of a bullet exercise is in line with that of  a normal exercise. It also ensures that the bullet exercises appear in a visually appealing manner.

####### BE1. A BulletExercise should have assignment text of length 10 - 600 characters (recommended is 300) {#BE1}
####### BE2. A BulletExercise should have 2 - 4 sub-exercises (recommended is 3) {#BE2}
####### BE3. A BulletExericse should have subexercises that have instructions of length 10 - 120 characters (recommended is 60) {#BE3}

### TabExercise

TabExercises are perfect to help users learn to combine multiple concepts together. For example, an exercise combining multiple dplyr verbs. The guidelines below ensure that the overall length of a tab exercise is in line with that of a normal exercise. It also ensures that the tab exercises appear in a visually appealing manner.

####### TE1. A TabExercise should have assignment text of length 10 - 780 characters (recommended is 540) {#TE1}
####### TE2. A TabExercise should have 2 - 4 sub-exercises (recommended is 3) {#TE2}
####### TE3. A BulletExericse should have subexercises that have instructions of length 10 - 240 characters (recommended is 120)  {#TE3}




