# Exercises

This is the most important step of the course development process, since
it's primarily through the interactive exercises that students will
engage with your material. We'll be using your course index to generate
chapter templates, so the basic structure of each exercise will already
be in place, along with the title and content you provided in the index.

There are three types of exercises in a DataCamp course, each of which
is described in detail on the [Code
Exercises](https://www.datacamp.com/teach/documentation#tab_code_exercises)
page of the technical documentation.

We want you to focus on the core content and not get too bogged down in
the details associated with the structure of the chapter files or making
things interactive. We can help with the latter (hints, answer testing,
etc.) At this stage, just fill in the following elements for each
exercise type, ideally using the [course
editor](http://www.datacamp.com/teach) to ease development:

-   `VideoExercise`
    -   *Video bullets:* Short list of bulleted "talking points" making
        it clear what will be covered and how that relates to the
        exercises
    -   *Video links:* For now, just keep the default placeholder links
        provided
-   `NormalExercise`
    -   *Assignment text:* Main explanatory text used to introduce
        concepts and prepare the student to solve the exercise
    -   *Instructions:* Specific instructions the student must follow to
        solve the exercise
    -   *Pre-exercise code:* Code run behind the scenes to initialize
        the student's workspace before the exercise begins
    -   *Sample code:* Comments and code provided for the student when
        the exercise begins
    -   *Solution:* Comments and code representing the correct answer to
        the exercise
-   `MultipleChoiceExercise`
    -   *Assignment text:* Explanatory text and the question to be
        answered
    -   *Instructions:* For multiple choice questions, the
        "instructions" are actually a list of possible choices
