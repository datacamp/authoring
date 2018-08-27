# Writing `NormalExercise` code

This page gives advice on how to write good sample and solution code for `NormalExercise`s.

## Examples

From [Filtering summarized output](https://campus.datacamp.com/courses/exploratory-data-analysis-in-r-case-study/data-cleaning-and-summarizing-with-dplyr?ex=11) in "Exploratory Data Analysis in R: Case Studies".  The sample provides enough scaffolding in the sample code to implicitly indicate that the student should use a piped syntax. The comment clearly describes the task, but omits important details (like how to calculate the number of votes), which means the students must start thinking.

Sample code:

>     # Filter out countries with fewer than 100 votes
>     by_country %>%
>       arrange(percent_yes)

Solution code:

>     # Filter out countries with fewer than 100 votes
>     by_country %>%
>       arrange(percent_yes) %>%
>       filter(total * percent_yes >= 100)

From [The Hello World of SQL Queries!](https://campus.datacamp.com/courses/importing-data-in-python-part-1/working-with-relational-databases-in-python-3?ex=7) in "Importing Data in Python (Part 1)". This code is a little longer than ideal, however it nicely demonstrate different levels off scaffolding. Lines of code that the students have seen before are left completely blank. Lines of code that are new are partially completed, and have underscores to denote the place that students need to type. Lines of code that are not the focus of the exercise (setting up the engine; printing output) are completely filled in so the student doesn't need to worry about them.

Sample code:

>     # Import packages
>     from sqlalchemy import create_engine
>     import pandas as pd
>     
>     # Create engine: engine
>     engine = create_engine('sqlite:///Chinook.sqlite')
>     
>     # Open engine connection: con
>     
>     
>     # Perform query: rs
>     rs = con.execute(____)
>     
>     # Save results of the query to DataFrame: df
>     df = pd.DataFrame(____)
>     
>     # Close connection
>     
>     
>     # Print head of DataFrame df
>     print(df.head())

Solution code:

>     # Import packages
>     from sqlalchemy import create_engine
>     import pandas as pd
>     
>     # Create engine: engine
>     engine = create_engine('sqlite:///Chinook.sqlite')
>     
>     # Open engine connection: con
>     con = engine.connect()
>     
>     # Perform query: rs
>     rs = con.execute("SELECT * FROM Album")
>     
>     # Save results of the query to DataFrame: df
>     df = pd.DataFrame(rs.fetchall())
>     
>     # Close connection
>     con.close()
>     
>     # Print head of DataFrame df
>     print(df.head())


## FAQs

### How much code can I include?

The [content guidelines](/courses/guidelines/content.html#normalexercise) limit you to 15 lines of code per exercise. It's also a good idea to keep lines of code under 60 characters, so the code displays nicely on smaller laptops and tablets.

### How should I write comments?

Comments should be sentence case (only the first word and proper nouns are capitalized), and kept under 60 characters.


## Good ideas

### Write the solution code first

It is typically easier to write the solution code then delete portions to create the sample code (rather than writing the sample code first then completing it to create the solution).

### Match comments to instructions

Usually there should be exactly one code comment per instruction.

### Use human-readable variable names

Clarity is more important than brevity. Descriptive variable names are the easiest way to make the code more human-readable.


## Common problems and their solutions

### Too many possible solutions

If there are lots of possible solutions to a problem, in can become difficult to test that the student got the correct answer. In that case, you may need to provide give explicit instructions to the students on how to solve the exercise, or provide additional code scaffolding to enourage the students in a particular direction. Ask your Content Developer for advice.

### Too much scaffolding

In order to make an exercise easier to solve, it is tempting to provide a lot of scaffolding in the sample code. This is may be acceptable for beginner courses, or where a lot of code is unavoidable. However, eccessive sacafolding risks turning the exercise into a simple "fill-in-the-blanks" situation that discourages the students from bothering to understand the code as a whole.

### Overwriting variables

If you overwrite the values of a variable in an exercise, and a student runs the code several times, it has the potential to break that exercise. Try to give unique names to assigned variables.
