# Step 1.7 - What datasets will you use?
Write a list of datasets that you will in the course, a short description of each dataset (if it's not clear from the title), how you intend to use it, and include a link to its source(s).

Before settling on a dataset, it is best to develop a reasonable familiarity with the data as sometimes datasets give unexpected answers, and this can make the narrative in an exercise tricky or confusing. **It is best to do this during the course speccing phase, when it is easiest to swap the dataset for a different one.** Think about the types of variables in the dataset and how the data will work with the concepts you plan to teach. If you are doing a course on categorical data, make sure you have a dataset with plenty of it! If your course has a modeling component, make sure the results of the model with your chosen dataset make sense.

You may think that a simple solution is to use a massive dataset that covers everything, but bigger datasets are not always better. In many cases, having a dataset that is small enough that the students can easily understand it in its entirety is beneficial. If you have a great dataset, but it's really large, use a subset of it. In fact, **be ruthless about shrinking your dataset when you prepare it.**

## Examples
- Wikipedia's list of [100m sprint world records since 1977](https://en.wikipedia.org/wiki/Men%27s_100_metres_world_record_progression#Records_from_1977). It has a few different data types for converting.

- A subset of [Ecdat::Benefits](https://www.rdocumentation.org/packages/Ecdat/topics/Benefits). Good for doing logical manipulation. Will delete a few values in order to talk about missing data and errors.

- Singh & Pandey's [Butterflies](http://ces.iisc.ernet.in/hpg/nvjoshi/statspunedatabook/Butterflies.xls) from [100 Datasets For Statistics Education](http://ces.iisc.ernet.in/hpg/nvjoshi/statspunedatabook/databook.html). It's just integer data split by a couple of different categorical variables.  Use it to go over positional exercises.

- [Poker hand data set from UCI](http://archive.ics.uci.edu/ml/datasets/Poker+Hand)
- [Internet usage data from UCI](http://archive.ics.uci.edu/ml/datasets/Internet+Usage+Data)
- [Census income data from UCI](http://archive.ics.uci.edu/ml/datasets/Census-Income+%28KDD%29)

## FAQs
### How many datasets do I need?

One dataset per chapter is typical. Some courses use a single dataset throughout. In this case it has to be a fairly rich and interesting dataset in order to keep student's attentions over the whole course. A few courses use multiple datasets in each chapter, but you have to be careful in this case that you don't spend all the time introducing datasets instead of teaching other concepts.

### Where can I find datasets?

Here are a few data sources to get you started.

- DataCamp can provide access to the datasets curated by [ThinkNum](https://www.thinknum.com). Ask your Curriculum Lead for details.

- For small, reasonably clean datasets, [Wikipedia](https://en.wikipedia.org/wiki/Main_Page) tables are excellent.

- There are also many R packages that contain datasets. You can generate a list of CRAN packages that contain datasets using [`finddatasetpkgs`](https://github.com/datacamp/finddatasetpkgs)`::get_dataset_pkgs()`. Bioconductor has [its own list](https://bioconductor.org/packages/release/BiocViews.html#___ExperimentData).

The [UCI Machine Learning Archive](https://archive.ics.uci.edu/ml/datasets.html) and [Kaggle datasets](https://www.kaggle.com/datasets) contain lots of mostly larger datasets on a wide variety of topics.

The [Dataset subreddit](https://www.reddit.com/r/datasets) is a pot luck of datasets.

There are several free data sharing platforms available.
- CKAN is a data sharing platform. Some popular instances include [datahub.io](https://datahub.io/search), [catalog.data.gov](https://catalog.data.gov/dataset), and the [European Data Portal](https://www.europeandataportal.eu/data/en/dataset).
- [Dataverse](https://dataverse.org) is a good source of datasets from academic papers. (Click the map on the home page to see specific Dataverse installations.)
- [data.world](https://data.world) hosts datasets directly, and contains many (typically small) datasets.

Many governmental organizations and NGO's provide datasets.

- [UK government data](https://data.gov.uk/data/search)
- World Health Organization [Global Health Observatory Data Repository](http://www.who.int/gho/database/en) and [Mortality Database](http://www.who.int/healthinfo/mortality_data/en)
- [Humanitarian Data Exchange](https://data.humdata.org/dataset)
- [World Bank Open Data](https://data.worldbank.org)

### Can I create my own synthetic datasets?

Yes, but only if you can't find a real or semi-synthetic dataset. Students really enjoy using "real" datasets, so existing publicly available datasets are preferred over those generated from code.  

### What's a semi-synthetic dataset?

Semi-synthetic datasets are the data equivalent of a "based on a true story" movie. If you have a dataset that is not suitable for use on DataCamp due to licensing issues, (for example, if it is commercially sensitive) then it is sometimes possible to anonymize it and change enough numbers that it retains the spirit of the original data, but does not reveal anything commercially sensitive. 

### Can I use an API in my course?

Not exactly...

### Datasets to avoid

These datasets are overused and feedback from our students suggests that the following should be avoided at all costs.

* Iris dataset
* mtcars
* Gapminder
* wine dataset
* Wisconsin breast cancer

## How will this be reviewed?
Your Curriculum Lead will discuss your responses to the brainstorming questions. They will not be formally reviewed (though they provide important context for reviewers).
