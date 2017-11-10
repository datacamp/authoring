## Mutating joins
  
Mutating joins add new variables to one data set from another data set, matching observations across rows in the process. This chapter will explain the various ways you can join data sets together and what happens when you do.

### Welcome to the course!

```yaml
type: VideoExercise
```

Introduction. Why use dplyr to join data? Many data sets come in multiple tables, in fact that's the easiest way to store large data. dplyr joins faster are faster than base merges and preserve row order. You can also use them with dplyr's built in SQL backend.


***

### The advantages of dplyr

```yaml
type: MultipleChoiceExercise
```

Which is not a reason to use dplyr to join data?


***

### Our data

```yaml
type: NormalExercise
```

Which data set contains the X variable?


***

### Keys

```yaml
type: VideoExercise
```

To join two tables you need to identify a pair of keys that connect the tables. Keys are variables whose values are shared across tables. There are two kinds of keys, primary and secondary.


***

### Primary keys

```yaml
type: MultipleChoiceExercise
```

Examine the data set, what is the primary key for this data set?


***

### Secondary keys

```yaml
type: MultipleChoiceExercise
```

Which data sets have a secondary key that matches the primary?


***

### Multi-variable keys

```yaml
type: MultipleChoiceExercise
```

In some cases the unique primary key is the interaction of two or more variables. What would be the primary key of this data set?


***

### Joins

```yaml
type: VideoExercise
```

Demonstrate left_join() and right_join().


***

### A basic join

```yaml
type: NormalExercise
```

Use pre-code with left_join()


***

### A right join

```yaml
type: NormalExercise
```

Use pre-code with right_join()


***

### Right vs. left

```yaml
type: MultipleChoiceExercise
```

Can you tell the difference between a right and a left join? How many rows will the result have if you right join the two data sets to the right. Each data set contains one unique observation per row. Pre-code should show the nrow() of two data sets and the nrow() of left joining them.


***

### Variations on joins

```yaml
type: VideoExercise
```

Explain diagram syntax. Demonstrate the differences between left_join(), right_join(), inner_join(), and full_join().


***

### Inner joins

```yaml
type: NormalExercise
```

Use pre-code to complete an inner_join()


***

### Full joins

```yaml
type: NormalExercise
```

Use pre-code to complete an full_join()


***

### Choose a join

```yaml
type: MultipleChoiceExercise
```

Describe a result and have students choose which of the joins will return it.


***

### Use a join

```yaml
type: NormalExercise
```

Use a dplyr join function to return every row that appears in either data set.



---

## Filtering joins and set operations
  
Filtering joins and Set operations combine information from data sets without adding new variables. Filtering joins filter the observations of one data set based on whether or not they occur in a second data set. Set operations use combinations of observations from both data sets to create a new data set.

### Semi-joins

```yaml
type: VideoExercise
```

Have you ever tried to filter data based on the combination of many variables. You could try to do this with `filter()`, but it will be much easier with a semi-join.


***

### Semi-join

```yaml
type: NormalExercise
```

Return just the rows of X that we have Y information for


***

### Semi-join 2

```yaml
type: NormalExercise
```

Do any of the rows in X match any of the rows in Y?


***

### A more precise way to filter?

```yaml
type: MultipleChoiceExercise
```

We've attempted to rewrite this semi-join as a filter. Will it return the same results?


***

### Anti-joins

```yaml
type: VideoExercise
```

Anti-joins do the opposite of semi-joins, they show which rows do not have matches. Anti-joins are a convenient way to check for errors before they occur.


***

### Anti-join

```yaml
type: NormalExercise
```

Which rows of X do we not have Y information for?


***

### Anti-Join 2

```yaml
type: NormalExercise
```

Were any of the keys of X mis-entered? Use an anti-join to check


***

### Which filtering join?

```yaml
type: NormalExercise
```

Use a filtering join to determine how many matches exist between X and Y


***

### Set Operations

```yaml
type: VideoExercise
```

Set operations include union(), intersect() and setdiff(). They let you group observations from two data sets into a new data set.


***

### Union

```yaml
type: NormalExercise
```

How many unique observations are there in these two data sets?


***

### Intersection

```yaml
type: NormalExercise
```

How many observations are shared between these two data sets?


***

### Setdiff

```yaml
type: NormalExercise
```

Which observations are in X but not Y?


***

### Operations

```yaml
type: NormalExercise
```

Combine union and setdiff operations to return all of the observations that are in one data set, but not the other.


***

### Unique values

```yaml
type: MultipleChoiceExercise
```

Will the result of this union statement contain fewer rows than the original data set? That would seem paradoxical.


***

### Comparing data sets

```yaml
type: VideoExercise
```

Use setequal or all.equal to check whether two data sets contain of the same observations.


***

### setequal

```yaml
type: NormalExercise
```

Does the second data set contain any new information?


***

### setequal

```yaml
type: NormalExercise
```

Write a filtering join that would also check if the second data set contains new information?



---

## Assembling data
  
