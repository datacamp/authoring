# Image Segmentation with Python<br/>by Veronika Cheplygina

## Step 1: Brainstorming

### What problem(s) will students learn how to solve?

* How to segment (medical) images with low-level techniques
* How to represent pixels in a feature space
* How to filter the image to extend the feature space
* How to train simple classification techniques for segmentation
* How to evaluate segmentation

### What techniques or concepts will students learn?

* Feature space
* Class overlap
* k-Means clustering
* Nearest mean, nearest neighbor classifiers
* Dice coefficient

### What technologies, packages, or functions will students use?

Mostly NumPy supplemented with scikit-image and scikit-learn. Would
like to use NumPy as much as possible to create understanding of what
is going on in the algorithm, but it may be too much at the same time.

### What terms or jargon will you define?

* Accuracy, Dice coefficient
* Gaussian blur/filtering
* Overfitting
* Supervised vs unsupervised
* Dataset, image (vs volume)

### What analogies or heuristics will you use?

* Analogy of looking close/far away at an object (multi-scale image representation)
* Real-life examples of overfitting, for example http://www.tylervigen.com/spurious-correlations

### What mistakes or misconceptions do you expect?

* Mapping between the image (with spatial structure) and feature space (without)
* That having ground truth for an image (for evaluation) doesn't mean
  we can use that ground truth to make the method better


### What datasets will you use?

* A few example images from OASIS Brain dataset,
  license: <http://www.oasis-brains.org/app/template/UsageAgreement.vm>
* Have email confirmation via Stephen Bailey/Greg Wilson that commercial use is acceptable.

## Step 2: Who Is This Course For?

* Advanced Alex: Given Alex's background and experience, I don't think
  the course will be very relevant for him.

* Starting Sindhu: Given her interest and experience in medical
  applications, the course might appeal to her. I think the course
  would also give her more confidence, since I intend to explain
  concepts that are sometimes considered "matter of fact", but that
  are not in fact obvious to everyone (and were not to me initially).

* Coder Chen: It is difficult for me to assess whether Chen would be
  interested in image segmentation - given the increasing importance
  of image recognition in e-commerce, perhaps. Similarly to Sindhu, I
  think the course would fit in well with her background. I would like
  to intuitively explain mathematical concepts, that do not require
  advanced prerequisites.

* Unaware Umberto: I don't think the course will be of interest to
  him.

## Step 3: What Will Learners Do Along the Way?

### Full Exercise 1

In this exercise, the goal is to create a feature space with two
features by blurring the image (loaded as im) with a Gaussian,
applying the k-Means algorithm to create two clusters of pixels,
transform the cluster assignment back into an image, and visualize the
result alongside the ground truth (loaded as segtrue).

The main concept is the transformation from image to feature space and
back into image space. K-Means is used in a black box way, this could
be a different technique.

The solution below gives the code, excluding imports and loading the
data. Probably the code can be more compact. The starter code would
have all of the methods, but the learner has to fill in the arguments.

The exercise is not so much about the exact code to create these
plots, but understanding how the two representations relate. So after
the plots are displayed, we can ask different questions.

**Solution part 1**

```
# Filter image with Gaussian of width 5
imgauss5 = ndimage.gaussian_filter(im, sigma=5)

# Put together original and blurred values into a dataset - surely there is a more compact way to do this?
pixeldata = np.append(np.expand_dims(im.ravel(), axis=1), np.expand_dims(imgauss5.ravel(), axis=1), axis=1)

# Visualize the scatterplot and the corresponding image
f, axes = plt.subplots(2,2)

axes[0, 0].scatter(pixeldata[:,0], pixeldata[:,1], c=segtrue.ravel())
axes[0, 1].imshow(segtrue, cmap=plt.cm.gray)
plt.show()
```

Questions after solution part 1:

* What happens to the range of intensities after blurring? (Multiple
  choice: no change, lower, higher, not enough information? Correct:
  lower)

* Which pixels (brain or non-brain) are displayed in yellow? (Multiple
  choice: A- Non-brain, because the blue pixels have the highest
  intensities and must belong to the brain, B - Brain, because the
  yellow pixels have the highest blurred intensities. Correct: B).

* Where are the pixels of the skull in the scatterplot (Multiple
  choice: bottom left - low intensity & low blurred intensity, high &
  low, low & high, high & high. Correct: high & low.)

**Solution part 2**

