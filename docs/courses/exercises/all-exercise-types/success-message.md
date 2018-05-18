# Success Messages

This page describes how to write the success message that appears when the student completes the exercise.

## Examples

From [Working with parquet files](https://campus.datacamp.com/courses/introduction-to-spark-in-r-using-sparklyr/case-study-learning-to-be-a-machine-running-machine-learning-models-on-spark?ex=4) in "Introduction to Spark in R using sparklyr". This has a creative piece of praise, followed by a heuristic that is useful to know, but hard to demonstrate directly in the exercise.

> Smooth as some parquet flooring! Reading and writing Parquet files is much quicker than reading and writing CSV files, and typically faster than using `copy_to()`.

From [Exploring ggplot2, part 1](https://campus.datacamp.com/courses/data-visualization-with-ggplot2-1/chapter-1-introduction-f5aef4fe-3bbb-4e18-b29a-8fb1361d7835?ex=3) in "Data Visualization with ggplot2 (Part 1)". This begins with (almost) alliterative praise, followed by a comment that draws the student's attention to the plot that they just drew. It mentions a problem that motivates the following exercise.

> Phenomenal plotting! Notice that `ggplot2` treats `cyl` as a continuous variable. You get a plot, but it's not quite right, because it gives the impression that there is such a thing as a 5 or 7-cylinder car, which there is not. 

## FAQs

### How do I think of good praise?

In R, you can use the praise package. In particular, [`praise::praise_parts`](https://www.rdocumentation.org/packages/praise/topics/praise_parts) lists many positive words, categorized as adjectives and abverbs. Another possibility using R is

```r
library(tidytext)
library(dplyr)
get_sentiments() %>% arrange(desc(score))
```

Failing that, try a thesaurus!


## Good ideas

### Be creative about the praise

"Great!" is not as great as you think! It's good to have a bit of variation. Try using rhymes or alliteration, and relating the praise to the contents of the exercise.

### Draw attention to the results

For exercises that get the students to calculate results or draw a plot, it's very easy for the student to complete the exercise then not actually look at what they've just done. A success message that highlights an interesting results can be used to get the students to go back and look what what they just made.

### Motivate the next exercise

By highlighting a problem with something in the exercise, you can motivate the contents of the next exercise (where you solve that problem).

### Pretend it's a footnote

Remember those extra sentences you cut from the exercise's intro text in order to fit the content guidelines? The success message is an ideal place to include the digressions and heuristics that weren't quite important enough to fit into the main exercise.

## Common problems and their solutions

### Not writing anything

It is technically possible to get away with not writing anything useful in the success message, but this is a wasted opportunity. Remember that the success mesage is the last thing the student sees before they rate your exercise!
