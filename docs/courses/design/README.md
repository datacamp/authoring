# Course Design

Please see <https://www.datacamp.com/teach/> for your course's dashboard.

## How to read this document

This document provides much of the information that is required to write a good course spec.
There is a lot of information to assimilate, so it is best to read it in small pieces.

- Before you write any of the course spec, read everything up to [Step 1 - Brainstorming](/courses/design/#step-1-brainstorming).
- As you begin each step (or sub-step), read the documentation for that step only.

## Introduction

Designing a good course is like designing good software.
To help you, this document describes a process based on evidence-based teaching practices:

- It lays out a step-by-step progression to help you figure out what to think about in what order.
- It provides spaced check-in points so you and your Curriculum Lead (CL) can re-scope or redirect effort.
- The end product specifies deliverables clearly so you can finish development without major surprises.
- Everything from Step 2 onward goes into your final course, so there is no wasted effort.
- Getting you to write sample exercises early lets DataCamp check that we can support everything you want your students to do.

We use the design of our course on tree-based models in Python as a running example.

**Note: the steps are described in order of increasing detail,
but the process itself is always iterative.
You will frequently go back to revise earlier work
as you learn something from your answer to a later question
or realize that your initial plan isn't going to play out the way you first thought.**

## Technical help

You need to have basic competence at writing markdown documents and using GitHub.
See the [technical help resources](/courses/design/technical-help-resources.md) page for advice on getting started.
Your Curriculum Lead will also provide technical help if you need it.

## Terminology and Structure

- A **course** is a self-contained module with its own top-level entry in our catalog,
  its own GitHub repository,
  etc.
- A **chapter** is a major section of a course.
- Chapters are made up of **lessons**,
  each of which has a short video and a handful of **exercises**.

A course typically has about the same amount of content as a half-day conference workshop,
and contains 44-60 exercises (including videos) and 4-5 chapters.
A typical breakdown is:

- Chapter 1: 8-12 exercises
- Chapter 2: 10-16 exercises
- Chapter 3: 10-16 exercises
- Chapter 4: 10-16 exercises
- Chapter 5 (optional): 10-16 exercises

## Types of courses

There are three types of course:

1. Technology courses.
   These focus on teaching the features of a particular package or technology.
   This is how we teach plotting: for example, we have courses on ggplot2 and Bokeh, not courses on scatterplots and histograms.
1. Technique courses.
   These focus on how, why, and when to use a technique.
   This is how we teach statistics: for example, we have courses on cluster analysis and network analysis, not courses on the packages that implement them.
1. Application courses.
   These start with a business problem or scientific problem, and explain what the problem is, what the data looks like, and how to solve the problem. 

The type of course you are going to make affects the relative importance of different elements in the course spec.
Ask your Curriculum Lead if you aren't sure of the type.

<!-- -------------------------------------------------------------------------------- -->

## Step 1: Brainstorming

The first step is to throw together some rough ideas
so that you and your CL can make sure your thoughts about the course are aligned.
To do this,
write some *short* point-form answers to three or four of the questions listed below.
You aren't expected to answer all of them,
and you may pose and answer others if you and your CL think it's helpful,
but you should always include a couple of answers to the first.

Click the links on each question to see more details about how to write an answer.

1. [**What problem(s) will student learn how to solve?**](/courses/design/brainstorming-problems.md)
   E.g., "how to draw plots using `ggplot2`"
   or "how to forecast product demand".

2. [**What concepts and techniques will students learn?**](/courses/design/brainstorming-concepts.md)
   E.g., "the split-train-model-predict workflow"
   or "rolling back Git commits".

3. [**What technologies, packages, or functions will students use?**](/courses/design/brainstorming-technologies.md)
   E.g., "`ggplot2` for drawing plots".

4. [**What terms or jargon will you define?**](/courses/design/brainstorming-jargon.md)
   E.g., "boosting versus bagging"
   or "block/factor/sequential designs".

5. [**What analogies or heuristics will you use to explain concepts?**](/courses/design/brainstorming-analogies.md)
   E.g., "ggplots are like Lego for graphics"
   or "draw a simple plot then add elements one by one"
   (See [Gelman & Nolan][teaching-statistics] for more ideas here.)

6. [**What mistakes or misconceptions do you expect?**](/courses/design/brainstorming-mistakes.md)
   E.g., "changing colors works differently if the color argument is inside an aesthetic or not"
   or "overfitting models to the data".

7. [**What datasets will you use?**](/courses/design/brainstorming-datasets.md)
   E.g., "anything but the diamonds and mtcars datasets"
   or "something from the UCI Archive".

You may not need to answer every question for every course,
and you will often have questions or issues we haven't suggested,
but couple of hours of thinking at this stage can save days of rework later on.

**Checkin:** a rough scope for the course that you have agreed with your CL.

### Running Example

Brainstorming for the course on tree-based models in Python produced this list:

1. What problem(s) will student learn how to solve?
   - How to model supervised learning problems using decision-trees (CART) and some ensemble methods.
2. What techniques or concepts will students learn?
   - Using `scikit-learn` to successfully train decision-tree-based models.
   - Learning how to reduce the bias and variance of tree models through ensembling.
3. What technologies, packages, or functions will students use?
    - `scikit-learn` for creating and evaluating models, 
    - `matplotlib`, `seaborn`, `mlxtend` and some custom functions for plotting, 
    - `pandas` for reading and manipulating data.
4. What terms or jargon will you define?
    - Entropy and Gini indices
    - Information gain
    - The bias-variance tradeoff
    - Generalization error
    - Ensembling
    - Bootstrap
    - Bagging versus random forests
    - Boosting
    - Gradient Boosting versus Adaboost
    - Hyperparameter tuning for tree-based models
5. What analogies will you use to explain concepts?
    - Given an observation characterized by features and a label,
      a decision tree is like a detective asking a sequence of if/else questions about the features
      in order to figure out the label.
    - Ensembling is equivalent to combining the judgments of several experts on a particular topic:
      the combined judgement is in principle less prone to errors than a judgement made by a single expert.
    - Tuning the hyperparameters of a model is like regulating the control knob of a thermostat in a room
      to obtain the most convenient temperature for all people in the room.
6. What heuristics will help students understand things?
   - Fit a decision tree to the dataset and observe the produced decision regions.
   - Fit different tree models to bootstrap samples drawn from the dataset
     and then aggregate their predictions and plot the resulting decision regions.
7. What mistakes or misconceptions do you expect?
   - Understanding how to diagnose when a tree-based model is overfitting the training set.
   - Not knowing which are the best hyperparameters to optimize for the different tree-based models.
8. What datasets will you use?
   - Breast Cancer Wisconsin (diagnostic) dataset
   - Indian liver patient records
   - Automobile miles per gallon
   - Bikes

<!-- -------------------------------------------------------------------------------- -->

## Step 2: Who Is This Course For?

"Beginner" and "expert" mean different things to different people,
and many factors besides pre-existing knowledge influence who a course is suitable for.
The second step in designing a course is therefore to agree on an audience with your CL.
To help you do this,
we have created [learner personas](personas.md) for typical DataCamp students.
Each persona describes the person's general background,
what they already know,
and what they think they want to do.

After you are done brainstorming,
you should go through these personas
and decide which of them your course is intended for,
and how it will help them.
While doing this,
you should make some notes about what specific prerequisite skills or knowledge you expect students to have
above and beyond what's in the persona.
If none of our personas capture your intended audience,
talk to your CL to make sure you agree on who you're aiming for.

**Checkin:** brief summaries of who your course will help and how.

Note: Please do not copy the profiles into your course design,
since we will update them as we gather more data on our learners.
Instead,
link to them and comment on how the course relates to them.

More advice [here](/courses/design/choose-learner-personas.md).

### Running Example

- [Alex](personas.md#advanced-alex)
  builds and uses decision trees on a regular basis using off-the-shelf software,
  and will take this course to learn how those packages work
  so that he can prepare data to use with them.

- [Sindhu](personas.md#starting-sindhu)
  is new to decision trees,
  and will take this course to learn about their capabilities and limitations.

<!-- -------------------------------------------------------------------------------- -->

## Step 3: What Will Learners Do Along the Way?

The best way to make the goals in Step 1 firmer is
to write full descriptions of a couple of exercises
that students will be able to do toward the end of the course.
Writing exercises early is directly analogous to [test-driven development][tdd]:
rather than working forward from a (probably ambiguous) set of learning objectives,
designers work backward from concrete examples of where their students are going.
Doing this also helps uncover technical requirements
that might otherwise not be found until uncomfortably late in the lesson development process.

More advice on [capstone exercises](/courses/design/exercises-capstone.md).

To complement the full exercise descriptions,
you should also write brief point-form descriptions of one or two exercises per chapter
to show how quickly you expect learners to progress.
(Again,
these serve as a good reality check on how much you're assuming,
and help uncover technical requirements.)
One way to create these "extra" exercises
is to make a point-form list of the skills needed to solve the major exercises
and create an exercise that targets each.

More advice on [example exercises](/courses/design/exercises-examples.md).

**Checkin:** 1-2 fully explained exercises that use the skills the student is to learn,
plus half a dozen point-form exercise outlines.

Note: be sure to include solutions with example code
so that the CL can check that our platform can do everything you need.

### Running Example

1) Fit a CART model to the Wisconsin Breast Cancer dataset in order to
classify a tumor as malignant or benign.  Recall from the supervised
learning course that the data has to be first split into a train and a
test set.

- Import the `DecisionTreeClassifier` model from the `sklearn.tree` module.  
- Import `train_test_split` from `sklearn.model_selection`.
- Select the columns `radius_mean` and `concave points_mean` from `df` as the features matrix `X` .
- Select the column `diagnosis` from `df` as the target vector `y`.
- Using `train_test_split`, split the data into 80% train and 20% test in a stratified way
  by specifying the `test_size` to 0.2
  and the  `stratify` parameter to `y`.
- Instantiate a `DecisionTreeClassifier` called `dtc`
  with a minimum percentage of sample leafs equal to 0.02 by specifying the `min_samples_leaf` parameter.
  For reproducibility, also set the `seed` to 3 by specifying the `random_state` parameter.
- Fit the classifier to the training data using the `.fit()` method.
- Evaluate the classifier on the test set using the `.score()` method, then print it.

**Solution**

```python
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import  train_test_split

X = df[['radius_mean', 'concave points_mean']]
y = df['diagnosis'].map({'M': 1, 'B':0})

X_train, X_test, y_train, y_test = \
  train_test_split(X, y, test_size = 0.2, stratify = y, random_state = 3)

dtc = DecisionTreeClassifier(min_samples_leaf = 0.02, random_state = 3)
dtc.fit(X_train,y_train)

score = dt.score(X_test,y_test)
print(score)
```

2) Visualize the decision regions obtained by the decision tree
classifier that you trained above.

- Import `plot_decision_region` from `mlxtend.plotting`.
- Visualize the obtained decision regions by calling the `plot_decision_regions` function;
  pass the arguments `X.values`, `y.values` and the classifier `dtc` as `clf` respectively.
  Using the `.values` attribute for `X` and `y` ensures that  you are passing NumPy arrays to the function. 
 
**Solution**

```python
from mlxtend.plotting import plot_decision_regions

plot_decision_regions(X.values,y.values, clf=dt)
plt.ylim(0,.2)
plt.xlim(6,29)
plt.show()
```

3) Train a `DecisionTreeClassifier` and a `BaggingClassifier` on all
the features of the Wisconsin Breast Cancer dataset. You'll get to
experiment with the code and explore how ensembling reduces the
variance of CARTs.

