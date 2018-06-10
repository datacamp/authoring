# Dimensionality Reduction in Python<br/>by Alyssa Batula

## Step 1: Brainstorming

### What problem(s) will students learn how to solve?

* How to reduce the dimensionality of a dataset
* Why/when they might want to use dimensionality reduction
* The differences between types of reduction methods

### What techniques or concepts will students learn?

* Manual/knowledge-based (e.g. using human expertise to select promising features)
* Single-feature evaluation (e.g. based on a univariate statistic)
* Classifier-based reduction (e.g. recursive feature elimination)
* Feature transformation (e.g. PCA)

### What technologies, packages, or functions will students use?

* Python 3 with Numpy and Scikit-Learn
* Pandas

### What terms or jargon will you define?

* dimensionality
* classification/regression/prediction
* feature & example
* univariate
* Target/dependent variable vs independent variable
* fitting (in context of fitting a model to data)
* norm/normal/orthogonal

### What analogies or heuristics will you use?

* When predicting house prices, the number of bedrooms is a useful
  feature but the number of nails in the house is not.

### What heuristics will help students understand things?

* Relating the problems to decisions/guesses that we regularly need to
  make (e.g. how much is a house worth, will it rain today)

### What mistakes or misconceptions do you expect?

* Not understanding how having too many features could be bad.
* What happens when data is transformed (e.g. PCA).

### What datasets will you use?

* NOAA Global surface summary (weather): <https://www.kaggle.com/noaa/gsod>
  * Public domain
  * Subset of data specifically chosen to:
    * Have approximately equal number of entries with and without funnel clouds
    * Eliminate as many questionable data entries as possible
* Chocolate bar ratings <https://www.kaggle.com/rtatman/chocolate-bar-ratings>
  * Public domain
  * Cleaned to remove any entries with missing data

## Step 2: Who Is This Course for?

* Alex is interested in how data analytics or machine learning can
  help make better business decisions and/or improve profits. He may
  have already started learning machine learning. He is interested in
  identifying the most relevant information for the problem he's
  trying to solve, and to improve the results of his analyses.

* Sindhu is interested in using dimensionality reduction to find the
  most relevant data to include in her charts and analyses. Given her
  background in R, she may need some help getting used to using
  Python, and the programming concepts should not be too advanced. The
  course needs to do a good job explaining things at a beginner level,
  rather than an academic level, to prevent it from sounding overly
  complicated or intimidating. She would find it helpful if topics
  were general enough so she could apply them in languages she uses
  more often (like R).

* Chen is most interested in reducing the large volume of data her
  clients collect into the most relevant pieces for a given
  problem. She will likely have no problem with the programming
  concepts, but the math needs to be well-explained with intuitive
  visualizations.

* Umberto may want to wait to take this course until he has taken a
  few programming courses. He will also likely get more out of it
  after an introduction to statistical analysis or machine learning.

## Step 3: What Will Learners Do Along the Way?

### What is the primary reason to use dimensionality reduction?

- Conceptual question on the main benefits of dimensionality reduction
- Objective: make sure students know why they're doing this

**Solution**

* Allow the use of simpler algorithms/classifiers (true, but this is a side effect of the main reason)
* Use fewer computing resources to store and analyze the data (true, but computers are becoming more powerful and there is a more important reason)
* **Focus on the most relevant information by using a smaller set of features that each contain as much information as possible**
* Allow the data to be visualized more easily in graphs and plots (this is one benefit, but is only part of the main reason)

#### What is the best explanation of why to use human expertise before/alongside trying other methods?

- Conceptual question on the best reason to use human knowledge in an area
- Objective: make sure students realize that human reasoning is still important

**Solution**

