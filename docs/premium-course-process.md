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
your audience, create some example exercises, write a high-level outline
for the material, and tie everything together with a "sales" pitch to students
on why they should take your course and what they'll learn.

Your course repository will have some example course specs along with a
blank template for your specs and detailed instructions for how to create your
own.

## 2. Exercises {#exercises}

Once your course is fully spec'd and approved, you'll begin working on 
exercises. There several different flavors of DataCamp exercises, each of 
which is described in detail [here](/courses/exercises/).

We want you to focus on the core content and not get too bogged down in
the details associated with the structure of the chapter files or making
things interactive. For example, just fill in the following elements for each
of these most common exercise types, ideally using the [course
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

The videos in your course will show slides with you talking over them.
This enables you to walk students through
important concepts and examples in a concrete and concise way, preparing
them to complete the interactive exercises. The slides will also be made
available for reference as students are working through the exercises.

In addition to the slides, you will also script out exactly what you'll
say in the videos. Although writing scripts takes some additional
time upfront, it makes the recording process far more efficient and the
resulting videos significantly more polished and professional.

You will create all slides and scripts in the 'Slide Editing' mode of
the [course editor](http://www.datacamp.com/teach). Detailed documentation on
this process can be found [here](/courses/slides.md).

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
videos. This provides an opportunity to practice before doing your
final recordings. We'll also review the overall presentation and provide 
feedback in plenty of time for you to make adjustments.

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
that they appear in your course as placeholders for the final videos. We
can then review them in context, alongside the rest of the exercises,
and provide feedback in preparation for recording the final videos.

## 5. Videos {#videos}

For some courses, we record the instructor on camera. For others, we're able to
simply do audio recordings. We'll let you know which it will be as early as
possible in the course development process.

After reviewing the screencasts and making any final adjustments to
either the slides or the scripts, the next step is to do the final recordings.

If we're recording you on camera, we will fly you to New York City for a day
to join us in our professional recording studio. The actual recording process
generally takes no longer than 4-6 hours. Don't worry: we'll cover travel 
expenses and our team is well-trained and prepared to make sure things go 
smoothly.

If we're recording audio-only, we'll make sure you have the proper equipment
set up in your home or office, then give you detailed instructions on how to 
produce high quality recordings for the course.

Once the videos are recorded, we will review, edit, and merge them with your
slides. You'll then use our slide editor to time out the slide 
animations and make sure everything fits neatly into the course.

## 6. Review and release {#review-release}

At this point we will put any finishing touches on the course, make sure
it's fully interactive, then ask that you review the course in its entirety
before it goes live.

Once it does go live, we'll ensure that enough students complete and give
feedback on the course to allow us to work out any remaining kinks before
we make a big announcement to our students.

During this process, we'll implement as many small adjustments as
possible based on the feedback we receive, but we will need your assistance for
more substantive changes.

Once everyone agrees we're ready to move forward, we will announce the
launch of the course to the world and watch the magic take place. Congrats!

## 7. Monitor and maintain {#monitor-maintain}

Since your course will be exposed to thousands of students all over the
world, we will quickly learn of any improvements that need to be made.
For small stuff like typos or issues with solution testing, our
team will make the necessary adjustments without bothering you. If,
however, there are any serious issues with the content that require your
expertise or input, we'll be sure to notify you immediately, then work
with you to resolve them.
