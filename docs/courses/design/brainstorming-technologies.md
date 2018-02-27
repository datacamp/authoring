# Step 1.3 - What technologies, packages, or functions will students use?

Write a list of ideas for technologies that you want to use in the course. Include things like R/Python packages, SQL modules, or Google sheets add-ons. If there are any important functions, methods, or commands that you want to teach, you can mention them here.


## Examples

From a course on keras. This example has only a few Python packages, and goes into depth on the functions that will be used.

- keras, pandas, sklearn
- Keras functions:
  - Dense
  - Concatenate, Subtract, Multiply (operate on 2 layers)
  - l2
  - Embedding
  - Flatten
  - keras.preprocessing.text.text_to_word_sequence
  - keras.preprocessing.sequence.pad_sequences
  - GRU
  - Bidirectional
  - MAYBE Droput and BatchNormalization

From a course on single cell RNA-Seq workflows. This examples considers which R packages are needed for each of the topics to be covered in the course.

- Introduction to single-cell RNA-Seq
  - SingleCellExperiment, scRNAseq
- Visualization and normalization
  - SingleCellExperiment, scater, magrittr, scran, scone, zinbwave
- Dimensionality reduction and cell clustering
  - SingleCellExperiment, scater, clusterExperiment, Seurat, scone, dplyr, ggplot2
- Differential Expression analysis
  - SingleCellExperiment, scater, edgeR, MAST, zinbwave, NMF, ggplot2


## FAQs

### Are there any restrictions on technology?

1. All software must be installable under Ubuntu Linux.
1. There must be no fee for DataCamp to use the technology.
1. The license for the software must allow DataCamp to host it.
1. The technology should be currently maintained.

### Can I use R packages from GitHub/Bitbucket/my mate's laptop?

You can use R packages from GitHub or Bitbucket during course development, but by the time the course is released, they must have been published on [CRAN](cran.r-project.org/web/packages/available_packages_by_name.html) or [Bioconductor](https://bioconductor.org/packages/release/BiocViews.html#___Software).

### Where can I get Python packages from?

Python packages must support Python 3, and must be available via [PypI](https://pypi.python.org/pypi).

### How many technologies can I use?

If you have too many technologies or packages (especially those with competing syntax), you risk confusing students.  Aim for "the smallest number of technologies that lets you teach everything that you want to teach well". 


## Good ideas

### Explain your choices

If there are several possible packages or technologies that you could use, list them all, and write down your reasoning for picking one. This reasoning is often useful to discuss in a video exercise.

### Use popular packages

It's in your interest and DataCamp's interest to teach technologies that people actually use. If you have to choose between two packages, then it's usually best to pick the most popular one. 

## Check that the technology is current and maintained

For R packages, check their homepage on CRAN or Bioconductor to see if they have recently been updated. Likewise, for Python packages you can check the most recent release date on PyPI. Make a note of any packages that haven't been updated in over a year.

## Common problems and their solutions

### How do I measure how popular an R package is?

Visit 

```
https://cranlogs.r-pkg.org/badges/last-month/{pkgname}
```

to see the number of downloads in the last month for an R package.

[RDocumentation](http://rdocumentation.org) also provides estimates of package download numbers.

## How will this be reviewed?

Your Curriculum Lead will discuss your responses to the brainstorming questions. They will not be formally reviewed (though they provide important context for reviewers).
