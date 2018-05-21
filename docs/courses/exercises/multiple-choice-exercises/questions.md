# Writing `MultipleChoiceExercise` and `PureMultipleChoiceExercise` Questions

This page provides guidance on writing good multiple choice questions.

## Examples

From [Understanding your data](https://campus.datacamp.com/courses/deep-learning-in-python/building-deep-learning-models-with-keras?ex=2) in "Deep Learning in Python". This provides context around the workflow (you should explore your dataset before you start modeling it), and requires that the students type some code, and actually look at the dataset in order to answer.

> You will soon start building models in Keras to predict wages based on various professional and demographic factors. Before you start building a model, it's good to understand your data by performing some exploratory analysis.
> 
> The data is pre-loaded into a pandas DataFrame called `df`. Use the `.head()` and `.describe()` methods in the IPython Shell for a quick overview of the DataFrame.
> 
> The target variable you'll be predicting is `wage_per_hour`. Some of the predictor variables are binary indicators, where a value of 1 represents `True`, and 0 represents `False`.
> 
> Of the 9 predictor variables in the DataFrame, how many are binary indicators? The min and max values as shown by `.describe()` will be informative here. How many binary indicator predictors are there?

From [Variance and covariance by looking](https://campus.datacamp.com/courses/statistical-thinking-in-python-part-1/quantitative-exploratory-data-analysis?ex=13) in "Statistical Thinking in Python (Part 1)". The question forces the students to inspect and interpret a plot drawn onscreen.

> Consider four scatter plots of x-y data, appearing to the right. Which has, respectively,
> - the highest variance in the variable x,
> - the highest covariance,
> - negative covariance?

From [The Final Countdown](https://campus.datacamp.com/courses/object-oriented-programming-in-r-s3-and-r6/advanced-r6-usage?ex=9) in "Object-Oriented Programming in R: S3 & R6". This is notable for its use of a "choose all that apply" format.

> What are good uses of a `finalize()` method for your R6 class? Choose all the options that apply.

> 1. Closing connections to a database.
> 2. Removing all objects in the global environment.
> 3. Reverting settings to global `options()` or graphics `par()`ameters.
> 4. Forcing a garbage collection.


## FAQs

### What's the difference between each type of MC exercise?

- `MultipleChoiceExercise` includes a console, so students can type code.
- `PureMultipleChoiceExercise` only has the text block and question.

### When should I use each type of MC exercise?

Use `MultipleChoiceExercise` when you want the student to solve a programming problem in order to answer the question. Use `PureMultipleChoiceExercise` for questions related to concepts and interpreting results.


## Good ideas

### Provide context

You can write multiple choice questions that only ask a question. However, it is often beneficial to spend a sentence or two providing some motivation or context around the question.

### Make the students type something

Making students type some code in order to answer the question can increase engagement.

### Use a "choose all that apply" format

This means that students have to be able to ascertain the truth of every response statement, which increases the difficulty.


## Common problems and their solutions

### Asking trivial questions

Multiple choice questions are naturally tend towards being easier than coding questions. This can be compounded be asking trivial questions, for example those with a "yes or no" response.

### Using obtuse grammar

In order to compensate for the "easiness" problem, it can be tempting to word the question in an overly complex way, in order to make it difficult. It is typically better to ask a harder question in a clearer manner.

### Using "negative questions"

A common, special case of the previous point is to use [negative questions](https://www.englishgrammar.org/negative-questions). These often implicitly lead the students towards an answer, so it is recommended to rephrase them positively.
