# Swirl Exercise

Swirl courses can be hosted on the DataCamp platform. Currently, a system is in place to easily host all courses that are on [datacamp/swirl_courses](https://www.github.com/datacamp/swirl_courses), a fork of [swirldev/swirl_courses](https://www.github.com/swirldev/swirl_courses). The repository contains Swirl courses in their original format, with some slight changes to make it work on the DataCamp platform. To actually make the content available on DataCamp, you have to add a DataCamp course; an example is <https://www.github.com/datacamp/courses-swirl-r-programming>.

## Tweaking the content

To make sure the content in the [datacamp/swirl_courses](https://www.github.com/datacamp/swirl_courses) repository works properly and looks good, you  must do the following:

- Update the `initLesson.R` file of each lesson if they contain an explicit reference to `find.package("swirl")`. For example:

```R
.path2csv <- file.path(path.package('swirl'), 'Courses',
  'Getting_and_Cleaning_Data',
  'Grouping_and_Chaining_with_dplyr',
  '2014-07-08.csv'
)
```

should be changed to

```R
.path2csv <- file.path("~", ".datacamp", 'Courses',
  'Getting_and_Cleaning_Data',
  'Grouping_and_Chaining_with_dplyr',
  '2014-07-08.csv'
)
```

- Change the `lesson.yaml` files so that they use Markdown syntax: add code tags around code chunks, triple back-ticks for entire code blocks, etc.
- To make content usable by DataCamp (see below), zip the entire Swirl course and upload it to S3 (assets.datacamp.com/course/swirl/). These steps are automated in the `pack_upload.sh` script (which is in the `swirl_courses` repo), which uses `s3cmd` as an upload tool.
- Because our `swirl_courses` repository is a fork of the swirldev team's original `swirl_courses` repository, you can easily pull in updates that have been made to the original system:

```bash
git remote add upstream https://github.com/swirldev/swirl_courses.git
git fetch upstream
git checkout master
git merge upstream/master
```

## Making content available on DataCamp

Swirl courses are divided in lessons. On DataCamp, a swirl lesson corresponds is a single `SwirlExercise`. To actually add a DataCamp exercise that links to a swirl lesson, add an exercise of type `SwirlExercise` to a chapter file. For example, to add a DataCamp exercise named "Basic Building Blocks" that loads the "Basic Building Blocks" swirl lesson from the R Programming course, add this chunk to your chapter's `.Rmd` file:

    ## Basic Building Blocks

    ```yaml
    type: SwirlExercise 
    lang: r 
    xp: 250 
    ```

    `@swirl_course`

    R Programming

    `@swirl_lesson`

    Basic Building Blocks

Each swirl course has its own repository where these mappings are done.

## Behind the scenes

When you start a `SwirlExercise` on DataCamp, our system creates a Linux user on the RStudio Server for you, and then creates a `.init.yaml` file that looks like this:

```
user_id: 42463
course: R Programming
lesson: Basic Building Blocks
from: 5
```

The student can start the exercise by typing `swirl()`. This function has been overridden by the `swirlcamp::swirl()` function (see https://www.github.com/datacamp/swirlcamp); it uses the information in `.init.yaml` to download the correct course ZIP file from S3 (which was uploaded manually in the previous section), unpacks it, and then actually starts swirl. The `user_id` information is used to synchronize the left side of the swirl interface with the interface.

## Managing R packages on RStudio Server

Students do not have admin access to RStudio Server, so they can't install packages themselves. If you want to add a new course that depends on some packages, please contact us.
