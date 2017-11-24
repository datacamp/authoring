# Content

A project consists of a series of tasks. Every task in a project consists of six key components, two of which are displayed in the notebook and are a part of the narrative, while the other four are displayed outside the notebook, in support of the pedagogy.

| **Key**      | **Description**                            | **Display** | **Category** |
|--------------|--------------------------------------------|-------------|--------------|
| context      | Narrative for the task                     | Notebook    | Narrative    |
| solution     | Solution code to solve the task            |             | Narrative    |
| instructions | Detailed instructions to complete the task | Sidebar     | Pedagogy     |
| sample\_code | Minimal scaffolding code                   | Notebook    | Pedagogy     |
| hint         | Help for the user when they get stuck      | Sidebar     | Pedagogy     |
| tests        | Check if the user has completed the task   | Sidebar     | Pedagogy     |


While it might seem that the components of a task mirror those seen in an exercise, there are some important differences, that we will highlight in this section. It is important to understand the difference between project tasks and exercises, in order to author good projects.

> One of the biggest challenges while creating a project is the fact that the ***narrative and pedagogy portions had to be written from different perspectives, and point of views***, while still maintaining a semblance of cogency. Let me elaborate.

Given that our vision is to let the user showcase a finished project seamlessly after completion, the narrative needs to be written from the point of view of the user. The best way to think about this is the narrative should be able to stand its ground as a blog post or article written by the user, without any trails of a supervised tutorial!

The pedagogical components on the other hand need to be written from the point of view of the project author. The instructions should give the user more details on what they are required to accomplish. The sample code should provide minimal scaffolding to prime the user. The hints should help the user de-bottleneck the task should they get stuck deep. The tests should provide a gentle mechanism to ensure that the user is on track, without enforcing very strong requirements that is typical of submission correctness tests in courses.

Wearing two hats at the same time can be incredibly challenging as I realized while creating my first project. I would go back and forth between components of a task getting frustrated when things did not flow the way I would have liked them to. After a good amount of experimentation, I came up with a simple, yet reasonably effective approach, that can be summarized as this:

> Create the narrative first, and then add the pedagogy!

## Create the Narrative

Given the vision for projects, the first step towards writing a project is to build a narrative, a compelling story that showcases what the finished project would look like.

The narrative is by far the most important part of a project. As a project author, we need to keep in mind that on completing the project, the user should leave with a solid story that they can share with their peers and employers. This means that the narrative needs to be developed with care, and should contain interesting insights that make for good dinner-table conversation.

The narrative consists of two parts: Context and Solution

### Context

The context is the prose part of the narrative that describes the story for the task, and engages the reader. The best way to write the narrative is to take the mindset of an author writing a blog post.

![](/projects/media/image12.png)

Context from the BabyNames Project

Here are a couple of guidelines to consider while writing the context.

**Write from Student POV**

We expect students to take a project notebook, enhance it with their own comments, and share it as a part of their portfolio. Given this, it is important that the project author writes the context from the student’s point of view. This means avoiding writing sentences like the one shown below:

