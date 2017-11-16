# Data structure
Course consists of a simple directory structure used by the DataCamp build process to generate the views your students will be able to interact with.

Depending on the technology (`R`, `Python`, `SQL`) you have chosen when creating the course the data structure can slightly differ.

The structure outline is as follows:

```text
|- datasets/
|- img/
|- .gitignore
|- README.md
|- chapter1.md
|- chapter2.md
|- ...
|- chapterN.md
|- course.yml
|- requirements.r
|- requirements.sh
|- scripts
|  |- ch1_1_script.md
|  |- ch1_2_script.md
|- slides
|  |- ch1_1_slides.md
|  |- ch1_2_slides.md
```

An overview of what each of this does is:

| File/Folder         | Description                                                              |
|:--------------------|:-------------------------------------------------------------------------|
| `datasets/*` | Folder containing all datasets you may want to use during the course creation process (eg. csv / excel files)|
| `img/*` | Folder containing the course image should as `shield_image.png`|
| `scripts/*` | Contains all the narrative which corresponds to the slides and the videos included in the course |
| `slides/*` | Video slide markdown files. |
| `.gitignore` | Files and folders which should be ignored by Git  |
| `README.md` | A readme file with a list of resources more explanation to get started  |
| `chapterX.md` | A markdown file with chapter metadata and exercises  |
| `course.yml` | A YAML file with course metadata |
| `requirements.r` | Additional R packages you may want to use in your course |
| `requirements.sh`   | Additional Python / SQL packages you may want to use in your course |

Let's go over some of the most important files and folders in more detail.

### `course.yml`
This file contains the general information about your course being:

| Field                | Explanation                                                                                                                                                                                                                                                                                               |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `title`                | Title of the course                                                                                                                                                                                                                                                                                       |
| `university`           | Organization, university or company the author is linked to                                                                                                                                                                                                                                               |
| `description`          | Description of the course                                                                                                                                                                                                                                                                                 |
| `programming_language` | Programming language of the course (r, python, sql)                                                                                                                                                                                                                                                       |
| `difficulty_level`     | 1, 2 or 3, depending on the difficulty of the course. 1 corresponds to beginner, 2 to intermediate and 3 to advanced. You can also use the difficulty level of 0: a Getting Started course.                                                                                                               |
| `time_needed`          | The time needed to finish the course. Use small caps. "4 hours", for example                                                                                                                                                                                                                              |
| `prerequisites`        | a YAML list of course ids that are a prerequisite of this course                                                                                                                                                                                                                                          |
| `datasets`             | YAML key value combinations that explicitly define the datasets that are used in this course. The key is the filename of the dataset, the value is the humanized title of the dataset, that will be shown on the course page. If the value is  `__IGNORE__`, the dataset won't be shown on the course page.|

Some of the fields are explained in detail below:

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

### `chapterX.(R)md`

The content of a course is organized into chapters, each of which consists of one or more exercises.  

Similar to the `course.yml`, every chapter files start with a YAML header containing information about the chapter:

```yaml
---
title    : Introduction to Basics
title_meta: Chapter 1
description: In this chapter, you will take your first steps with R.
---
```

#### Chapter fields

Each chapter file contains general information about the chapter in YAML format such as:

| Field        | Explanation                                                                                                                          |
|--------------|--------------------------------------------------------------------------------------------------------------------------------------|
| title        | Title of the chapter                                                                                                                 |
| description  | Description of the chapter                                                                                                           |
| free_preview | If it's a paying course, whether this chapter is a free preview (typically the first chapter of a premium course is a free preview). |
| attachments  | Generic way to include attachments. Typically used to include slides for the chapter, through slides_link                            |

###### attachments

You can specify attachments for the chapter, currently only used to specify the slides for the chapter by using the `slide_link`. Example:
```yaml
attachments:
  slides_link: http://link.to.slides/
```

#### md vs Rmd

The `.md` extension for chapter files is supported for all languages (`R`, `Python` and `SQL`). In addition, you can use the `.Rmd` format for R courses. `.Rmd` provides a specific `R` technology markdown flavor and syntax on Github.  

### `requirements.r`

This file holds all the `R` dependencies or packages you may want to use through your project.
Example:

```r
devtools::install_version("ggplot2", "2.2.1")
devtools::install_version("data.table", "1.10.0")
```

This file is only present when the technology of a course is `R`

### `requirements.sh`
This file holds all the `Python` or `SQL` dependencies or packages you may want to use through your project.
Example:

```python
pip3 install numpy==1.12.0
pip3 install pandas==0.19.2
pip3 install dccpu==0.3.7
```

This file is only present when the technology of a course is `SQL` or `Python`

**[Next: Learn about exercises](exercises/README.md)**