```
# Do k-Means on this data (give approximate cluster centers so the ordering of the clusters is always the same)
kmeans = KMeans(n_clusters=2, init=np.array([[0.3, 0.3], [0.5, 0.1]])).fit(pixeldata)

# Transform the result into an image
kmeansresult = np.reshape(kmeans.labels_, im.shape)

axes[1, 0].scatter(pixeldata[:, 0], pixeldata[:, 1], c=kmeans.labels_)
axes[1, 1].imshow(kmeansresult, cmap=plt.cm.gray)
plt.show()
```

Questions after solution part 2:

* What could happen if we do not initialize kMeans with approximate
  cluster centers? (Clusters could be reversed)

* Why are some pixels classified incorrectly? Could kMeans have
  avoided these mistakes? (They have the same representation, no)

### Full Exercise 2

In this exercise, the goal is to create a feature space with multiple
features, select a subset of features and train a classifier on one
subject's image, and then test out the classifier on another image.

Essentially the structure of this exercise is the same as the previous
one, but

- instead of a binary problem we have a multi-class problem
- instead of an unsupervised case with 1 image, we go to a supervised
- case where we need to have different images for training and testing
- (optional) instead of using all the features, we will create a
- selection based on some performance measure.

Part 1: Load images and create datasets. This is done twice, for the
training and test image, but for the exercise, we could already
explain what happened to the training image, and the student has to do
it for the test image.

**Solution part 1**

```
test_imgauss5 = ndimage.gaussian_filter(test_im, sigma=5)
test_im_gm5 = ndimage.gaussian_gradient_magnitude(test_im, sigma=5)

num_test = len(test_im.ravel())
test_data = np.concatenate((test_im.reshape(num_test, 1), test_imgauss5.reshape(num_test, 1)), axis=1)
test_data = np.concatenate((test_data, test_im_gm5.reshape(num_test, 1)), axis=1)
```

Questions after part 1: we could look at the scatterplots of the
training and test image to see if there are similar patterns. Since we
have more than two features, need to look at a grid of scatterplots.

Could be an idea to look at three images in total - for example, from
different locations in the brain, or from subjects of different ages,
since they will have different distributions of classes.

Based on the scatterplots students could hypothesize which features
(we could start with other ones than I've shown here, to create more
interesting results) are likely to give better separation of the
classes.

Part 2: Train a classifier using the training image, and apply it on
the test image. Possibly this part could also incorporate feature
selection, since now it is very similar to the k-Means from exercise
1.

**Solution part 2**

```
knn = KNeighborsClassifier(n_neighbors=3)

knn.fit(train_data, train_gt.ravel())
knnlabels = knn.predict(test_data)
knnresult = np.reshape(knnlabels, test_im.shape)
diceScores = diceMulticlass(test_gt,knnresult)
```

Questions after part 2: possible questions could include which classes
are easier to classify and why, whether the hypothesis about which
features would be better were correct, etc.

### Other Exercises

#### Plotting 1D histogram of image intensities

Plot the intensities of an image, try to relate the pixels in the
image (and the corresponding labels in the mask) to their positions in
the histogram. See `img/other_exercise1.png`. Possible questions:

- There are a lot of pixels of the blue class with low intensities -
  which pixels in the image are these? (Black background around the
  head)
- The highest intensity pixels are also in the blue class - which
  pixels are these? (Skull)

**Solution**

```
imdata = im.ravel()
labels = segtrue.ravel()
class1 = imdata[labels==0]
class2 = imdata[labels==1]

bins = np.arange(0.0, 1.0, 0.05)

f, (ax1, ax2, ax3) = plt.subplots(nrows=1, ncols=3)

ax1.imshow(im, cmap=plt.cm.gray)
ax2.imshow(segtrue, cmap=plt.cm.gray)
ax3.hist(class1, bins, alpha=0.3)
ax3.hist(class2, bins, alpha=0.3)
plt.show()
```

#### Segmentation by thresholding intensity

Binarize the segmentation by selecting an intensity value (based on
the histogram from the previous exercise) and comparing the image with
it. Then display the image, the ground truth and your result. Add the
Dice coefficient of the result in the plot title. Optional: could
already provide the image of how the output should look like, see
`img/other_exercise2.png`.

**Solution**

```
threshold = 0.1
segresult = im > threshold

f, (ax1, ax2, ax3) = plt.subplots(nrows=1, ncols=3)

ax1.imshow(im, cmap=plt.cm.gray)
ax2.imshow(segtrue, cmap=plt.cm.gray)
ax3.imshow(segresult, cmap=plt.cm.gray)
ax3.set_title('Result 1D threshold %.2f' % (diceCoefficient(segtrue, segresult)))
plt.show()
```

#### Dice coefficient

Create a function for computing the Dice coefficient for a binary
segmentation problem.

**Solution**

