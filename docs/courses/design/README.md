# Course Design

Please see <https://www.datacamp.com/teach/> for your course's dashboard.

## How to read this document

This document provides much of the information that is required to write a good course spec. There is a lot of information to assimilate, so it is best to read it in small pieces.

- Before you write any of the course spec, read everything up to [Step 1 - Brainstorming](/courses/design/#step-1-brainstorming).
- As you begin each step (or sub-step), read the documentation for that step only.

## Introduction

Designing a good course is as hard as designing good software.
To help you, this document describes a process based on evidence-based teaching practices:

- It lays out a step-by-step progression to help you figure out what to think about in what order.
- It provides spaced check-in points so you and your Curriculum Lead (CL) can re-scope or redirect effort.
- The end product specifies deliverables clearly so you can finish development without major surprises.
- Everything from Step 2 onward goes into your final course, so there is no wasted effort.
- Getting you to write sample exercises early lets DataCamp check that we can support everything you want your students to do.

We use the design of our introduction to the Unix shell for data scientists as a running example.

**Note: the steps are described in order of increasing detail,
but the process itself is always iterative.
You will frequently go back to revise earlier work
as you learn something from your answer to a later question
or realize that your initial plan isn't going to play out the way you first thought.**

## Technical help

You need to have basic competence at writing markdown documents and using github. See the [technical help resources](/courses/design/technical-help-resources.md) page for advice on getting started. Your Curriculum Lead will also provide technical help if you need it.

## Terminology and Structure

- A **course** is a self-contained module with its own top-level entry in our catalog,
  its own GitHub repository,
  etc.
- A **chapter** is a major section of a course.
- Chapters are made up of **lessons**,
  each of which has a short video and a handful of **exercises**.

A course typically has about the same amount of content as a half-day conference workshop,
and contains 44-60 exercises (including videos) and 4-5 chapters.
A typical breakdown is:

- Chapter 1: 8-12 exercises
- Chapter 2: 10-16 exercises
- Chapter 3: 10-16 exercises
- Chapter 4: 10-16 exercises
- Chapter 5 (optional): 10-16 exercises

## Types of courses

There are three types of course:

1. Technology courses. These focus on teaching the features of a particular package or technology. This is how we teach plotting, for example, we have courses on ggplot2 and Bokeh, not courses on scatterplots and histograms.
1. Technique courses. These focus on how, why, and when to use a technique. This is how we teach statistics, for example, we have courses on cluster analysis and network analysis, not courses on the packages that implement them.
1. Application courses. These start with a business problem or scientific problem, and explain what the problem is, what the data looks like, and how to solve the problem. 

The type of course you are going to make affects the relative importance of different elements in the course spec. Ask your Curriculum Lead if you aren't sure of the type.

<!-- -------------------------------------------------------------------------------- -->

## Step 1: Brainstorming

The first step is to throw together some rough ideas
so that you and your CL can make sure your thoughts about the course are aligned.
To do this,
write some *short* point-form answers to three or four of the questions listed below.
You aren't expected to answer all of them,
and you may pose and answer others if you and your CL think it's helpful,
but you should always include a couple of answers to the first.

Click the links on each question to see more details about how to write an answer.

1. [**What problem(s) will student learn how to solve?**](/courses/design/brainstorming-problems.md)
   E.g., "how to draw plots using `ggplot2`"
   or "how to forecast product demand".

2. [**What concepts and techniques will students learn?**](/courses/design/brainstorming-concepts.md)
   E.g., "the split-train-model-predict workflow"
   or "rolling back Git commits".

3. [**What technologies, packages, or functions will students use?**](/courses/design/brainstorming-technologies.md)
   E.g., "`ggplot2` for drawing plots".

4. [**What terms or jargon will you define?**](/courses/design/brainstorming-jargon.md)
   E.g., "boosting versus bagging"
   or "block/factor/sequential designs".

5. [**What analogies or heuristics will you use to explain concepts?**](/courses/design/brainstorming-analogies.md)
   E.g., "ggplots are like Lego for graphics"
   or "draw a simple plot then add elements one by one"
   (See [Gelman & Nolan][teaching-statistics] for more ideas here.)

6. [**What mistakes or misconceptions do you expect?**](/courses/design/brainstorming-mistakes.md)
   E.g., "changing colors works differently if the color argument is inside an aesthetic or not"
   or "overfitting models to the data".

7. [**What datasets will you use?**](/courses/design/brainstorming-datasets.md)
   E.g., "anything but the diamonds and mtcars datasets"
   or "something from the UCI Archive".

You may not need to answer every question for every course,
and you will often have questions or issues we haven't suggested,
but couple of hours of thinking at this stage can save days of rework later on.

Checkin: a rough scope for the course that you have agreed with your CL.

### Running Example

The questions and answers for the Unix shell course are:

1. *What problem(s) will student learn how to solve?*  
   How to combine existing/legacy tools;
   how to make analyses reproducible.
2. *What techniques or concepts will students learn?*  
   History; pipes; shell scripts.
3. *What technologies, packages, or functions will students use?*  
   Bash shell; basic Unix commands (`cd`, `ls`); basic data manipulation commands (`head`, `cut`, `grep`).
4. *What terms or jargon will you define?*  
   Filesystem; redirection; pipe; wildcard.
5. *What analogies or heuristics will you use to explain concepts?*  
   Command-line pipeline is like chemistry pipeline;
   shell scripts are like snippets of command history.
   Use filenames that are easy to match with tab completion and wildcards;
   build pipelines step by step.
6. *What mistakes or misconceptions do you expect?*  
   That the shell shows the same files and folders as the GUI interface they're used to;
   definition vs. use of variables (especially loop variables).
7. *What datasets will you use?*  
   dental records.

<!-- -------------------------------------------------------------------------------- -->

## Step 2: Who Is This Course For?

"Beginner" and "expert" mean different things to different people,
and many factors besides pre-existing knowledge influence who a course is suitable for.
The second step in designing a course is therefore to agree on an audience with your CL.
To help you do this,
we have created [learner personas](personas.md) for typical DataCamp students.
Each persona describes the person's general background,
what they already know,
and what they think they want to do.

After you are done brainstorming,
you should go through these personas
and decide which of them your course is intended for,
and how it will help them.
While doing this,
you should make some notes about what specific prerequisite skills or knowledge you expect students to have
above and beyond what's in the persona.
If none of our personas capture your intended audience,
talk to your CL to make sure you agree on who you're aiming for.

Checkin: brief summaries of who your course will help and how.

Note: Please do not copy the profiles into your course design,
since we will update them as we gather more data on our learners.
Instead,
link to them and comment on how the course relates to them.

More advice [here](/courses/design/choose-learner-personas.md).

### Running Example

- [Alex](personas.md#advanced-alex)
  knows how to do a few things with the Terminal application on his Mac,
  but now wants to learn how to use the shell to access his company's cloud computing resources.
  This course will serve as a quick refresher
  before he goes on to a more advanced course.

- [Sindhu](personas.md#starting-sindhu)
  has never used a command-line shell.
  This course will give her a basic understanding of Unix
  so that she can use the command-line tools her colleagues have built.

- [Chen](personas.md#coder-chen)
  *doesn't* need this course,
  since she has been using Unix for more than twenty years.

<!-- -------------------------------------------------------------------------------- -->

## Step 3: What Will Learners Do Along the Way?

The best way to make the goals in Step 1 firmer is
to write full descriptions of a couple of exercises
that students will be able to do toward the end of the course.
Writing exercises early is directly analogous to [test-driven development][tdd]:
rather than working forward from a (probably ambiguous) set of learning objectives,
designers work backward from concrete examples of where their students are going.
Doing this also helps uncover technical requirements
that might otherwise not be found until uncomfortably late in the lesson development process.

More advice on [capstone exercises](/courses/design/exercises-capstone.md).

To complement the full exercise descriptions,
you should also write brief point-form descriptions of one or two exercises per chapter
to show how quickly you expect learners to progress.
(Again,
these serve as a good reality check on how much you're assuming,
and help uncover technical requirements.)
One way to create these "extra" exercises
is to make a point-form list of the skills needed to solve the major exercises
and create an exercise that targets each.

More advice on [example exercises](/courses/design/exercises-examples.md).

Checkin: 1-2 fully explained exercises that use the skills the student is to learn,
plus half a dozen point-form exercise outlines.

Note: be sure to include solutions with example code
so that the CL can check that our platform can do everything you need.

### Running Example

**Complete Exercise: Building a Tool to Find Unique Values in Columns**

As the final exercise in the Unix shell course,
you are given several dozen data files, each of which is formatted like this:

```
2013-11-05,deer,5
2013-11-05,rabbit,22
2013-11-05,raccoon,7
2013-11-06,rabbit,19
```

1. Write a shell script called `unique.sh`
   that takes any number of filenames as command-line parameters
   and prints the names of the species found in each file
   in alphabetical order.
   Each file is processed separately.

> **Solution**
>
> ```
> #!/usr/bin/env bash
>
> # Find unique species in CSV files where species is the second data
> # field.  This script accepts any number of filenames as arguments
> # and processes each separately.
>
> for file in $@
> do
>   echo $file
>   cut -d , -f 2 $file | sort | uniq
> done
> ```

**Complete Exercise: Using Wildcards**

2. With one command,
   use `unique.sh` to find the unique species
   in all of the `.csv` files in the `~/archive` and `~/new` directories.
   Use wildcards to specify the names of the files to be processed;
   do *not* include the `.txt` or `.bak` files in those directories.

> **Solution**
>
> ```
> unique.sh ~/archive/*.csv ~/new/*.csv
> ```

**Exercise Outline: Manipulating Files and Directories**

What is the output of the final `ls` command in the sequence shown below?

```
$ pwd
/Users/jasmine/data

$ ls
mortality.dat

$ mkdir old
$ mv mortality.dat old
$ cp old/mortality.dat ../mortality-saved.dat
$ ls
```

1. `mortality-saved.dat old`
2. `old`
3. `mortality.dat old`
4. `mortality-saved.dat`

Uses:
- `pwd`, `ls`, `cp`, `mv`, `mkdir`
- paths
- the special path `..`

**Exercise Outline: Tracing Pipes and Redirection**

`dental.csv` contains:

```
2017-05-05,incisor
2017-05-05,bicuspid
2017-05-05,molar
2017-05-06,bicuspid
2017-05-06,incisor
2017-05-06,premolar
2017-05-07,bicuspid
2017-05-07,crown
```

What text passes through each of the pipes and the final redirect in this pipeline?

```
$ cat dental.csv | head -n 5 | tail -n 3 | sort -t , -k 2 > final.txt
```

Uses:
- `cat`, `head`, `tail`, `sort`
- pipes
- redirection
- command flags

**Exercise Outline: Selecting Data by Value**

Write a command that selects *only* data in `dental.csv` from the years 2000, 2005, and 2010.

Uses:
- `grep` (with fixed text, not regualr expressions)

**Exercise Outline: Shell Scripts**

Fill in the blanks in `dates.sh`
to select unique dates from the files
whose names are given as the script's command-line arguments.

Uses:
- command-line arguments
- pipes
- wildcards
- `cut`, `sort`, `uniq`
- `#!`

<!-- -------------------------------------------------------------------------------- -->

## Step 4: How Are Concepts Connected?

In this stage,
you put the exercises in a logical order
then derive a point-form course outline for the entire course from them.
This is also when you will consolidate the datasets your formative assessments have used.

Checkin: a course outline and dataset summary.

Note:

- The final outline should be at the chapter and lesson (video) level,
  i.e.,
  one major bullet point for each of the 4-5 chapters
  with 4-5 minor bullet points for the video lessons.
- It's common to change assessments in this stage so that they can share datasets,
  or to modify datasets to make them shareable.
- You are likely to discover things you forgot to list earlier during this stage,
  so don't be surprised if you have to double back a few times.
  
[See here](/courses/design/lesson-flow.md) for more advice on lesson flow.

### Running Example

The chapter and lesson outline for the Unix shell course is:

1. Manipulating Files and Directories
   1. What a shell is; how it compares to a graphical interface.
   2. Basic commands (`whoami`; `pwd`; `ls`).
   3. Moving around (cd; the special paths `.` and `..`).
   4. Creating, deleting, and renaming (`cp`; `mv`; `rm`; `mkdir`; `rmdir`).
2. Manipulating Data
   1. Getting rows (`head`; `tail`).
   2. Getting columns (`cut`)
   3. Repeating steps (`history`; `!number` and `!command`)
   4. Selecting by value (`grep`; quoting arguments to protect special characters)
3. Combining Tools
   1. Redirection with `>`
   2. Piping with `|`
   4. Using the `*` and `?` wildcards
   3. Using `uniq` and `sort` (useful, and further examples of pipelines).
4. Batch Processing
   1. Storing commands in shell scripts.
   2. Permissions; using `!#`.
   3. Using arguments in shell scripts.
   4. Shell variables.
   5. Loops.

The datasets are:

- `./dental.csv`: two-column year and tooth data
- `./data/*.csv`: seasonal dental data ('autumn.csv', 'spring.csv', 'summer.csv', 'winter.csv')

<!-- -------------------------------------------------------------------------------- -->

## Step 5: Course Overview

You can now summarize everything you have created
by writing a high-level course overview that consists of:

- [a one-paragraph description](/courses/design/overview-description.md) (i.e., a sales pitch to students)
- [half a dozen learning objectives](/courses/design/overview-objectives.md)
- [a summary of prerequisites](/courses/design/overview-prerequisites.md)
  and a list of any packages or other special technology the course will require.

Doing this earlier often wastes effort,
since material is usually added, cut, or moved around in earlier steps.

Checkin: course description, learning objectives, and prerequisites.

### Running Example

Here are the final deliverables for the design of the Unix shell course.

**Course Description**

The Unix command line has survived and thrived for almost fifty years
because it lets people to do complex things with just a few keystrokes.
Sometimes called "the duct tape of programming",
it helps users combine existing programs in new ways,
automate repetitive tasks,
and run programs on clusters and clouds
that may be halfway around the world.
This course will introduce its key elements
and show you how to use them efficiently.

**Learning Objectives**

- Explain the similarities and differences between the Unix shell and graphical user interfaces.
- Use core Unix commands to create, rename, and remove files and directories.
- Explain what files and directories are.
- Match files and directories to relative and absolute paths.
- Use core data manipulation commands to filter and sort textual data by position and value.
- Find and interpret help.
- Predict the paths matched by wildcards and specify wildcards to match sets of paths.
- Combine programs using pipes to process large data sets.
- Write shell scripts to re-run command pipes with a varying number of command-line arguments.

**Prerequisites and Packages**

None.

<!-- -------------------------------------------------------------------------------- -->

## Conclusion

This process is described in sequence,
but in practice you will loop back repeatedly
as each stage informs you of something you overlooked.
When you and your CL agree that your outline is done,
you can copy what you wrote for Steps 3-5 from your course repository's `README.md`
into `course.yml` and your chapters and carry on from there.
When your course is finished,
please take half an hour to update your outline
so that whoever has to maintain your course will understand
what it is trying to achieve and why it is organized the way it is.

<!-- -------------------------------------------------------------------------------- -->

## Further Reading

- Huston: *[Teaching What You Don't Know][huston-teaching]*
- Lang: *[Small Teaching][lang-teaching]*
- Wilson: *[How to Teach Programming (and Other Things)][wilson-teaching]*

<!-- -------------------------------------------------------------------------------- -->


[huston-teaching]: https://www.amazon.com/Teaching-What-You-Dont-Know/dp/0674035801/
[lang-teaching]: https://www.amazon.com/Small-Teaching-Everyday-Lessons-Learning/dp/1118944496/
[tdd]: https://en.wikipedia.org/wiki/Test-driven_development
[teaching-statistics]: https://www.amazon.com/Teaching-Statistics-Tricks-Andrew-Gelman/dp/0198572247/
[wilson-teaching]: http://third-bit.com/teaching/
