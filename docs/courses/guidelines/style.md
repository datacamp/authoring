# Course Style

Please follow DataCamp's style guidelines, to help create a consistent look and feel for students.

## Text

### Use American English

The USA contains our largest group of students.

Good: This standardizes the modeling of colors.  
Bad: This standardises the modelling of colours.  

### Use "you" rather than "we"

You should be consistent about the promoun. DataCamp has standardized on "you" in order to empower students.

Good: You are going to run a regression model.  
Bad: We are going to run a regression model.  

### Use parentheses after function/method names

It helps to distinguish from variable names.

Good: Call the `mean()` function.   
Bad: Call the `mean` function.

### Format package names as code

Likewise modules and libraries (depending upon the technology being used).

Good: The Python package `pandas` produces pretty plots.  
Bad: The Python package *pandas* produces pretty plots.  

## Code

Follow these standard style guides, unless you have a really good reason not to.

- R: [The tidyverse style guide](http://style.tidyverse.org)
- Python: [PEP 8](https://www.python.org/dev/peps/pep-0008)
- SQL: [Holywell's SQL Style guide](https://www.sqlstyle.guide)
- Shell: [Shell Style Guide](https://google.github.io/styleguide/shell.xml)
- C++ (for `rcpp`): [Google C++ Style Guide](https://google.github.io/styleguide/cppguide.html)

See also [Writing NormalExercise code](/courses/exercises/normal-exercises/code.html).

## Code comments

### Start each comment on a new line

Good: 

~~~~~
# Calculate the sum of x
y <- sum(x)
~~~~~

Bad: 

~~~~~
y <- sum(x) # Calculate the sum of x
~~~~~



### Add a single space after the comment char


Good: 

~~~~~
# Calculate the sum of x
y <- sum(x)
~~~~~

Bad: 

~~~~~
#Calculate the sum of x
y <- sum(x)
~~~~~

### Capitalize the first letter of every comment

Good: 

~~~~~
# Calculate the sum of x
y <- sum(x)
~~~~~

Bad: 

~~~~~
# calculate the sum of x
y <- sum(x)
~~~~~

### If you have one sentence, no `.` is required

Good: 

~~~~~
# Calculate the sum of x
y <- sum(x)
~~~~~

Bad: 

~~~~~
# Calculate the sum of x.
y <- sum(x)
~~~~~


### If you have multiple sentences in your comment, end each with a period

Good: 

~~~~~
# Calculate the sum of x. Assign the result to y.
y <- sum(x)
~~~~~

Bad: 

~~~~~
# Calculate the sum of x.  Assign the result to y
y <- sum(x)
~~~~~

### Don't use backticks or quotes to refer to variables or functions inside comments

Good: 

~~~~~
# Calculate the sum of x
y <- sum(x)
~~~~~

Bad: 

~~~~~
# Calculate the sum of `x`
y <- sum(x)
~~~~~


