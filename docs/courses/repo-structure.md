# Repository Structure

A course repository is used by DataCamp's build process to generate the views your students will interact with.
Depending on the technology you chose when creating the course (R, Python, SQL, or Shell) the repository's structure can slightly differ.
In general, the repository contains:

```text
|- datasets/
|- img
|  |- shield_image.png
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

| File/Folder            | Description |
|:-----------------------|:------------|
| `datasets/*`           | Contains all datasets you may want to use in your course (e.g., CSV files) |
| `img/shield_image.png` | Logo image for the course |
| `scripts/*`            | Contains all the narrative for the course's slides and videos |
| `slides/*`             | Contains the Markdown slides for your course's videos |
| `.gitignore`           | Specifies files and folders that Git should ignore |
| `README.md`            | The Markdown file used as the course's home page on GitHub |
| `chapterX.md`          | A Markdown file containing metadata and exercises for one chapter |
| `course.yml`           | A YAML file with course metadata |
| `requirements.r`       | An R script to install additional R packages used in your course |
| `requirements.sh`      | A shell script to install other packages used in your course |

The sections below describe some of these files and folders in more detail.

### `course.yml`

This file contains general information about your course:

| Property               | Status   | Description |
|------------------------|----------|-------------|
| `title`                | required | Title of the course |
| `description`          | required | Description of the course |
| `programming_language` | required | Technology of the course (`r`, `python`, `sql`, or `shell`) |
| `time_needed`          | optional | Time needed to finish the course, e.g., "4 hours" |
| `difficulty_level`     | required | 1 = beginner, 2 = intermediate, 3 = advanced |
| `practice_pool_id`     | optional | The ID of the challenges connected to the course |
| `prerequisites`        | optional | A YAML list of course IDs of this course's prerequisites |
| `datasets`             | optional | YAML key-value pairs that define the datasets used in this course |
| `from`                 | required | Reserved for DataCamp use |

In more detail:

* `prerequisites` is a list of course IDs specifying the prerequisite for the course, such as:
```yaml
prerequisites:
  - 58 # Introduction to R
  - 672 # Intermediate R
```
* `datasets` uses filenames as keys and the human-readable titles of datasets as values to be shown on the course page. If the value is `__IGNORE__` the dataset won't be shown on the course page:
```yaml
datasets:
  some_data.RData: Super nice dataset
  some_image.jpg: Some image
  r_script_i_need.R: __IGNORE__ # This file won't be shown on the course page
```

> #### info::Note
> to make your life easier, an automated system will add the datasets in your `datasets` directory to your `course.yml` file. The system will try to generate a humanized string; you can change it afterwards (or set it to `__IGNORE__` if you don't want this dataset displayed).  You can trigger regeneration of this dataset listing by clicking the button on the build status block in the Home tab of your course.

### `chapterX.(R)md`

A course is organized into chapters, each of which contains one or more exercises.
Chapter files must be called `chapter1.md`, `chapter2.md`, and so on,
and must start with a YAML header inside triple-dashed lines containing information about the chapter:

```yaml
---
title : Introduction to Basics
title_meta: Chapter 1
description: In this chapter, you will take your first steps with R.
---
```

#### Chapter Fields

Each chapter file contains general information about the chapter in YAML format such as:

| Property               | Status   | Description |
|------------------------|----------|-------------|
| `title`                | required | Chapter title |
| `description`          | required | Brief description of the chapter |
| `free_preview`         | optional | (For premium courses) whether this chapter can be previewed for free |
| `attachments`          | optional | Attachments for the chapter (explained below) |

The `attachments` key allows you to specify extra files associated with the chapter.  Currently this is only used used to specify the slides for the chapter using the `slide_link` sub-key, like this:

```yaml
attachments:
  slides_link: http://link.to.slides/
```

The `.md` extension for chapter files is supported for all languages. You can also use the `.Rmd` extension for chapters of R courses to provide R-specific Markdown flavor and syntax on GitHub.

### `requirements.r`

This file describes all the `R` dependencies or packages your course requires, such as:

```r
devtools::install_version("ggplot2", "2.2.1")
devtools::install_version("data.table", "1.10.0")
```

This file is only present for R courses.

### `requirements.sh`

This shell script installs the dependencies or packages needed for Python, SQL, or Shell courses, such as:

```python
pip3 install numpy==1.12.0
pip3 install pandas==0.19.2
pip3 install dccpu==0.3.7
```

> #### info:Note
`requirements.sh` file is sometimes present in repositories for `R` courses when there is a need to install system-level dependencies (e.g., `libcurl`)