```
def diceCoefficient(segmentationTrue, segmentationResult):
    overlap = np.logical_and(segmentationTrue, segmentationResult)
    dice = np.sum(overlap)*2 / (np.sum(segmentationTrue)+ np.sum(segmentationResult))
    return dice
```

#### Multi-class Dice coefficient

Create a function for computing multiple Dice coefficients for a
problem with more than two classes. This function should loop through
the possible classes, considering each in turn as the foreground
class, and call the diceCoefficient function you implemented before.

First, imagine the foreground class is labeled by number 2. Write the
lines of code needed to convert the ground truth, and the segmentation
result to binary masks, on which you can then compute the Dice
coefficient.

**Solution part 1**

```
# Convert the ground truth to a binary mask
binaryTrue = segmentationTrue == 2

# Convert the result to a binary mask
binaryResult = segmentationResult == 2

# Call the Dice function and store the result
diceCoeff = diceCoefficient(binaryTrue, binaryResult)
```

Next we will extend the previous exercise to multiple classes -
instead of comparing the labels to the number 2, we can compare the
labels to each of the classes present in the ground truth. In the next
part of the exericse, get the list of classes from the ground truth
using the `np.unique()` function, and initialize an empty vector that
has as many cells as the number of classes.

**Solution part 2**

```
# Get list of classes you want to evaluate
classList = np.unique(segmentationTrue)

# Calculate the number of classes
numClasses = np.size(classList)

# Initialize vector to store Dice coefficients
diceCoeff = np.zeros(shape=(numClasses,1))
```

Now let's put everything from the first two steps together.

**Solution part 3**

```
def diceMulticlass(segmentationTrue, segmentationResult):

    # Get list of classes you want to evaluate
    classList = np.unique(segmentationTrue)

    # Calculate the number of classes
    numClasses = np.size(classList)

    # Initialize vector to store Dice coefficients
    diceCoeff = np.zeros(shape=(numClasses,1))

    # Loop over classes
    for i in range(0, numClasses):

       # Convert each image into background and foreground based on this class
       binaryTrue = segmentationTrue == classList[i]
       binaryTrue = binaryTrue.astype(int)

       binaryResult = segmentationResult == classList[i]
       binaryResult= binaryResult.astype(int)

       # Call the Dice function and store the result
       diceCoeff[i] = diceCoefficient(binaryTrue, binaryResult)

    # Finish
    return diceCoeff
```


## Step 4: How Are the Concepts Connected?

1. Segmentation in 1D
   1. Goal of segmentation, image vs mask
   2. Histogram of image
   3. Thresholding an image
   4. Unsupervised method in 1D (k-Means or mixture of Gaussians?)
   5. Class overlap
   6. Multi-class problem
2. Evaluation
   1. Accuracy
   2. Dice coefficient
   3. Multi-class Dice
3. Adding context to images
   1. Why context is needed, averaging neighborhood filter
   2. Gaussian blur
   3. Unsupervised method in 2D (k-Means or mixture of Gaussians?)
   4. Normalizing features
   5. Gaussian magnitude, other filters
   6. Unsupervised method in high-D
4. Supervised segmentation
   1. Unsupervised vs supervised
   2. Supervised method in 2D and in high-D
   3. Feature selection
   4. Testing method on a different image
   5. Overfitting

The datasets are:

- PNG images in /img/ Brain data from the Open Access Series of
  Imaging Studies (2D images extracted from the 3D original data)
  - Data location: <http://www.oasis-brains.org/>
  - License: <http://www.oasis-brains.org/app/template/UsageAgreement.vm>

## Step 5: Course Overview

**Course Description**

   i. the process of identifying regions in an image that (hopefully) belong to the same object.
It is a crucial step in almost all computer vision and image analysis applications,
from finding pedestrians and signs on a road to identifying tumors in an X-ray.
This course will teach you the basics underlying the important techniques and show you how to implement them in Python.
The examples are drawn from medical image processing,
but the ideas and methods apply to many other domains.

**Learning Objectives**

- Write programs using the scientific Python stack to segment images
  using low-level techniques.
- Understand how to represent pixels in a feature space and how to
  filter the image to extend that feature space.
- Train simple classifiers to do image segmentation.
- Evaluate segmentation results with a widely accepted metric.

**Prerequisites**

- Required: [Intro to Python for Data Science](https://www.datacamp.com/courses/intro-to-python-for-data-science)
- Recommended: [Introduction to Data Visualization with Python](https://www.datacamp.com/courses/introduction-to-data-visualization-with-python)
- Recommended: Image Processing in Python with scikit-image (under development)
