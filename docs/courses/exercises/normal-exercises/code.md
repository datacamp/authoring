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

### TODO

???

## Good ideas

### TODO

???

## Common problems and their solutions

### TODO

???