- Import the `BaggingClassifier` model from the `sklearn.ensemble` module.
- Import the `DecisionTreeClassifier` model from the `sklearn.tree` module.
- Select all the columns from `df` except 'id','diagnosis' and 'Unnamed: 32' as the features matrix `X`.
- Set the `seed` value to 4 and the number of estimators for the `BaggingClassifier` to 400.
- Using `train_test_split`, split the data into 80% train and 20% test in a stratified way.
- Instantiate a `DecisionTreeClassifier` called `dtc` and a `BaggingClassifier` with 400 estimators.
- Fit the two classifiers to the training data.

4) Implement a Gradient-Boosting-Regressor algorithm step by step to
predict the miles-per-gallon consumption of a car using the auto
dataset.

- Prepare the data.
  - Import `pandas`.
  - Import `DecisionTreeRegressor` from `sklearn.tree`.
  - Import function `train_test_split` from `sklearn.model_selection`.
  - Import `r2_score` from `sklearn.metrics`.
  - Apply the `pd.get_dummies()` function on `X` to one-hot-encode the `origin` feature-column and assign the result to `X`.
  - Using `train_test_split`, split the data into 80% train and 20% test.
- Define the Gradient Boosting Regressor.
  - Set the number of trees (`n_trees`) to 100 and the learning rate (`learning_rate`) to 0.1.
  - Create a list called `trees` that consists of `n_trees` decision tree regressors.
  - Fit the first tree in `trees` using `X_train` and `y_train`.
  - Using the tree you have fitted, predict the labels of `X_train` and `X_test`.
    Assign the obtained values to `y_train_pred` and `y_test_pred` respectively.
  - Evaluate the skill of the tree you have fitted (r2 score) on the test set and assign it to `single_tree_score`.
