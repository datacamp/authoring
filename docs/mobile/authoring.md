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
process documentation](../development.md).

Create and checkout a feature branch to write your course in. For example:

```sh
git checkout -b chapter-1
```

> #### info::Note
> You should author content on a feature branch, *not* on the `master` or
> `development` branches!

You are free to use whatever editing tools you like on your local repository, eg
Sublime, Vim, Emacs, etc. It can be helpful to use an IDE that allows you to
expand snippets, and to write a snippet expansion for different exercise
types. Bonus points if your IDE of choice allows you to automatically generate
UUIDs for your exercises.

Visit the [exercises documentation](exercises/readme.md) to see how exercises
are written and see some examples.

The best workflow is generally to open an appropriate interpreter side by side
with the content file, so that you can play with code and quickly insert it into
your exercises. This might be IPython, R, or a SQL client like `psql` or
`sqlite`.

Currently, all UUIDs (eg for chapters, lessons, and exercises) must be generated
manually. This annoyance can be alleviated by finding a UUID generator package
for your text editor or IDE of choice. Some examples:

* [Emac](https://github.com/kanru/uuidgen-el)
* [Vim](https://github.com/kburdett/vim-nuuid)
* [Sublime Text](https://github.com/SublimeText/GenerateUUID)

## Strategy

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
documentation](exercises/readme.md). Don't be afraid to split one topic into 2
or even 3+ exercises if it's difficult to teach something in a single
exercise. One great strategy is to hit the same topic from multiple angles by
using different exercise types back to back. You will find that certain subjects
naturally lend themselves to certain exercise types, but in general you should
try to vary the exercise types in a lesson.

## Working with YAML

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
output: "[,1] [,2]\n[1,]    1    3\n[2,]    2    4"
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
linter](../development.md#linting) should be able to clearly pinpoint 100% of
errors, however.

You don't need to use quotes in your key-value pairs unless the value itself
contains a single or double quote.
