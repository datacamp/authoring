Test examples
=========================================

This pages contains examples of project `@tests` [for python](#tests-python) and [for R](#tests-r).

`@tests` in python {#tests-python}
-----------------------------------

There are some packages you need to be able to run tests locally. Run the following commands in a terminal to install them:

*You might need to change pip into pip3 depending on how you installed python.*

```
pip install nose
pip install git+https://github.com/akaihola/ipython_nose
```

The test examples are a work in progress. In the meantime you can check out the `@tests` cells in this example `project.ipynb` from the Project *Dr. Semmelweis and the discovery of handwashing*. Here is the [python GitHub repo](https://github.com/datacamp/projects-discovery-of-handwashing-python) (and [live project](https://projects.datacamp.com/projects/20)).


`@tests` in R {#tests-r}
-----------------------------------


There are some packages you need to be able to run tests locally. Run the following commands in R to install them:

```
install.packages("devtools")
install.packages(testthat")
devtools::install_github('datacamp/IRkernel.testthat')
```

The test examples are a work in progress. In the meantime you can check out the `@tests` cells in this example `project.ipynb` from the Project *Dr. Semmelweis and the discovery of handwashing*. Here is the [R GitHub repo](https://github.com/datacamp/projects-discovery-of-handwashing-r) (and [live project](https://projects.datacamp.com/projects/49)).