- Fit the model and evaluate it on the test set.
  - Set the residuals as the difference between `y_train` and `y_train_pred`.
  - Write a loop to iterate over the elements of `trees` starting from the second element.
  - Inside the loop:
    - Fit `tree` to (`X_train`, `residuals`).
    - Subtract the predictions of `tree` on `X_train` from `residuals` and assign it to `residuals`.
    - Multiply `learning_rate` by the prediction of `tree` on `X_test` and add it to the value of `y_test_pred`.
  - Evaluate the skill of the model (r2 score) on the test set and assign it to `gb_score`.
 - Print the value of `gb_score`.

**Note:**
the actual spec for this course included four more exercises,
and had sample solutions for all of them.

<!-- -------------------------------------------------------------------------------- -->

## Step 4: How Are Concepts Connected?

In this stage,
you put the exercises in a logical order
then derive a point-form course outline for the entire course from them.
This is also when you will consolidate the datasets your formative assessments have used.

**Checkin:** a course outline and dataset summary.

Note:

- The final outline should be at the chapter and lesson (video) level,
  i.e.,
  one major bullet point for each of the 4-5 chapters
  with 4-5 minor bullet points for the video lessons.
- It's common to change assessments in this stage so that they can share datasets,
  or to modify datasets to make them shareable.
