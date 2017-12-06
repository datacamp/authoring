# Premium course development process

## Introduction {#introduction}

The purpose of this section is to guide you through the step-by-step
process of developing a premium DataCamp course. The emphasis here is on
helping you to stay organized and on schedule and to make it clear what
your responsibilities are and how we can help.

We'll set up a [GitHub](https://github.com) repository (a.k.a. *repo*)
under the [DataCamp organization](https://github.com/datacamp), where
all of your course materials will be kept. This will allow us to
collaborate seemlessly by keeping everything in one place, tracking
changes to documents over time, and providing a system for proposing and
merging changes. **If you're new to GitHub, visit our 
[Getting started](/welcome/getting-started.md) page
to get your account set up and linked to DataCamp.**

## 1. Course specs {#course-specs}

The first step in the course development process is to develop a detailed
blueprint for your course. We call this blueprint the *course specs*.

In addition to helping you brainstorm topics for the course, you'll define
your audience, create some example exercises, created a high-level outline
for the material, and tie everything together with a "sales" pitch to students
on why they should take your course and what they'll learn.

Your course repository will have some example course specs along with a
blank template for your specs. Additional instructions can be found there.

## 2. Exercises {#exercises}

Once your course is fully spec'd and approved, you'll begin working on 
exercises. There several different flavors of DataCamp exercises, each of 
which is described in detail [here](/courses/exercises/).

We want you to focus on the core content and not get too bogged down in
the details associated with the structure of the chapter files or making
things interactive. At this stage, just fill in the following elements for each
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

## 3. Slides and scripts {#slides-scripts}

You will record the videos for your course in front of a green screen in
our professional recording studio. The green screen allows us to display
slides in the background, which will enable you to walk students through
important concepts and examples in a concrete and concise way, preparing
them to complete the interactive exercises. The slides will also be made
available for reference as students are working through the exercises.

In addition to the slides, you will also script out exactly what you'll
say in the videos. We'll feed these scripts into our teleprompter when
you're in the studio. Although writing scripts takes some additional
time upfront, it makes the recording process far more efficient and the
resulting videos significantly more polished and professional.

You will create all slides and scripts in the 'Slide Editing' mode of
the [course editor](http://www.datacamp.com/teach), which is accessible
via the menu bar:

![](images/premium-courses/slide-editing-mode.png)

A few pieces of advice before you get started:

-   Videos should generally be 2-4 minutes a piece, so don't try to cram
    too many slides into each video
-   Minimize the number of purely conceptual talking points (i.e.
    bullets)
-   Focus on walking the student through interesting, real-world
    examples with data, code, and visuals (plots, diagrams, etc.)
-   DataCamp has an account with
    [Shutterstock](https://www.shutterstock.com/home), letting you
    include professional images in your slides
-   Think about how the slides will prepare students for the specific
    exercises that follow
-   Avoid going through the exact same examples you'll have the student
    work on in the exercises. Instead, vary the examples slightly by,
    for example, performing the same operations on a different dataset
    (or different parts of the same dataset) or by performing slightly
    different operations on the same dataset

## 4. Screencasts {#screencasts}

Screencasts involve recording your computer screen while cycling through
your slides and talking over them as if you are recording the full
videos. This provides an opportunity to practice for your big day in the
studio. We'll also review the overall presentation and provide feedback
in plenty of time for you to make adjustments.

It's best to keep this step as simple as possible. If you're using a
Mac, we recommend using QuickTime Player to record your screen. If you
are on Windows, there are plenty of free software options available for
screen recording including [Icecream Screen
Recorder](http://icecreamapps.com/Screen-Recorder/) and
[CamStudio](http://camstudio.org/).

Save all of the screencasts in a single directory called `screencasts/`
somewhere on your computer, **but not in your course repo**. The reason
for this is that the video files are too large and won't play nicely
with Git and GitHub. Instead, once all recordings are complete, we
suggest using a free cloud-based file sharing service like Dropbox, Box,
or Google Drive to share the `screencasts/` directory with us. Please
use simple, organized naming conventions for the files, similar to what
you did with the slides (e.g. `ch2_3` for the third screencast in
chapter 2).

Once we've received the screencasts, we'll upload them to DataCamp so
that they appear in your course as placeholders for the full videos. We
can then review them in context, alongside the rest of the exercises,
and provide feedback in preparation for your time in the studio.

## 5. Videos {#videos}

After reviewing the screencasts and making any final adjustments to
either the slides or the scripts, the next step is for you to spend one
day (\~6-8 hours) in our professional recording studio in Cambridge, MA.
(Don't worry, we'll cover travel expenses.) Our team is well-trained and
prepared to make sure things go smoothly.

Once the videos are recorded, we will review and edit them, add your
slides in the background, use animations to highlight key points, etc.
Finally, we'll plug the final videos into the course.

## 6. Review and release {#review-release}

At this point, we will put any finishing touches on the course, then ask
that you review the course in its entirety.

We'll also have a select group of DataCamp students beta test the course
to collect additional feedback and make a final round of updates before
the course goes live. We'll implement as many small adjustments as
possible based on the feedback, but we will need your assistance for
more substantive changes.

Once everyone agrees we're ready to move forward, we will release the
course on the DataCamp website. Congrats!

## 7. Monitor and maintain {#monitor-maintain}

Since your course will be exposed to thousands of students all over the
world, we will quickly learn of any improvements that need to be made.
For small stuff like typos or issues with hints or answer testing, our
team will make the necessary adjustments without bothering you. If,
however, there are any serious issues with the content that require your
expertise or input, we'll be sure to notify you immediately, then work
with you to resolve them.
