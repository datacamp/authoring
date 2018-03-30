# Authoring

Writing a DataCamp for Mobile course is a unique experience. The upside of the
mobile platform is that you can reach a much broader audience because the
convenience is higher and the barrier to entry is lower. The challenge is that
there are many more constraints to work within. Primary among these are the
restricted screen real estate and the lack of an interactive interpreter. These
constraints require you to think carefully about the way you introduce concepts
and the examples that you use.

## Getting started

First, get your repo and development tools set up according to the [development
process documentation](/mobile/development.md).

Create and checkout a chapter branch to write your course in. For example:

```sh
git checkout -b chapter-1
```

Because mobile course content is typically reviewed and launched chapter by
chapter, it's good practice to dedicate one branch to each chapter.

> #### info::Note
> You should author content on a chapter branch, *not* on the `master` or
> `development` branches!

You are free to use whatever editing tools you like on your local repository, eg
Sublime, Vim, Emacs, etc. It can be helpful to use an IDE that allows you to
expand snippets, and to write a snippet expansion for different exercise
types. Bonus points if your IDE of choice allows you to automatically [generate
UUIDs](/mobile/authoring.md#working-with-uuids) for your exercises.

Visit the [exercises documentation](/mobile/exercises/README.md) to learn what
exercise types are available, how to write them, and see some examples.

The best workflow is generally to open an appropriate interpreter side by side
with the content file, so that you can play with code and quickly insert it into
your exercises. This might be IPython, R, or a SQL client like `psql` or
`sqlite`.

## Tone

DataCamp for Mobile is designed to be the most fun and casual learning
experience in the DataCamp ecosystem. Be as fun and playful as you can be while
still getting the information across. Emoji are encouraged!

## Strategy

### Course Lessons

It's a good idea to start a lesson by creating a scaffold. First write a one
line comment for each topic that you want to address in the lesson. For example:

```yaml
# introduce datasets

# SELECT 1 column

# SELECT multiple columns

# SELECT *

# LIMIT

# SELECT DISTINCT
```

Then write an exercise for each topic. You can familiarize yourself with how
exercises work by perusing the [exercises
documentation](/mobile/exercises/README.md).

Because space is so limited, it's extra important to split concepts up into the
smallest possible unit that can be explained in a single exercise. For example,
it's often valuable to first demonstrate a concept conceptually with a Multiple
Choice or Select Output/Table exercise, **before** asking students to produce
any code with a Select Code or Tap exercise. If you find yourself asking whether
something should be a single exercise or multiple exercises, the answer is
usually multiple.

One great strategy is to hit the same topic from multiple angles by using
different exercise types back to back. You will find that certain subjects
naturally lend themselves to certain exercise types, but in general you should
vary the exercise types as much as possible in a lesson.

It's a good idea to end a course lesson with several integrative exercises that
incorporate 2 or more concepts from the lesson.

### Practice Lessons

When writing a chapter practice lesson, assume that the student has successfully
completed all the course lessons in that chapter. Any covered material is fair
game for practice.

Keep in mind that practice exercises are presented in a random order, so unlike
course lessons, you can't build up concepts progressively - each exercise should
always be completely standalone.

Don't teach new concepts in the practice. The only time you should be include
context in a practice exercise is when you need to set up a scenario for the
exercise.

If you use a comment scaffold for the course lessons as [outlined
above](/mobile/authoring.md#course-lessons), then it's easy to copy and paste
all the individual topics that you need to hit in the practice. Drilling
individual concepts in the practice lesson is welcome, but you should also write
integrative exercises that combine concepts across lessons.

## Working with YAML

All mobile content is currently written in the YAML (Yet Another Markdown
Language) format. If you need a YAML crash course or refresher, we recommend
[this tutorial](https://gettaurus.org/docs/YAMLTutorial/).

You will often be writing code blocks or output blocks that span multiple
lines. You *can* use explicit newlines `\n`, but the easier and more readable
option is to use a feature of the YAML spec known as **literal scalar
blocks**. Just put `|-` after the colon `:` of a field and then indent the
following lines by another two spaces. Everything in the indented block will be
rendered verbatim, including newlines and all quotes.

Instead of this:

```yaml
solution: "v <- c(4, 9, 3, 5)\norder(v)"
```

Try this:

```yaml

solution: |-
  v <- c(4, 9, 3, 5)
  order(v)
```

A small wrench is thrown into things when the first line of the literal scalar
block needs to start with blank space. When that happens, you need to count the
number of blank spaces at the beginning of the first line `N`, and put that number
`N` after the `|-`. Then, indent the whole block an extra `N` characters. This
is easier demonstrated than explained.

Instead of this:

```yaml
output: "     [,1] [,2]\n[1,]    1    3\n[2,]    2    4"
```

Try this:

```yaml
output: |-5
            [,1] [,2]
       [1,]    1    3
       [2,]    2    4
```

See the [YAML spec](http://yaml.org/spec/1.2/spec.html) for more advanced YAML
features that might come in handy, but literal scalar blocks will be what you
need 99% of the time.

[This online YAML parser](https://yaml-online-parser.appspot.com) can also be
useful for diagnosing bugs in YAML. [The `mobile-teach`
linter](/mobile/development.md#linting) should be able to clearly pinpoint 100%
of errors, however.

## Working with UUIDs

Currently, UUIDs must be generated manually to serve as the unique key for every
[course](/mobile/repo-structure.md#course-metadata),
[chapter](/mobile/repo-structure.md#chapter-metadata),
[lesson](/mobile/repo-structure.md#lesson-metadata), and
[exercise](/mobile/exercises/README.md#key). This can alleviate this annoyance
by finding a UUID generator package for your text editor or IDE of choice. Some
examples:

* [Emacs](https://github.com/kanru/uuidgen-el)
* [Vim](https://github.com/kburdett/vim-nuuid)
* [Sublime Text](https://github.com/SublimeText/GenerateUUID)
