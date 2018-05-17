# Writing `NormalExercise` Intro Text 

This page gives advice on how to write good introductory text for `NormalExercise`s.

## Examples

From [Sorting multiple columns](https://campus.datacamp.com/courses/intro-to-sql-for-data-science/sorting-grouping-and-joins?ex=5) in "Intro to SQL for Data Science". This has a single sentence to introduce the new syntax to be used, followed by the pattern of the code to be used in the exercise.

> `ORDER BY` can also be used to sort on multiple columns. It will sort by the first column specified, then sort by the next, then the next, and so on. For example,
> 
>     ```
>     SELECT birthdate, name
>     FROM people
>     ORDER BY birthdate, name;
>     ```
> 
> sorts on birth dates first (oldest to newest) and then sorts on the names in alphabetical order. > > **The order of columns is important!**
> 
> Try using `ORDER BY` to sort multiple columns! Remember, to specify multiple columns you separate the column names with a comma.

From [Exploring lists](https://campus.datacamp.com/courses/writing-functions-in-r/a-quick-refresher?ex=12) in "Writing Functions in R". This has a few sentences that nicely motivate the problem, followed by an introduction to the functions that will be covered in the exercise.

> Often you won't know exactly what is inside a list. But, you'll need to figure it out to get some useful piece of data. Extracting elements from the output of the `names()` and `str()` functions is a great way to explore the structure of a list.
> 
> Calling `names()` on a list will give you names at the top level of the list and `str()` will give you a full description of the entire list (which can sometimes be a little overwhelming).
> 
> `tricky_list` has a regression model stored in it. Let's see if we can drill down and pull out the slope estimate corresponding to the wt variable.


## FAQs

### Can I link to external resources?

You can link to the sources of datasets when you introduce them, and you can link to code documentation (in particular, to RDocumentation for R functions). In general, external linking is discouraged since students click on the links, get distracted by the internet, and forget to return to the course.

## Good ideas

### Think about the learning objective before you start writing

It is useful to consider [what you want the students to learn](courses/exercises/all-exercise-types/learning-objective.md) in this exercise, before you start writing the text.

### Keep it short

The [Content Guidelines](courses/guidelines/content.html#normal-exercise) limit the number of characters in the intro text to 780 characters, which is less than three Tweets. Be ruthless about editing!

### Motivate the problem

It is useful for students to know why they are doing an exercise. Including a sentence to explain what the problem is that is going to be solved in the exercise can be helpful.

### Introduce the tools for solving the problem

Any new code (packages, classes, functions, arguments, etc.) or concepts required to solve the exercise should be briefly mentioned. In this case "new" means "not mentioned in a previous coding exercise".

### Show a code pattern

Showing the shape of the code that the student needs to write, or an example using a different dataset, can be helpful to prompt the students.

### Include a diagram

If pictures are a thousand words, they can explain much more than 780 characters of text!


## Common problems and their solutions

### Digressing

It is very tempting to write down everything you know about a subject. Experience suggests that keeping things simple is a better strategy for helping students to learn. If in doubt, follow this heuristic:

> [Never hesitate to sacrifice truth for clarity.](http://third-bit.com/teaching/rules.html)

### Omitting the "why"

If a student can't see the point of an exercise, they are less likely to complete it. This section should favor explaining "why" over explaining "how".
