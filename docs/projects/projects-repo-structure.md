The repository structure of a Project
==========================================

The main file of a Project is the Project Jupyter notebook. But for the project to be built and published on DataCamp it has to be put in a GitHub repository with a specific file and folder structure. If you are following [the project creation process](projects-process.md), then you usually won't have to deal with this as your DataCamp contact will help you set everything up. 

The Project repository name should follow the convention `projects-(short-project-name)-(r|python)`. For example, `projects-forecasting-horse-demand-python` or `projects-ab-testing-ponies-r` are good names.

A complete project repository has the following files and directories:

* `project.ipynb` : The Project Jupyter notebook that describes the whole Project. [See here for the format](projects-format.md).
* `project.yml` : A YAML file with metadata regarding the Project such as title, the difficulty level, etc. [See here for the format](#project-yml).
* `datasets/` : In this folder you'll put all files that the student will need to access when doing the project. It will automatically be uploaded with your Project. That is, if you have added `datasets/top_10_horses.csv`, then the student will also be able to access `datasets/top_10_horses.csv` when doing the project.
* `img/` : In this folder you'll put all image you need to reference from `markdown` cells in `project.ipynb`. Only images put in this folder will be displayed when the Project is live. Avoid linking to external images.
* `img/project_image.png` : A project image which is going to be shown on your project page. Your DataCamp contact will create this for you.
* `requirements.sh` : This shell script will be executed on the Linux (Ubuntu) image that your Project will run from. It can be used to install python libraries (using `pip`) and to install other requirements (using, for example, `apt-get`).
* `requirements.R` (optional) : If you're developing an R project then this (optional) R script can be used to install needed packages. It will be run after `requirements.sh`.

Except for these required files and folders, a Project repository can contain *any* other files and folders you use when developing the Project.


> #### info::Check out an existing project repository! 
> The easiest way of understanding the structure of a Project repository is to look at an example. Here are the R and python repositories behind the project *Dr. Semmelweis and the discovery of handwashing*. Here is the [python GitHub repo](https://github.com/datacamp/projects-discovery-of-handwashing-python) (and [live project](https://projects.datacamp.com/projects/20)), here is the [R GitHub repo](https://github.com/datacamp/projects-discovery-of-handwashing-r) (and [live project](https://projects.datacamp.com/projects/49)).



Format of `project.yml` {#project-yml}
-------------------------------------------

The `project.yml` file contains metadata for the Project written in the [YAML file format](https://learnxinyminutes.com/docs/yaml/). The fields you'll need to edit as the author of a Project are:

(Here in YAML notation)

```yaml
#### General information about the project    ####
#### All this will be visible on DataCamp.com ####
title          : "The title of the project" # max 41 character
description    : >
  A short description of the project, less than 110 characters.
long_description: |
  A longer description of the project around 4 - 8 lines (a line is 80 characters). Written in markdown.
  Should mention and link to prerequisite courses.
time_needed: "45 minutes" # "30/45/60 minutes".
instructors: # DataCamp connected email of the creator of the Project
  - horse.mcponyface@horsemail.com
collaborators: # DataCamp connected email of people that helped with the Project
  - rasmus@datacamp.com
```

Except for these fields, there are also a number of fields with technical details specific to the DataCamp platform. These will most often be filled in by your DataCamp contact:

```yaml
#### Metadata regarding course requirements and topics ####
#### This will be updated by your DataCamp contact     ####
technology: 2 # 1 == R, 2 == python, 3 == sql
# IDs for courses that are prerequisites
# See https://mb.datacamp.com/question/126 for IDs
prerequisites: # Course prerequisites for the Project
  - 799
difficulty_level: 2 # 1 == easy, 2 == medium, 3 == hard
# IDs for the topics the project covers
# See https://mb.datacamp.com/question/319 for IDs
topics: # What topics the project covers
  - 12
# Amount of XP student will earn for completing the project. Default value is 1500.
xp: 1500 

#### Technical settings for the docker image running the project ####
#### This will be updated by your DataCamp contact.              ####
language       : python # One of r, python or sql
# The name of the docker image used to run the course
from           : 'python-notebooks-prod:93'
runtime_config : default # default/heavy . Set to heavy for more resource intensive projects.
```

The `topic` id's are as follows:

| id|Topic                     |
|--:|:-------------------------|
|  3|Data Manipulation         |
|  4|Data Visualization        |
|  5|Reporting                 |
|  6|Machine Learning          |
|  7|Probability & Statistics  |
|  8|Importing & Cleaning Data |
|  9|Applied Finance           |
| 10|Programming               |
| 11|Other                     |
| 12|Case Studies              |





