# Changing Frequency Weights (R)

> This exercise contains a few problems that we sometimes encounter
> with first-time instructors.  After you have read it, scroll down to
> the bottom of the page to see the comments that one of our team
> would provide.

So far you have used term frequency to make the `DocumentTermMatrix`
or `TermDocumentMatrix`.  There are other term weights that can be
helpful.  The most popular weight is `TfIdf`, which stands for *term
frequency-inverse document frequency*.

The `TfIdf` score increases by term occurrence but is penalized by the
frequency of appearance among all documents.

From a common sense perspective, if a term appears often it must be
important. This attribute is represented by term frequency
(i.e. `Tf`), which is normalized by the length of the document.
However, if the term appears in all documents, it is not likely to be
insightful.  This is captured in the inverse document frequency
(i.e. `Idf`).

The [wiki page](https://en.wikipedia.org/wiki/Tf%E2%80%93idf) on
`TfIdf` contains the mathematical explanation behind the score, but
the exercise will demonstrate the practical difference.

## Instructions

The coffee tweets have been cleaned and organized into the corpus `text_corp`, but the term "coffee" was not removed.  

- Create `tf_tdm`, a term frequency-based `TermDocumentMatrix()` using `text_corp`.
- Make `tfidf_tdm` using `TermDocumentMatrix()` on `text_corp` along with `TfIdf` weighting.
  Pass `control = list(weighting = weightTfIdf)` as an argument to the function.
- Create `tf_tdm_m` by converting `tf_tdm` to matrix form.
- Create `tfidf_tdm_m` calling `as.matrix()` on `tfidf_tdm`.
- Examine the term frequency for "coffee" in 5 tweets by examining rows 508 and 509 and columns 5 through 10 of `tf_tdm_m`.
- Compare the TfIdf score for "coffee" in 5 tweets by examining rows 508 and 509 and columns 5 through 10 of `tfidf_tdm_m`.

## Hint

To use `TfIdf` weighting, just add the argument `control = list(weighting = weightTfIdf)` in the `TermDocumentMatrix()` function.

## Pre-Exercise Code

```
library(tm)
text_corp <- readRDS("/usr/local/share/datasets/c3_text_corp2.rds")
```

## Sample Code

```
# Create tf_tdm


# Create tfidf_tdm


# Create tf_tdm_m


# Create tfidf_tdm_m 


# Examine part of tf_tdm_m


# Examine part of tfidf_tdm_m

```

## Solution

```
# Create tf_tdm
tf_tdm <- TermDocumentMatrix(text_corp)

# Create tfidf_tdm
tfidf_tdm <- TermDocumentMatrix(
  text_corp, 
  control = list(weighting = weightTfIdf)
)

# Create tf_tdm_m
tf_tdm_m <- as.matrix(tf_tdm)

# Create tfidf_tdm_m 
tfidf_tdm_m <- as.matrix(tfidf_tdm)

# Examine part of tf_tdm_m
tf_tdm_m[508:509, 5:10]

# Examine part of tfidf_tdm_m
tfidf_tdm_m[508:509, 5:10]
```

---

## Comments

- Linking to Wikipedia for the mathematics isn't that helpful.
- Intro text is very abstract; a concrete example would have been nicer.
- The text also covers a lot of jargon; it would be useful to link back to where the terms were first defined.
- Too many instructions. (<=4 is best). Should really use multi-step exercise.
- It isn't clear what the aim of the exercise is.
- It isn't clear why you need to convert to matrices.
- You have to do the same 3 steps twice with 2 different weights; better to use a function or loop or TabExercise.
- Rows 508 and 509 don't mention 'coffee', which is the point of the exercise.
- Using magic numbers like 508 isn't helpful. Better to do, e.g., `Terms(tf_tdm) == "coffee"`.
- There seems to be no reason to limit to just looking at docs 5 to 10. Better to view all and draw a plot.
- There is only 1 hint for 6 instructions. (Typically 1 hint per instruction is about right.)
- The hint that is provided is no use at all.
