# DataCamp for Mobile Courses

A course is clearly subdivided into chapters and lessons. A mobile course
consists of 4 to 5 chapters, each mapping to one major concept of a course (eg
"Plotting in Matplotlib" or "SELECT clause"). Each chapter in turn consists of 2
to 5 lessons (eg "Histograms" or "the COUNT() function"). Each lesson comprises
8 to 15 [exercises](/mobile/courses/exercises/README.md), which are the fundamental building
block of mobile content.

> #### info::Note
> This philosophy of using the exercise as an exclusive building block
> distinguishes mobile content from desktop content. Rather than alternating
> between exposition (in the form of videos or written lessons), and interactive
> exercises, exposition should be kept to a bare minimum - always prefer showing
> over telling.

The last lesson in every chapter is a practice lesson, which is 10 - 25
exercises. The only material difference between a practice lesson and a course
lesson is that practice lesson exercises usually provide little to no background
context, and should theoretically be doable by anyone who has completed the
course lessons in a given chapter. Practice lessons presented to students in a
random order (in contrast to course lesson exercises, which are always shown in
the order specified in their YAML files). These pools of practice content are
currently embedded within courses, but will eventually be extracted into a full
practice-only mode, as well.

# Where do I start?

First, go through the [development process documentation](/mobile/courses/development.md)
to get set up with your course repository and development tools.

Then, set up the structure of your course repository according to the
[documented repository structure](/mobile/courses/repo-structure.md).

Finally, read the [authoring](/mobile/courses/authoring.md) page and familiarize yourself
with [mobile exercises](/mobile/courses/exercises/README.md) to get started writing your
course!
