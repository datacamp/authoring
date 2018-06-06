# Course Style

The main purpose of the DataCamp's style guidelines is to build out a course library that has a consistent look and feel for students.

The DataCamp style guide is heavily inspired by [Hadley Wickham's](http://r-pkgs.had.co.nz/style.html). It differs in small ways to better match educational needs, and introduces some new elements that are specific to DataCamp's content.

## Notation and naming

### Object names

- Variable names and function names are lowercase.

~~~~~
# Good
datacamp

# Bad
DataCamp
~~~~~

- Use an underscore (`_`) to separate words within a name.

~~~~~
# Good
learn_r_tutorial

# Bad
LearnRTutorial
learn.r.tutorial
~~~~~

- Variable names should be nouns.
- Function names should be verbs.
- Aim for concise and meaningful names.
- Avoid using names of existing functions and variables. Else, this can confuse new R enthusiasts.

## Syntax

- Use `<-` for assignment, not `=`.

~~~~~
# Good
datacamp <- "Cool"

# Bad
datacamp = "Not Cool"
~~~~~

- Place spaces around all infix operators (`=`, `+`, `-`, `<-`, etc.). 
- Place spaces around `=` when used in function calls. 
- Always put a space after a comma, and never before (just like in regular English).
- Exception: `:`, `::`, and `:::` do not need spaces.

~~~~~
# Good
average <- mean(feet / 12 + inches, na.rm = TRUE)
x <- 1:10
base::get

# Bad
average<-mean(feet/12+inches,na.rm=TRUE)
x <- 1 : 10
base :: get
~~~~~

- Place a space before left parentheses, except in a function call.

~~~~~
# Good
if (debug) do(x)
plot(x, y)

# Bad
if(debug)do(x)
plot (x, y)
~~~~~

- Do not use spaces around code in parentheses or square brackets (unless there's a comma, see above).

~~~~~
# Good
mtcars[5, ]

# Bad
mtcars[5,]
~~~~~

## Curly braces

- Opening curly braces never continue on their own line and are always followed by a new line.
- Closing curly braces always continue on their own line, unless followed by an else statement.

~~~~~
# Good
if (grade > 10) {
  message("Student passed")
}

# Bad
if (grade>10)
{ message("Student passed") }
if (grade>10) { message("Student passed") }
~~~~~

- It's OK to leave very short statements on the same line:

~~~~~
if (y < 0 && debug) message("Y is negative")
~~~~~

## Look and feel of interactive content

### Writing style

- Use American English.
- Correct punctuation should be present in: Assignment, Hint, Instructions, Submission Correctness Tests.
- Use the "you"-form to give chapters a personal touch rather than we-ing.
- Check spelling.

### Assignment, instructions, hint

- R code is placed between backticks (e.g. `r_code`, `r_function_name()`) inside normal text.
- Package names are also written in code style, using backticks.
- Functions are written with `()` and inside backticks: `r_function_name()`.
- Blocks of code are formatted using three backticks: 

~~~~~
# Good
```
create_code_block <- function() {
  print("OK")
}
```

# Bad
`
createcodeblock <- function() {
  print("OK")
}
`
~~~~~

- Emphasise non-code words via _italics_. Use **bold** to introduce new concepts.
- Place mathematical expressions between `$` signs, and use LaTeX notation for symbols and expressions.

~~~~~
# Good
$ a_1 = b_1 + c_1 $

# Bad
a_1 = b_1 + c_1
~~~~~

## Sample code and solution code

- Do not use `;` at the end of a line.
- Use double quotes for R strings `"`.

~~~~~
# Good
authors = c("Ross Ihaka", "Robert Gentleman")

# Bad
authors = c('Ross Ihaka', 'Robert Gentleman');
~~~~~

- The first argument shall not be called by its name, typically other arguments should be named.

~~~~~
# Good
points(point, cex = .5, col = "dark red")

# Bad
points(x = point, cex = .5, col = "dark red")
~~~~~

- The solution code should run without errors.

~~~~~
# Good
# Assign 5 to x


# Bad
# Assign 5 to x
x <- ___

# Also bad
x <-
~~~~~

## Comments

- Start each comment on a new line. The comment should begin with the comment symbol and a single space: `#`.
- Capitalize the first letter of every comment.
- If you have multiple sentences in your comment, end each with a period. If you have one sentence, no `.` is required.

~~~~~
# This is a good comment
# This is also a good comment. But this time with two sentences.

# This is a bad comment. 
# This is a bad comment. But this time with two sentences
~~~~~

- Don't use backticks or quotes to refer to variables or functions inside comments:

~~~~~
# This is a good way to refer to a variable x or the function my_fun()

# This is a bad way to refer to a variable `x` or the function 'my_fun()'
~~~~~

## Submission correctness test

- You can use Markdown syntax inside the R strings of the SCT feedback for function names, variable names, package names, etc. `testwhat` converts the strings to HTML so that they are correctly rendered.

~~~~~
# Good
test_object("x",incorrect_msg = "Have you specified the variable `x` correctly?")
success_msg("Well done. `x` is a variable.")
success_msg("Well done. `mean()` is a function.")

# Bad
test_object("x",incorrect_msg = "Have you specified the variable x correctly?")
success_msg("Well done. 'x' is a variable.")
success_msg("Well done. \"mean()\" is a function.")
~~~~~
