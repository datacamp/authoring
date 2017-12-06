# Creating a premium course

## 0. Introduction

The purpose of this page is to guide you through the step-by-step
process of developing a premium DataCamp course. The emphasis here is on
helping you to stay organized and on schedule and to make it clear what
your responsibilities are and how we can help.

We'll set up a [GitHub](https://github.com) repository (a.k.a. *repo*)
under the [DataCamp organization](https://github.com/datacamp), where
all of your course materials will be kept. This will allow us to
collaborate seemlessly by keeping everything in one place, tracking
changes to documents over time, and providing a system for proposing and
merging changes. **If you're new to GitHub, take a moment to [create a
free account](https://github.com/) and provide us with your GitHub
username so we can add you as a collaborator to the repo**.

For some details related to course development, we may occasionally
point you to the [technical
documentation](https://www.datacamp.com/teach/documentation). Let's get
going!

## 1. Course overview

Every DataCamp course starts with a course overview composed of three
parts:

1.  **Description:** A one-paragraph "sales pitch" to students
    describing your course and why they should take it
2.  **Learning objectives:** A list of key takeaways from your course
3.  **Prerequisites:** A list of other DataCamp courses students should
    complete prior to taking your course

The purpose of the course overview is to make sure we're aligned on the
vision for the course before we break ground on development. We'll
generally provide you with a first draft of the overview to kick things
off, but your input is extremely important at this stage.

### Example

Here's an example overview for an introductory course on *Cleaning Data
in R*:

    # Cleaning Data in R

    ## Course description

    It's commonly said that data scientists spend 80% of their time cleaning and manipulating data and only 20% of their time actually analyzing it. For this reason, it is critical to become familiar with the data cleaning process and all of the tools available to you along the way. This course provides a very basic introduction to cleaning data in R, so that you can get from raw data to awesome insights as quickly and painlessly as possible!

    ## Learning objectives

    * Learn basic techniques for exploring your raw data to identify potential concerns
    * Apply the principles of tidy data using the tidyr package
    * Prepare data for analysis by dealing with missing and extreme data, incorrectly coded variables, and other common messy data issues
    * Put everything together to clean a real-world messy dataset in a final case study

    ## Prerequisites

    * Introduction to R
    * Intermediate R

## 2. Course outline

Once you've settled on a description, learning objectives, and
prerequisites for your course (via the course overview), the next step
is to create a course outline.

The purpose of developing this outline is to **map out the high-level
ideas that you would like to cover in each chapter** of your course. The
goal is not to include as much detail as possible, but rather to
organize your thinking and provide a clear narrative for the course.
Before getting started, it's important to understand the structure and
scope of a typical DataCamp course.

### Structure

A DataCamp course is a sequence of videos, multiple choice questions,
and (most importantly) interactive coding exercises. There is some
variation among courses and we’ll introduce some [best
practices](https://www.datacamp.com/create/how#best-practices) later on,
but for now let's just look at a few guidelines:

44-60 exercises (including videos) and 4-5 chapters:

-   Chapter 1: 8-12 exercises
-   Chapter 2: 10-16 exercises
-   Chapter 3: 10-16 exercises
-   Chapter 4: 10-16 exercises
-   Chapter 5 (optional): 10-16 exercises

A typical 16-exercise chapter might be 48 minutes in length and contain:

-   4 videos at 3 minutes/video = 12 minutes
-   12 interactive exercises (multiple choice + coding) at 3
    minutes/exercise = 36 minutes

Each chapter begins with a video and videos are separated by 2-4
interactive exercises

### Scope

Once you understand the basic structure of a DataCamp course, you must
make a judgement call on how much material you can reasonably cover in
your course. We find that most instructors **overestimate** the amount
of material they can cover. This is often a result of their previous
concept of a course being a full university semester, whereas **a
typical DataCamp course is more akin to a 4-hour workshop**.

### Examples

Here’s an [example of an
outline](https://s3.amazonaws.com/content-partnerships/production/files/outline.md)
for the same introductory course on *Cleaning Data in R*.

    ## Chapter 1: Introduction and exploring raw data

    * Assume data already read into R (see Importing Data course)
    * Propose a three step data cleaning process
      * Exploring raw data
      * Tidying data
      * Preparing data for analysis
    * Exploring raw data
      * View the structure of your data
      * Summarize your data
      * Look at your data
      * Visualize your data (with base R)

    ## Chapter 2: Tidying data

    * Principles of tidy data
    * Common symptoms of messy data
    * Introduction to tidyr
    * Tidying messy data with tidyr

    ## Chapter 3: Preparing data for analysis

    * Type conversion
    * String manipulation (stringr)
    * Missing and special values
    * Outliers and obvious errors

    ## Chapter 4: Putting it all together

    * Large messy dataset
    * Use methods from entire course
    * Now have the tools necessary to take on the messiest of datasets
    * Recommend practicing on more real datasets

Here are a few more examples from a variety of DataCamp courses:

-   [Exploratory Data Analysis: Case
    Study](https://s3.amazonaws.com/content-partnerships/production/files/outline-eda-unvotes.md)
-   [Unsupervised Learning in
    Python](https://s3.amazonaws.com/content-partnerships/production/files/outline-unsupervised-python.md)
-   [Manipulating Time Series Data in R with zoo &
    xts](https://s3.amazonaws.com/content-partnerships/production/files/outline-zoo-xts.md)

## 3. Course index

Now it's time to create a more detailed exercise-by-exercise outline
called a *course index*. Think of the course index as a table of
contents for your course, which will determine both its structure and
flow.

As you think through how to structure your course, here is [some
background](https://www.datacamp.com/teach/documentation#tab_code_exercises)
on the different types of DataCamp exercises as well as some [best
practices](https://www.datacamp.com/create/how#best-practices) that
we've established based on experience. The key to a good DataCamp course
is having students spend most of their time on interactive programming
exercises (i.e. `NormalExercise`s). After all, our motto is *learn by
doing*!

If you haven't already, we strongly recommend you go through at least
one chapter of an existing DataCamp course on your own. Since courses
vary by teaching style and topic, it's even better if you can take a
look at several different courses. Here are a few suggestions to get you
started:

R

-   [Writing Functions in
    R](https://www.datacamp.com/courses/writing-functions-in-r) (Hadley
    & Charlotte Wickham)
-   [Data Visualization with
    ggplot2](https://www.datacamp.com/courses/data-visualization-with-ggplot2-1)
    (Rick Scavetta)
-   [Machine Learning
    Toolbox](https://www.datacamp.com/courses/machine-learning-toolbox)
    (Max Kuhn & Zach Deane-Mayer)

Python

-   [Intro to Python for Data
    Science](https://www.datacamp.com/courses/intro-to-python-for-data-science)
    (Filip Schouwenaars)
-   [Importing Data in Python (Part
    1)](https://www.datacamp.com/courses/importing-data-in-python-part-1)
    (Hugo Bowne-Anderson)

### Writing a good index

Now that you have an idea of what kind of content makes a good course,
we also have some advice about what makes a good course index. The index
gives a high level overview of the structure of your course. This isn't
the time to get bogged down in the details, but rather to plan out a
roadmap of the exercises and videos. This map will serve as a guide
throughout the rest of the course development process. Planning the
whole course without figuring out the details can be daunting, but in
our experience having this map makes filling in the blanks much easier
further down the road.

To get started on your index, it can be helpful to look at some
examples. These indexes from past courses are examples of exactly what a
good index should do:

-   [Cleaning Data in
    R](https://s3.amazonaws.com/content-partnerships/production/files/cleaning_data_index.yaml)
-   [Writing Functions in
    R](https://s3.amazonaws.com/content-partnerships/production/files/writing_functions_index.yaml)
-   [pandas
    Foundations](https://s3.amazonaws.com/content-partnerships/production/files/pandas_index.yaml)

You can use these as a template or use our handy [index
editor](http://www.datacamp.com/teach) to abstract away the details of
its [YAML](https://en.wikipedia.org/wiki/YAML) formatting.

Here's the first few items in in the index for *Cleaning Data in R*:

    course_title: Cleaning Data in R
    course_description: Course description goes here.
    programming_language: r
    chapters:
      - chapter_title: Introduction and exploring raw data
        chapter_description: Chapter description goes here.
        exercises:
          - type    : VideoExercise
            title   : Welcome to the course!
            content : Introduction and summary of data cleaning process

          - type    : MultipleChoiceExercise
            title   : The data cleaning process
            content : Which is not part of the data cleaning process as outlined in video? Removing or replacing missing data

          - type    : NormalExercise
            title   : Here's what messy data looks like
            content : Use pre-code to display data from final challenge using head(..., n = 20)

This is a good example because the entries are concise but clear about
the content of each exercise. The goal of the index is to lay out a plan
for the course, so it's important to be specific about what content will
be included. This shouldn't be more than a sentence, maybe two, per
exercise. To keep this short, don't worry about including the full
exercise in the index. For each item, write just enough so that the
reader can imagine what that exercise will look like when the course is
finshed.

## 4. Exercises

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

## 5. Slides and scripts

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

![](https://s3.amazonaws.com/content-partnerships/staging/images/screenshots/slide-editing-mode.png)

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

## 6. Record screencasts

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

## 7. Record videos

After reviewing the screencasts and making any final adjustments to
either the slides or the scripts, the next step is for you to spend one
day (\~6-8 hours) in our professional recording studio in Cambridge, MA.
(Don't worry, we'll cover travel expenses.) Our team is well-trained and
prepared to make sure things go smoothly.

Once the videos are recorded, we will review and edit them, add your
slides in the background, use animations to highlight key points, etc.
Finally, we'll plug the final videos into the course.

## 8. Review and release

At this point, we will put any finishing touches on the course, then ask
that you review the course in its entirety.

We'll also have a select group of DataCamp students beta test the course
to collect additional feedback and make a final round of updates before
the course goes live. We'll implement as many small adjustments as
possible based on the feedback, but we will need your assistance for
more substantive changes.

Once everyone agrees we're ready to move forward, we will release the
course on the DataCamp website. Congrats!

## 9. Monitor and maintain

Since your course will be exposed to thousands of students all over the
world, we will quickly learn of any improvements that need to be made.
For small stuff like typos or issues with hints or answer testing, our
team will make the necessary adjustments without bothering you. If,
however, there are any serious issues with the content that require your
expertise or input, we'll be sure to notify you immediately, then work
with you to resolve them.

## Appendix A: Best practices

After developing dozens of interactive courses, we've learned a few
things about how to ensure a fluid and engaging experience for students.
In addition to improving course quality, these best practices help us to
provide consistency across our entire library of courses.

A **course** should...

-   Be 2.5-4 hours of student time.
-   Contain 44-60 exercises spread over 4-5 chapters.
-   Be a mix of videos and interactive exercises, with video content
    accounting for roughly 25% of a student's time.

A **chapter** should...

-   Take an average student \~35-50 minutes to complete.
-   Contain 3-4 videos.
-   Have 10-16 interactive exercises (except for chapter 1, which should
    have 8-12).
-   Be structured so that each video is followed by 2-4 interactive
    exercises.
-   Not contain too many multiple choice exercises.

A **video** should...

-   Be 2-4 minutes in length.
-   Focus on preparing the student for upcoming exercises.
-   Use concrete examples, with code, data, and visuals (plots,
    diagrams, etc.).
-   Avoid bullets as much as possible.

An **interactive exercise** should...

-   Talk in the second person ("you", not "we"). The student is the
    center of attention!
-   Be possible to complete in 2-3 minutes.
-   Use interesting examples, preferably with real data.
-   Comply with the DataCamp [style
    guide](https://www.datacamp.com/teach/documentation#tab_style_guide_general).
-   Contain very clear instructions, so that the student knows exactly
    what is expected of her (what new object to create, whether to print
    something, etc.). The instructions should be enough to finish the
    exercise; the comments in the sample and solution code only serve as
    placeholders for the code without giving any additional information.
-   Contain identical comments in the sample and solution code.