- You are likely to discover things you forgot to list earlier during this stage,
  so don't be surprised if you have to double back a few times.
  
More advice on [lesson flow](/courses/design/lesson-flow.md).

### Running Example

1. Classification and Regression Trees (CARTs)
   1. Decision-trees for Classification (use roc_auc_score as it was introduced in Andy Muller's course)
   2. How do CARTs learn from data?
   3. Decision-trees for Regression (introduce negative mean squared error as a metric for regression)
   4. The limitations of CARTs
2. The Bias-Variance Tradeoff
   1. Generalization Error and the Bias-Variance Decomposition
   2. Diagnosing Bias and Variance Problems
   3. Addressing Bias and Variance Problems with Grid-Search Cross-Validation
   4. Ensembling to Reduce Bias and Variance
3. Bagging and Random Forests
   1. The Bootstrap Method
   2. Classification with Bagging 
   3. Regression with Random Forests 
   4. Out of Bag Estimation of Error
4. Boosting
   1. What is Boosting?
   2. Classification with Adaboost (possibility: introduce multiclass classification problem with corresponding metric?)
   3. Regression with Gradient Boosting 
5. Getting the Most out of your Models
   1. Selecting the most Influential Hyperparameters of a Tree-based Model
   2. Tuning Random Forests for Classification
   3. Tuning a Gradient Boosting Regressor
   4. Using Tree-Based Models to assess the Importance of Features
  
The datasets are:

- [Breast Cancer Wisconsin (Diagnostic) Data Set](https://www.kaggle.com/uciml/breast-cancer-wisconsin-data)
- [Indian Liver Patient Records](https://www.kaggle.com/uciml/indian-liver-patient-records/data)
- [Default of Credit Card Clients Dataset](https://www.kaggle.com/uciml/default-of-credit-card-clients-dataset)
- [Automobile miles per gallon](https://assets.datacamp.com/production/course_1939/datasets/auto.csv)
- [Bikes](https://assets.datacamp.com/production/course_3851/datasets/Bikes.RData)

<!-- -------------------------------------------------------------------------------- -->

## Step 5: Course Overview

You can now summarize everything you have created
by writing a high-level course overview that consists of:

- [a one-paragraph description](/courses/design/overview-description.md) (i.e., a sales pitch to students)
- [half a dozen learning objectives](/courses/design/overview-objectives.md)
- [a summary of prerequisites](/courses/design/overview-prerequisites.md)

Doing this earlier often wastes effort,
since material is usually added, cut, or moved around in earlier steps.

**Checkin:** course description, learning objectives, and prerequisites.

### Running Example

Here are the final deliverables for the design of the course on tree-based models in Python.

**Course Description**

Decision trees are supervised learning models used for problems
involving classification and regression. They present a high
flexibility that comes at a price: on one hand, trees are able to
capture complex non-linear relationships; on the other hand, they are
prone to memorizing the noise present in a dataset. By aggregating the
predictions of trees that are trained differently, ensemble methods
exploit the flexibility of trees while reducing their tendency to
memorize noise. Ensemble methods are used across a variety of fields
and have a proven track record of winning many machine learning
competitions.

In this course, you'll learn how to use Python to train decision trees
and tree-based models with the user-friendly scikit-learn machine
learning library. You'll understand the advantages and shortcomings of
trees and demonstrate how ensembling can alleviate these shortcomings,
all the while practicing on real-world datasets. Finally, you'll also
understand how to tune the most influential hyperparameters in order
to get the most out of your models.

**Learning Objectives**

- Define what a Classification and Regression Tree (CART) model is.
- Explain how a CART model learns from data.
- Recognize the pros and cons of CARTs.
- Explain the bias-variance tradeoff.   
- Recognize the importance of ensembles in generating robust predictions.
- Define Bagging and Random Forests as models that combine different CARTs incorportating randomization.
- Demonstrate how Bagging and Random Forests can reduce the variance of CARTs.
- Define Bossting as a model combining the predictions of weak learners that learn incrementally from errors.  
- Demonstrate how Boosting can reduce both the bias and variance of CARTs.
- Select the most influential hyperparameters for tuning each of the defined tree-based models.
- Recognize the ability of tree-based models to extract the importance of features.

**Prerequisites**

- [Introduction to Python for Data Science][PDS]
- [Intermediate Python for Data Science][IPDS]
- [Statistical Thinking in Python (Part1)][STP1]
- [Supervised Learning with scikit-learn][SLSKL]
- [Introduction to Data Visualization with Python][IDVP] (Optional)

<!-- -------------------------------------------------------------------------------- -->

## Conclusion

This process is described in sequence,
but in practice you will loop back repeatedly
as each stage informs you of something you overlooked.
When you and your CL agree that your outline is done,
you can copy what you wrote for Steps 3-5 from your course repository's `README.md`
into `course.yml` and your chapters and carry on from there.
When your course is finished,
please take half an hour to update your outline
so that whoever has to maintain your course will understand
what it is trying to achieve and why it is organized the way it is.

<!-- -------------------------------------------------------------------------------- -->

## Further Reading

- Huston: *[Teaching What You Don't Know][huston-teaching]*
- Lang: *[Small Teaching][lang-teaching]*
- Wilson: *[How to Teach Programming (and Other Things)][wilson-teaching]*

<!-- -------------------------------------------------------------------------------- -->

[huston-teaching]: https://www.amazon.com/Teaching-What-You-Dont-Know/dp/0674035801/
[lang-teaching]: https://www.amazon.com/Small-Teaching-Everyday-Lessons-Learning/dp/1118944496/
[tdd]: https://en.wikipedia.org/wiki/Test-driven_development
[teaching-statistics]: https://www.amazon.com/Teaching-Statistics-Tricks-Andrew-Gelman/dp/0198572247/
[wilson-teaching]: http://third-bit.com/teaching/