> Run the code cell below to remove \*\*Survived\*\* as a feature of the dataset and store it in \`outcomes\`.

Instead, in a narrative context, the same sentence can be rewritten from the point of view of the blog author, albeit the student.

> Let us remove \*\*Survived\*\* as a feature of the dataset and store it in \`outcomes\`

It is a subtle change, but a very important one and critical to our vision of a good project.

> Keep it Language Agnostic

Given that the project’s narrative is the most challenging part of a project, it makes sense to develop the narrative in a language-agnostic fashion. This will make it easier for a project to be quickly adapted to other languages, speeding up the creation cycle. Note that this is NOT necessary, but wherever possible, something that an author should keep in mind.

### Solution

An equally important part of the narrative is the solution code. Although this does not end up in the project notebook, it is important to write the solution code, so you have a good idea of what it would actually take for a user to complete the task on hand. Moreover, it also gives you a sense of what the finished project would look like, and if it would blog-worthy!

![](/projects/media/image11.png)

Solution for Task 1 from the BabyNames Project

It is best to develop the entire narrative in the notebook so you can see firsthand what the finished product would look like from the user’s perspective. Note that writing the narrative is also the more fun part of the project ;)

> By default, for every task, the maximum runtime code is 25 seconds. We *strongly* advise project authors to limit the runtime of the ideal solution to a maximum of 5 seconds (3 seconds is ideal). Going over 5 seconds is at your own risk ;-)

## Add the Pedagogy

The pedagogical components of a project aim to provide support to the user in completing the project. There are four key pedagogical components, and I recommend that you write them in the same order as I have laid them out here:

### Tests

You might find it strange that I put tests first here. Let me explain. Recall that the objective of the pedagogy section is to guide the user towards completing the project successfully. An important part of success is the tests. So, the other pedagogical components need to be able to guide the user towards passing all the tests. Hence, it makes sense to write the tests first, and then focus on the other pieces.

Shown below are tests from the baby names project.

![](/projects/media/image9.png)

Test for Task 1 from the BabyNames Project

We use popular unit testing frameworks for writing these tests.

| **Language** | **Framework**                                               |
|--------------|-------------------------------------------------------------|
| Python       | [*nose*](http://nose.readthedocs.io/en/latest/testing.html) |
| R            | [*testthat*](https://github.com/r-lib/testthat)             |

The tests are meant to help the user figure out if their output matches the solution, and if not, how is their output different from the solution. So, in the example above, we test whether the data frame output by the user has the expected number of rows and columns, and field names. You can learn more about writing tests by going through the projects ([*BabyNames*](https://github.com/datacamp/projects-babynames/blob/master/project.ipynb), [*Lego*](https://github.com/datacamp/projects-intro/blob/master/project.ipynb)).

*Note: Given that there is repetition in the nature of the tests across tasks, it might make sense to write a thin wrapper around these testing frameworks that make it easier to test different aspects of a data frame with lesser code.*

### Instructions

Now that you have written the tests, it is time to write the instructions. The instructions should help the user understand what is the output they are striving for, and how they can get to it. One way to write a good set of instructions is to start by describing the overall objective of the task, use bullet points to break it down into steps, and ending with an illustrative output (table, plot , etc.)

![](/projects/media/image10.png)

Instructions for Task 1 from the BabyNames Project

Keep the instructions brief, but with enough detail that makes it clear to the user what the desired output is.

### Sample Code

The sample code provides the user with a starting point to start coding. It is displayed in the notebook. Given that we want to provide the user ample flexibility in how they write their code, it is recommended to keep the sample code minimal.

![](/projects/media/image4.png)

Sample Code for Task 1 from the BabyNames Project

### Hint

Occasionally a user will get stuck on a task and NOT be able to pass the tests despite their best attempt. In such cases, they will turn to hints. So, the objective of hints should be to help the user getting unstuck.

![](/projects/media/image8.png)

Hint for Task 1 from the BabyNames Project

There are three components that can help write great hints.

**Links to Exercises**

Every hint should start with a reference to exercises from DataCamp courses, that contain the skills required to tackle the task in question. The idea is that a user who is stuck can refer to these exercises, refresh their knowledge, and attempt the task with a fresh mind. The more relevant these exercise links are, the better.

**Scaffolded Code**

Some students will remain stuck despite reading up on relevant concepts. One way to help these students get unstuck is to provide them scaffolded code. The easiest way to do this is to take the solution code and replace some of it with blanks. The idea is that the scaffolded code reveals the structure of code required to solve the task. In conjunction with the links to the exercises, this should be sufficient for a user to get unstuck!

**Textual Hints**

Occasionally, it might make sense to provide textual hints, similar to what is done for exercises. It is recommended to use bullet points for textual hints.
