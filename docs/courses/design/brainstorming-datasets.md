# Step 1.7 - What datasets will you use?

Write a list of datasets that you will in the course, a short description of each dataset (if it's not clear from the title), how you intend to use it, and include a link to its source(s). Additionally, upload these datasets to your course on the Teach Editor.

![teach_editor_datasets_upload](https://user-images.githubusercontent.com/20912644/44154482-d2e04b3a-a078-11e8-8ff9-2944fdcabeae.png)


## Examples

From a Google Sheets course.

- Wikipedia's list of [100m sprint world records since 1977](https://en.wikipedia.org/wiki/Men%27s_100_metres_world_record_progression#Records_from_1977). It has a few different data types for converting.

- The Wikipedia [list of predicted asteroid close encounters](https://en.wikipedia.org/wiki/List_of_asteroid_close_approaches_to_Earth#Predicted_encounters). Contains numeric fields that we can do rounding on and log-transform.

- A subset of [Ecdat::Benefits](https://www.rdocumentation.org/packages/Ecdat/topics/Benefits). Good for doing logical manipulation. Will delete a few values in order to talk about missing data and errors.

- Singh & Pandey's [Butterflies](http://ces.iisc.ernet.in/hpg/nvjoshi/statspunedatabook/Butterflies.xls) from [100 Datasets For Statistics Education](http://ces.iisc.ernet.in/hpg/nvjoshi/statspunedatabook/databook.html). It's just integer data split by a couple of different categorical variables.  Use it to go over positional exercises.

From a PostgreSQL case study course. (Though see the note on overused datasets below.)

- [Poker hand data set from UCI](http://archive.ics.uci.edu/ml/datasets/Poker+Hand)
- [Internet usage data from UCI](http://archive.ics.uci.edu/ml/datasets/Internet+Usage+Data)
- [Census income data from UCI](http://archive.ics.uci.edu/ml/datasets/Census-Income+%28KDD%29)
- [Bakery and wine datasets from Cal Poly](http://users.csc.calpoly.edu/~dekhtyar/365-Winter2015/index.html)

## FAQs

### How many datasets do I need?

One dataset per chapter is typical. Some courses use a single dataset throughout. In this case it has to be a fairly rich and interesting dataset in order to keep student's attentions over the whole course. A few courses use multiple datasets in each chapter, but you have to be careful in this case that you don't spend all the time introducing datasets instead of teaching other concepts.

### How big can each dataset be?

There is a file size limit of 10mb per dataset. 

### What file formats can the datasets be in?

Since the datasets need to be loaded at the start of ech exercise, preferably within a couple of seconds, binary formats are preferred (`.rds` for R courses; pickle for Python). However, you can use any format that you can read.

### Where can I find datasets?

Here are a few data sources to get you started.

- DataCamp can provide access to the datasets curated by [ThinkNum](https://www.thinknum.com). Ask your Curriculum Lead for details.

- For small, reasonably clean datasets, [Wikipedia](https://en.wikipedia.org/wiki/Main_Page) tables are excellent.

- There are also many R packages that contain datasets. You can generate a list of CRAN packages that contain datasets using [`finddatasetpkgs`](https://github.com/datacamp/finddatasetpkgs)`::get_dataset_pkgs()`. Bioconductor has [its own list](https://bioconductor.org/packages/release/BiocViews.html#___ExperimentData).

The [UCI Machine Learning Archive](https://archive.ics.uci.edu/ml/datasets.html) and [Kaggle datasets](https://www.kaggle.com/datasets) contain lots of mostly larger datasets on a wide variety of topics.

The [Dataset subreddit](https://www.reddit.com/r/datasets) is a pot luck of datasets.

Vanderbilt University has a page of [medical datasets](http://biostat.mc.vanderbilt.edu/wiki/Main/DataSets).

[Microsoft Research's Open Data](https://msropendata.com) page has many datasets (mostly) related to natural language processing and computer vision.

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

### Can I call a REST API in my course?

Web application programming interfaces are tricky because they frequently change and break live exercises. If possible, try to avoid having exercises on calling APIs. If the license permits it, it's perfectly acceptable to create your own dataset by calling an API yourself.

## Good ideas

### Use the simplest dataset that will get your point across

Bigger datasets are not always better. In many cases, having a dataset that is small enough that the students can easily understand it in it's entirety is beneficial. **Be ruthless about shrinking your dataset when you prepare it.** Sample the dataset to reduce the number of rows. Delete columns that you don't use.

### Use an appropriate dataset

If your course spends a lot of time discussing categorical data, make sure your datasets have plenty of categorical variables. If your course is on a particular type of model, make sure it demonstrates the strenghts of that model.

### Familiarize yourself with the datasets

Models can often give weird answers due to quirks of the input dataset. Since these can be confusing to students, you need to spot any problems before you come to write the exercises on them. Have a thorough play with the the datasets you intend to teach before finalizing the list.

### Distinguish datasets for coding exercises and for videos

You can use the same datasets for both the coding exercises and the videos. However, some instructors prefer to have different datasets for each exercise type. If you want to do this, make sure to indicate what you will use each dataset for in the course spec.

## Common problems and their solutions

### Using an overused dataset

The following datasets are overused and feedback from our students suggests that they should be avoided. Please choose different ones.

- Iris
- mtcars
- Gapminder
- Wine dataset
- Wisconsin breast cancer
- Titanic
- Boston housing

### Using a dataset without a commercial licence

DataCamp is a commercial education company. This means that you may only use datasets that have licences permitting commerical usage.

### The dataset doesn't give the answer I wanted

Sometimes datasets give unexpected answers, and this can make the narrative in the exercise tricky or confusing. It is best to develop a reasonable familiarity with your datasets during course speccing phase, when it is easiest to swap the dataset for a different one.

## How will this be reviewed?

Your Curriculum Lead will discuss your responses to the brainstorming questions. They will not be formally reviewed (though they provide important context for reviewers).
