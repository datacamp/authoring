# Swirl Exercise

Swirl courses can be hosted on the DataCamp platform. Currently, a system is in place to easily host all courses that are on [datacamp/swirl_courses](https://www.github.com/datacamp/swirl_courses), a fork of [swirldev/swirl_courses](https://www.github.com/swirldev/swirl_courses). The repository contains Swirl courses in their original format, with some slight changes to make it work on the DataCamp platform. To actually make the content available on DataCamp, you have to add a DataCamp course; an example is https://www.github.com/datacamp/courses-swirl-r-programming.

## Tweak the content: 

To make sure the content in the [datacamp/swirl_courses](https://www.github.com/datacamp/swirl_courses) repo works fine and looks nice, there are several things to do:

- Update the `initLesson.R` files of each lesson if they contain an explicit reference to `find.package("swirl")`. For example:

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

- Make the content look nice by changing the `lesson.yaml` files so they feature markdown syntax: add code tags around code chunks, you can also use triple bad ticks for entire code blocks etc. Have a look at what has been done before if you need inspiration.
- Before this content can actually be used by DataCamp (see further), you have to zip the entire Swirl course, and upload it to S3 (assets.datacamp.com/course/swirl/). These steps are automated in the `pack_upload.sh` script (also in the `swirl_courses` repo), that zips and uploads the zip to S3 with `s3cmd`, an upload tool.
- Because swirl_courses is a fork of the original swirl_courses repo by the swirldev team, you can easily pull in updates that have been made to the original system:

```bash
git remote add upstream https://github.com/swirldev/swirl_courses.git
git fetch upstream
git checkout master
git merge upstream/master
```

## Making it available on DataCamp

Swirl courses are divided in lessons. On DataCamp, a swirl lesson corresponds is a single `SwirlExercise`. To actually add a DataCamp exercise that links to a swirl lesson, you can add an exercise of type `SwirlExercise` to the chapter file. To add a DataCamp exercise, named Basic Building Blocks, that loads in the Basic Building Blocks swirl lesson, from the R Programming course, you need this chunk inside your chapterX.Rmd file:

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

Each 'swirl course' has its own repository, where these 'mappings' are done.

## What happens behind the scenes

When you start a SwirlExercise on DataCamp, a Python server creates a linux user on the RStudio Server for you, and creates a `.init.yaml` file, that looks like this:

```
user_id: 42463
course: R Programming
lesson: Basic Building Blocks
from: 5
```

The student can start the exercise when he/she types `swirl()`. The swirl() function has been overridden by the `swirlcamp::swirl()` function (see https://www.github.com/datacamp/swirlcamp); it uses the information in `.init.yaml` to download the correct course zip from S3 (uploaded manually, see the section 'tweak the content'), unpacks it, and then starts swirl for real. The `user_id` information is used to 'sync' the left side of the swirl interface to the interface.

## Managing R Packages on RStudio Server

Students don't have admin access to RStudio Server, so they can't install packages themselves. If you want to add a new course that depends on some packages, you have to contact the devops team.