* An expert in the field will already know the best features to use, saving you considerable time (False, human experts can guide your decision making, but the optimal best features for every problem are not already known)
* **An expert in the field can guide you towards features more likely to be useful and away from features that are irrelevant or could have a false correlation**
* An expert in the field can suggest algorithms that tend to work best with this type of data, allowing you to skip trying less-useful algorithms (true, but not necessarily the case if they've not worked with particular algorithms, and not the best reason)
* An expert in the field may already have found a working solution, though domain knowledge is becoming less useful as algorithms improve (true-ish (they may already know the answer) but domain knowledge can still be useful)
* Only an expert in a particular area should work with related data.

#### Human Expert Feature Selection - Chocolate

- Using the [chocolate ratings database](https://www.kaggle.com/rtatman/chocolate-bar-ratings/data), rank the columns by how likely they are to have an affect on the rating
- Exercise uses "domain/human knowledge" rather than coding to get them thinking about how they might select answers
- Pick the best ordering out of 3 options

**Solution**

**Option 1:**

1. Company
2. Cocoa Percent
3. Bean Type
4. Specific Bean Origin or Bar Name
5. Review Date

Option 2: (The date of the review shouldn't have such a large effect on the perception of taste)

1. Bean Type
2. Review Date
3. Company
4. Cocoa Percent
5. Specific Bean Origin or Bar Name

Option 3: (Bean type seems likely to have an effect on the taste of the chocolate)

1. Cocoa Percent
2. Company
3. Specific Bean Origin or Bar Name
4. Review Date
5. Bean Type

Option 4: (The specific company probably has a large impact on taste)

1. Review Date
2. Cocoa Percent
3. Bean Type
4. Specific Bean Origin or Bar Name
5. Company

#### Human Expert Feature Selection - Tornado

- Using the [NOAA weather dataset](https://www.kaggle.com/noaa/gsod/), which set of three features is most likely to have an affect on whether or not there was a funnel cloud that day?
- Exercise uses "domain/human knowledge" rather than coding to get them thinking about how they might select answers
- Use statement from NOAA website: "When predicting severe weather (including tornadoes) a day or two in advance, we look for the development of temperature and wind flow patterns in the atmosphere which can cause enough moisture, instability, lift, and wind shear for tornadic thunderstorms." (http://www.spc.noaa.gov/faq/tornado/)
- Pick the best ordering out of 3 options

**Solution**

**Option 1:**

1. thunder - whether or not thunder was reported that day
2. temp - average temperature for the day
3. hail - whether hail was reported

Option 2: (While location does have an effect, the specific station number likely does not correlate meaningfully enough to location to outweigh the other factors.

1. stn - Weather Station Number
2. mo - month of the recording
3. hail - whether hail was reported

Option 3: (Number of measurements used to obtain sea level pressure is unlikely to be useful.)

1. slp - average sea level pressure for the day
2. count_slp - number of measurements used to calculate the average sea level pressure
3. thunder - whether or not thunder was reported that day

Option 4: (Day of the month (a number from 1-31) is unlikely to be useful)

1. hail - whether hail was reported
2. thunder - whether or not thunder was reported that day
3. da - day of the month for recording

Option 5: (While there may be patterns over different years, it's probably not a very strong indicator)

1. year - year of the recording
2. slp - average sea level pressure for the day
3. dewp - mean dewpoint for the day

#### Univariate Feature Selection for Classification

- Given a dataset with a discrete target (classification task), which of the following metrics could we use for feature selection?
- Test that students can choose appropriate methods for classification

**Solution**

- **f_classif**
- **mutual_info_classif**
- **chi2**
- f_regression
- mutual_info_regression

#### Univariate Feature Selection

- Given a dataset with a discrete target (classification task), `SelectKBest` with `mutual_info_classif` to select the two features most correlated to the target
- Test that students know how to select the best features using univariate feature selection
- Features are in variable `x`, target is in `y`, below has three methods
- Use the chocolate dataset and compare to human expert question (?)

**Starter Code**

```
from sklearn.feature_selection import mutual_info_classif
from sklearn.feature_selection import SelectKBest
```

**Solution**

```
selector = SelectKBest(mutual_info_classif, k=2)
x_transform = selector.fit_transform(x,y)

```

#### Using Correlation

- Using the [NOAA weather dataset](https://www.kaggle.com/noaa/gsod/), find the correlation between the appearance of a funnel cloud and each of the features 
- Output should be a dataframe series stored in variable `correlations`
- Data is loaded in dataframe `weather`
- Funnel cloud column is named `tornado_funnel_cloud`

```
all_correlations = weather.corr()
correlations = all_correlations['tornado_funnel_cloud']
```

#### Recursive Feature Elimination

- Use recursive feature elimination to pick the best 3 features for a classification task
- Classifier in `clf`, features in `X`, labels in `y`
- Store new features in `new_X`

**Starter Code**

```
from sklearn.feature_selection import RFE
from sklearn import svm

clf = svm.SVC()
```
 
**Solution**
 
```
selector = RFE(clf, n_features_to_select=3)
selector.fit(X, y)
new_X = selector.transform(X)
```
 
#### RFE: Choosing how many features to keep
 
- Which of the following is an appropriate way to use RFE to choose the number of features to keep for a classification problem?
- Requires student knowledge of importance of validation data

**Solution**

- A human expert needs to pick the number beforehand, and then it can never be changed
- Keep trying different numbers and choose the one that does the best on the testing data
- **Keep trying different numbers, choosing the one that does the best on the validation set. Then test it on the testing data to get your final result**

#### Find the Mistake in PCA

- Use PCA to transform the dataset stored in `data` to have 5 features

```
from sklearn.decomposition import PCA

pca = PCA(n_components=5)
pca.fit_transform(data)
```

**Solution**

Option 1: set `copy=False` in line 2: `pca = PCA(n_components=5, copy=False)`
Option 2: assign matrix returned in line 3: `data = pca.fit_transform(data)`

#### Selecting the right method

- Given a regression dataset (e.g. predicting housing prices)
- Which of the following is/are NOT appropriate solutions for determining the two features most related to the continuous target value?
 
**Solution**
 
- **PCA** (this would transform the data)
- Univariate feature selection: `SelectKBest` with `f_classif`
- Find values with the maximum correlation
- RFE
  
#### Numeric scale vs "one-of-many" features (one-hot)

Which of the following best describes the way to decide if a feature can be converted to a series of numbers or must be split into individual yes/no features?

**Solution**

- **Features with a concept of order or rank can generally be converted to a numeric scale. Features that are categories and have no meaningful ordering must be split into multiple yes/no features**
- All features can be converted to either a numeric scale or one-of-many features, as long as you choose an appropriate classifier (No, chooseing a format should be based on the type of data the feature contains, regardless of classifier choice. Features with no concept of rank or order should not be converted into a numeric scale)
- It's best to always convert non-numeric features into "one-of-many" features (No, if there is a meaningful ordering to the feature, this will lose it. Also, when using feature selection, an algorithm could choose to drop a subset of a split feature instead of treating all the splits as a single feature.)
- Always convert to a numeric scale in order to reduce the number of features (No, when the feature has no meaningful order it should not be converted to a scale)
  
#### Converting to numeric scale

- Which of the following could be converted into or used as numerical values for use in data analysis?
- Tests understanding of when data can/cannot be converted to a numerical scale

**Solution**

- **Likert scale (e.g. survey responses of agree, neutral, or disgree with a given statement)** (Yes, these scales have some notion of order and can be converted to a numerical scale in some analyses)
- Location (e.g. city, country) (No, there is no way to rank the name of a location)
- **Date or time** (Yes, dates and times can be converted to a numerical "distance" from a particular time point. This is how computers store dates and times internally)
- Day of the week (No, while there is an order, the order is cyclical and there's no way to rank them. e.g. does Sunday come one day before or 6 days after Monday?)
- **Ratings (e.g. number of stars in product review)** (Yes, there is a meaningful order to the number of stars in rating or review)
- Favorite flavor of ice cream (No, there's no meaningful way to order the ice cream flavors)

#### Problems with non-numeric data: colors

- You are given a dataset where 100 people have listed their favorite color of the rainbow (red, orange, yellow, green, blue, purple). To find out what most people's favorite color is, you assign each color to a number (1 through 6, in order), then take the average of everyone's responses. You report the favorite color as the one closest to that average. Which of the following best illustrates a problem with this approach.

**Solution**

- **If half of the participants picked blue (value 5) and the other half pick yellow (value 3), the average will be green (value 4) even though no one chose that as their favorite.** (Yes, the average of a color is meaningless.)
- If the average is halfway between two values (e.g. 2.5) it will be too difficult to decide which should be chosen as the average favorite (No - this one still needs a hint)
- There should be a larger gap in value between the warm colors (red, orange, yellow) and the cool colors (green, blue, purple) to account for differences in perception (No, there is no good measure of distance between colors, so there's no good way of determining the spacing between colors)

## Step 4: How Are the Concepts Connected?

1. Introduction to Dimensionality Reduction
   1. What is Dimensionality Reduction?
   2. Why Use Dimensionality Reduction?
   3. Types of Dimensionality Reduction
   4. Using Human/Domain Knowledge
2. Feature Selection
   1. Univariate feature selection (better name?)
   2. Making selections using correlation
   3. Forward/backward feature selection
   4. Recursive Feature Elimination (RFE)
3. Feature Extraction
   1. Understanding Principal Component Analysis (PCA)
   2. Working with PCA
   3. Understanding Linear Discriminant Analysis (LDA)
   4. Working with LDA
4. Case Study: Applying dimensionality reduction
   1. Choosing the right method
   2. Choosing the right number of features
   3. What if my data isn't numeric?
   4. Putting it all together

The datasets are:

- `datasets/NOAA_MultiYear.csv`: Weather dataset
- `datasets/flavors_of_cacao_clean.csv2`: Cacao ratings dataset

## Step 5: Course Overview

**Course Description**

An ever-growing amount of data is available, whether collected for use in machine learning competitions, published on government websites, or collected by companies in the hopes of increasing profits. But with all this information available, how can we sort out the useful data from irrelevant data? Dimensionality reduction is a set of methods to select the most relevant parts of a dataset and remove any irrelevant data. After completing this course, you should be able to determine whether or not a particular method is appropriate for a specific problem, and use the methods you’ve learned to reduce the size of your own datasets.

**Learning Objectives**

- Able to determine whether a particular method is appropriate for a specific problem
- Able to explain the difference between feature selection and feature extraction dimensionality reduction techniques
- Able to apply dimensionality reduction to a dataset using Python

**Prerequisites**

- [Intro to Python for Data Science](https://www.datacamp.com/courses/intro-to-python-for-data-science)