This chapter will show you how to build data sets from more basic elements: vectors, lists, and individual data sets that do not require a join. dplyr contains a set of functions for assembling data that work faster and more intuitively that base R's functions. The chapter will also look at when dplyr uses, and when it doesn't use, data type coercion.

### Binds

```yaml
type: VideoExercise
```

Binds join data sets together in a very simple way; they either add one data set as observations of the other or as variables of the other. Demo of bind_rows() and bind_cols.


***

### Which bind?

```yaml
type: NormalExercise
```

Bind these data sets into a single data set. Which bind should you use?


***

### Bind rows

```yaml
type: NormalExercise
```

Use one command to bind the entire list of data sets into a single data set. Then run the complete code to do something nice.


***

### Bind columns

```yaml
type: NormalExercise
```

Use bind cols


***

### Danger

```yaml
type: MultipleChoiceExercise
```

What is the biggest risk when using bind cols?


***

### Build a better data frame

```yaml
type: VideoExercise
```

data_frame() is a trimmed down version of data.frame that never coerces inputs (i.e. strings stay as strings!), never adds row.names, never munges column names, only recycles length 1 inputs, evaluates its arguments lazily and in order, and adds tbl_df class to output. frame_data() does the same thing rowwise


***

### data_frame

```yaml
type: MultipleChoiceExercise
```

Which is not an advantage of data_frame over data.frame?


***

### Make a data frame

```yaml
type: NormalExercise
```

Turn this columnwise data into a data frame


***

### Make another data frame

```yaml
type: NormalExercise
```

Turn this rowwise data into a data frame


***

### Make one last data frame

```yaml
type: NormalExercise
```

Turn this list into a data frame


***

### Working with data types

```yaml
type: VideoExercise
```

There are several different common data types in R, and sometimes R has to turn one into another, which is known as coercion. Here's how to tell what data types you have and how  (and when) dplyr will coerce them


***

### Atomic data types

```yaml
type: MultipleChoiceExercise
```

Which best describes R's coercion rules?


***

### Determining type

```yaml
type: NormalExercise
```

Run the code to see the type of X$x. Then write code and determine the type of Y$x


***

### Results

```yaml
type: NormalExercise
```

Join the data sets together by x with a left join. Then determine the type of the output x.



---

## Advanced joining
  
Now that you have the basics, let's dive deep into the mechanics of joins. This chapter will show you how to spot common join problems; how to join based on multiple, or mis-matched keys; how to join multiple tables; and how you can recreate dplyr's joins with SQL and base R.

### What can go wrong?

```yaml
type: VideoExercise
```

Data entry errors can derail your joins. Here are the most common types and how to search for them: duplicate keys in your data set and missing keys.


***

### Spot the key

```yaml
type: MultipleChoiceExercise
```

What is the primary key for this data set?


***

### Unique keys

```yaml
type: MultipleChoiceExercise
```

Does the primary key uniquely identify each row? (no, you can add your own primary key with add_rownames())


***

### Too many keys

```yaml
type: NormalExercise
```

Join the data sets together. What happens to the duplicate keys?


***

### Missing keys

```yaml
type: NormalExercise
```

Which rows contain a missing key variable?


***

### Defining the keys

```yaml
type: VideoExercise
```

dplyr gives you a lot of control over how you join rows in data sets. You can rely on dplyr to match up rows automatically, select a subset of keys to join on, or specify a join between keys that have different names.


***

### Which keys?

```yaml
type: MultipleChoiceExercise
```

Which keys will dplyr join on if you set by = "NULL" (the default)?


***

### A subset of keys

```yaml
type: NormalExercise
```

Join based on just the x variable. What will happen to the duplicate y and z variables?


***

### Mis-matched key names

```yaml
type: NormalExercise
```

Join based on just the X$x variable and the Y$y variables


***

### More mis-matched names

```yaml
type: NormalExercise
```

Join based on these sets of variables


***

### Joining multiple tables

```yaml
type: VideoExercise
```

Joins are always defined as a relationship between two data sets. To join more than two data sets together, join them iteratively with the `purrr::Reduce()` function


***

### purrr

```yaml
type: MultipleChoiceExercise
```

purrr is a package that does what?


***

### Join multiple tables

```yaml
type: NormalExercise
```

Join these n tables


***

### Filter multiple tables

```yaml
type: NormalExercise
```

Which observations are common to all n tables?


***

### Other implementations

```yaml
type: VideoExercise
```

Dplyr joins are analagous to other joins you may be doing (or may one day want to do) in other languages. Here we look at how to recreate dplyr joins with the base function merge and SQL.


***

### SQL

```yaml
type: MultipleChoiceExercise
```

TRUE or FALSE, you can recreate each type of SQL join with dplyr



---

## Case study
  
You know the in's and out's of two-table verbs with dplyr, but your knowledge is untried! Let's cement what you've learned with a real world application.

### TBD

```yaml
type: VideoExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: VideoExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: VideoExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD


***

### TBD

```yaml
type: NormalExercise
```

TBD

