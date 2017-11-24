Projects use a simple directory structure.

```text
|- README.md\*
|- project.yml\*
|- project.ipynb\*
|- datasets/
|- img/
|- requirements.sh
|- notebooks/
```


| id|Topic                     |
|--:|:-------------------------|
|  1|R Programming             |
|  2|Python Programming        |
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





An overview of each file/folder is provided below.

| **File**                                                                                        | **Description**                                                                                                                                     |
|-------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|
| `README.md`                                                                                       | Describe the project and links to Teach and Project App.                                                                                            |
| `project.yml`                                                                                     | Project metadata. See [*here*](projects-metadata.md) for more details                                                                              |
| [*project.ipynb*](https://github.com/datacamp/projects-babynames/blob/master/project.ipynb)     | Project notebook with tasks. See [*here*](projects-authoring.md) for more details.                                                                   |
| [*datasets/*](https://github.com/datacamp/projects-babynames/tree/master/datasets)              | Folder with datasets used by the project.                                                                                                           |
| `img/`                                                                                            | Folder containing project images like the shield                                                                                                    |
| [*requirements.sh*](https://github.com/datacamp/projects-babynames/blob/master/requirements.sh) | Bash script to install necessary packages and bake datasets into image                                                                              |
| `notebooks/`                                                                                      | Supporting notebooks (e.g. [*notebook to download data*](https://github.com/datacamp/projects-babynames/blob/master/notebooks/download-data.ipynb)) |


Let's go over some of the most important files and folders in more detail.


### `project.yml`
This file contains the general information about your project being:

| Property             | description                                                                                                                                                                                                                                                                                               |          |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| `title`                | Title of the project                                                                                                                                                                                                                                                                                       | required |
| `description`          | Short project description of the project                                                                                                                                                                                                                                                                                 | required |
| `long_description`          | Long project description                                                                                                                                                                                                                                                                                 | optional |
| `time_needed`          | The time needed to finish the course. Use small caps. "4 hours", for example                                                                                                                                                                                                                              | optional |
| `technology` | Programming language of the course (`1` = R, `2` = python, `3` = sql)                                                                                                                                                                                                                                                       | required |
| `prerequisites`        | a YAML list of course ids that are a prerequisite of this course                                                                                                                                                                                                                                          | optional |
| `difficulty_level`     | 1 = beginner, 2 = intermediate, 3 = advanced                                                                                                                                                                                                                                                              | required |
| `topics`     | Id's of the topics project is covering. Set by DataCamp                                                                                                                                                                                                                                                         | required |
| `illustration`     | URL to the project image                                                                                                                                                                                                                                                         | optional |
| `language`     | One of `r`, `python` or `sql`                                                                                                                                                                                                                                                         | optional |
| `from`                 | A special key reserved and used only by DataCamp                                                                                                                                                                                                                            | required |
| `datasets`             | YAML key value combinations that explicitly define the datasets that are used in this course. The key is the filename of the dataset, the value is the humanized title of the dataset, that will be shown on the course page. If the value is,`__IGNORE__`, the dataset won't be shown on the course page | optional |

Properties which require additional explanation are:

##### prerequisites

As previously mentioned prerequisites contain a list of course id's which are the prerequisite for the course. An example on how to specify those in the `course.yml` is:

```yaml
prerequisites:
  - 58 # Introduction to R
  - 672 # Intermediate R
```

##### datasets

As previously mentioned datasets is a list of datasets used in the course. All the datasets are going to be visible on the course page (page which is seen by students) unless you ignore the files which shouldn't be visible. You can ignore files in the `course.yml` by using `__IGNORE__` as follows:

```yaml
datasets:
  some_data.RData: Super nice dataset
  some_image.jpg: Some image
  r_script_i_need.R: __IGNORE__ # This file won't be shown on the course page
```

> #### info::Note
> to make your life easier, there's an automated system that will add the datasets in your datasets directory to your course.yml. The system will try to generate a humanized string, you can change it afterwards (or change it to `__IGNORE__` if you want the system to ignore this dataset). To trigger it, you'll see a button in the build status block of your course, in the Home tab.

You may have noticed that`language` and `technology` are both required regardless of specifying similar data. This is due to legacy reasons and could be subject to change in upcoming versions.

### `project.ipynb`
This while should be created by using the Jupyter notebook. DataCamp will read contents of the file and create the project for your students.