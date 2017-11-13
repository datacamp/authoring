# Data structure
Course consists of a simple directory structure used by the DataCamp build process to generate the views your students will be able to interact with.

Depending on the technology (`R`, `Python`, `SQL`) you have chosen when creating the course the data structure can slightly differ.

The structure outline is as follows:

```text
|- datasets/
|- img/
|- .gitignore
|- README.md
|- chapter1.Rmd
|- chapter1.md
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
| `datasets/*`          | Folder containing all datasets you may want to use during the course creation process (eg. csv / excel files)|
| `img/*`          | Folder containing the course image should as `shield_image.png`|
| `scripts/*`          | TBD                                                                         |
| `slides/*`           | Video slide markdown files.                                                                         |
| `.gitignore`         | Files and folders which should be ignored by Git  |
| `README.md`         | A readme file with a list of resources more explanation to get started  |
| `chapter(1-n).Rmd`      | A markdown file with chapter metadata and exercises used in `R` courses      |
| `chapter(1-n).md`      | A markdown file with chapter metadata and exercises used in `Python` and `SQL` courses    |
| `course.yml`       | A yaml file with course metadata                          |
| `requirements.r`   | Additional R packages you may want to use in your course                                                                          |
| `requirements.sh`   | Additional Python / SQL packages you may want to use in your course                                                                          |

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
| `datasets`             | YAML key value combinations that explicitely define the datasets that are used in this course. The key is the filename of the dataset, the value is the humanized title of the dataset, that will be shown on the course page. If the value is __IGNORE__, the dataset won't be shown on the course page.|

Some of the fields are explained in detail below:

##### prerequisites
As previously mentioned prerequisites contain a list of course id's which are the prerequisite for the course. An example on how to specify those in the `course.yml` is:

```yaml
prerequisites:
  - 58 # Introduction to R
  - 672 # Intermediate R 
```

##### datasets
As previously mentioned datasets is a list of datasets used in the course. All the datasets are going to be visible on the course page (page which is seend by students) unless you ignore the files which shouldn't be visible. You can ignore files in the `course.yml` by using `__IGNORE__` as follows:

```yaml
datasets:
  some_data.RData: Super nice dataset
  some_image.jpg: Some image
  r_script_i_need.R: __IGNORE__ # This file won't be shown on the course page
```

### `chapter(1-n).Rmd`
As you may have noticed there could be many chapter files depending on how much you add by using the Teach Editor.  
An example would be an `R` course with 5 chapters, in such case the folder structure would contain 5 files:

```
chapter1.Rmd
chapter2.Rmd
chapter3.Rmd
chapter4.Rmd
chapter5.Rmd
```

Each chapter file contains general information about the chapter and exercises.  

### `chapter(1-n).md`
Similar to `Rmd` file `md` files are used when creating `Python` and `SQL` courses.
An example would be an `Python` course with 5 chapters, in such case the folder structure would contain 5 files:

```
chapter1.md
chapter2.md
chapter3.md
chapter4.md
chapter5.md
```

Each chapter file contains general information about the chapter and exercises.  

#### Chapter fields

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