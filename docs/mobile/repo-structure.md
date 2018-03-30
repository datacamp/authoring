# Repository Structure

A mobile course repository consists of a simple directory structure used by the
DataCamp build process to generate the views your students will be able to
interact with.

```text
|- assets/
|  |- images/
|  |- datasets
|- chapter1/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- lesson3.yml
|  |- lesson4.yml
|  |- practice.yml
|- chapter2/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- lesson3.yml
|  |- lesson4.yml
|  |- practice.yml
|- chapter3/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- lesson3.yml
|  |- lesson4.yml
|  |- practice.yml
|- chapter4/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- lesson3.yml
|  |- lesson4.yml
|  |- practice.yml
|- .gitignore
|- .circleci
|  |- config.yml
|- README.md
|- manifest.yml
```

| File/Folder                   | Description                                                                                                                                                                                                                                                                                                                                |
| :--------------------         | :-------------------------------------------------------------------------                                                                                                                                                                                                                                                                 |
| `assets*/`                    | Folder containing all datasets or images you may want to use in your lessons (eg. csv / image files).                                                                                                                                                                                                                          |
| `chapter*/`                   | Contains all the lessons for a particular chapter. This is a convention, not a strict requirement.                                                                                                                                                                                                                                         |
| `.gitignore`                  | Files and folders which should be ignored by Git.                                                                                                                                                                                                                                                                                          |
| `.circleci/config`            | The configuration file for the course build process. You don't have to worry about this. It triggers the building and deployment of your course when you perform certain actions, like merging into `development` / `master` branches, or tagging a release. See [the development process documentation](development.md) for more details. |
| `README.md`                   | A README that should explain the objective of the course and outline the curriculum at a high level.                                                                                                                                                                                                                                       |
| [`manifest.yml`](manifest.md) | A manifest file specifying metadata about the course, chapters, lessons, and assets.                                                                                                                                                                                                                                                       |

# Manifest

The manifest file `manifest.yml` is what ties everything together. It lays out
the locations of your chapters, lessons, and assets. For example:

```yaml
authoringVersion: 2
title: Introduction to SQL
description: "Master the basics of querying databases with SQL, the world's most popular databasing language."
key: # generate me!
# main_id: 1946
badge_url: https://s3.amazonaws.com/assets.datacamp.com/mobile/course_badges/SQL%402x.png
status: LIVE
technology_key: SQL

chapters:
  - key: # generate me!
    title: Selecting Columns
    description: A brief introduction to working with relational databases.
    status: LIVE
    main_id: 5261
    lessons:
      - key: # generate me!
        title: Beginning your SQL journey
        description: Learn the basics of SQL.
        practice: false
        fileName: chapter1/lesson1.yml
      - key: # generate me!
        title: Learning to count
        description: Data science is mostly counting things.
        practice: false
        fileName: chapter1/lesson2.yml
      - key: # generate me!
        title: Practice
        description: "Practice what you've learned."
        practice: true
        fileName: chapter1/practice.yml

assets:
  - type: dataset
    key: people
    url: assets/datasets/people_small.csv
    tabs:
      table:
        title: people
      file:
        title "people.csv"
  - type: dataset
    key: films
    url: assets/datasets/films_small.csv
    tabs:
      table:
        title: films
      file:
        title: "films.csv"
```

All the key names are case sensitive. The [`mobile-teach`
check](/mobile/development.md) command will flag any mistakes or missing fields
in the manifest.

There are 4 key components to the manifest:

* Course metadata
* Chapter metadata
* Lesson metadata
* Asset metadata

Lets break down the example manifest above into these smaller chunks.

## Course metadata

```yaml
authoringVersion: 2
title: Introduction to SQL
description: "Master the basics of querying databases with SQL, the world's most popular databasing language."
key: e738342c-15ca-4866-8786-500214d9a363
# main_id: 1946
badge_url: https://s3.amazonaws.com/assets.datacamp.com/mobile/course_badges/SQL%402x.png
# status: LIVE
technology_key: SQL
```

| field              | description                                                                                                                                                                                      |
| :----              | :----------                                                                                                                                                                                      |
| `authoringVersion` | Should always be 2 (version 1 of the authoring format is deprecated and only exists for the first 4 courses' backwards compatibility: Intro SQL, Intro R, Intro Python and Intermediate Python). |
| `title`            | Displayed at the course level in the app.                                                                                                                                                        |
| `description`      | Displayed at the course level in the app.                                                                                                                                                        |
| `key`              | The unique UUID for the course.                                                                                                                                                                  |
| `main_id`          | The ID of the corresponding desktop course, if any. You needn't worry about this.                                                                                                                |
| `badge_url`        | Points to the course logo. You needn't worry about this either.                                                                                                                                  |
| `status`           | Can be one of `HIDDEN`, `COMING_SOON`, `BETA`, `LIVE`, or `PREMIUM`. It should generally stay set to `LIVE` unless asked otherwise.                                                              |
| `technology_key`   | Currently, one of `R`, `PYTHON`, or `SQL`.                                                                                                                                                       |

## Chapter metadata

A chapter will not appear in your course unless it is specified here explicitly.

```yaml
chapters:
  - key: 2caafbb1-c116-4c66-9c7f-857b1155ff3c
    title: Selecting Columns
    description: A brief introduction to working with relational databases.
    status: LIVE
    main_id: 5261
    lessons:
      ...
```

| field         | description                                                                        |
| :----         | :----------                                                                        |
| `key`         | The unique UUID for the chapter.                                                   |
| `title`       | Displayed at the chapter level in the app.                                         |
| `description` | Displayed at the chapter level in the app.                                         |
| `status`      | Can be one of `HIDDEN`, `COMING_SOON`, `BETA`, `LIVE`, or `PREMIUM`.               |
| `main_id`     | The ID of the corresponding desktop chapter, if any. You needn't worry about this. |
| `lessons`     | A list of all the lessons in the chapter and *their* associated metadata.          |

## Lesson metadata

Lesson metadata looks similar to course & chapter metadata.

```
lessons:
  - key: 5b0d45a2-6e81-44e5-b4a5-dc57ab3a50f9
    title: Beginning your SQL journey
    description: Learn the basics of SQL.
    practice: false
    fileName: chapter1/lesson1.yml
  - key: 5dbb1040-3ce4-40f6-a97c-f2eabf346309
    title: Learning to count
    description: Data science is mostly counting things.
    practice: false
    fileName: chapter1/lesson2.yml
  - key: eca415ab-fbd9-4f39-9930-724af8e10e36
    title: Practice
    description: "Practice what you've learned."
    practice: true
    fileName: chapter1/practice.yml
```

| field         | description                                                         |
| :----         | :----------                                                         |
| `key`         | The unique UUID for the chapter.                                    |
| `title`       | Displayed at the lesson level in the app.                           |
| `description` | Displayed at the lesson level in the app.                           |
| `practice`    | Boolean - is this a practice lesson or not?                         |
| `fileName`    | The path to the lesson file from the root of the course repository. |

### Assets metadata

Assets lay out the metadata for datasets that you might use to populate
[tabs](exercises/README.md) in your course. Any file can be rendered as a `file`
tab-type, while only CSV files can be rendered as a formatted `table` tab-type.

```yaml
assets:
  - type: dataset
    key: people
    url: assets/datasets/people_small.csv
    tabs:
      table:
        title: People
  - type: dataset
    key: films
    url: assets/datasets/films_small.csv
    tabs:
      file:
        title: films.csv
      table:
        title: Films
```

| field  | description                                                                                                                                                                                                                                                                                                                                                                                         |
| :----  | :----------                                                                                                                                                                                                                                                                                                                                                                                         |
| `type` | Currently, only `dataset` is supported.                                                                                                                                                                                                                                                                                                                                                             |
| `key`  | The alias for the asset.                                                                                                                                                                                                                                                                                                                                                                            |
| `url`  | The path to the asset from the root of the course repository.                                                                                                                                                                                                                                                                                                                                       |
| `tabs` | One entry for every possible tab-type, currently either `file` or `table`. Every tab-type requires the sub-field `title`, which will determine the name of the tab when the asset is rendered as the respective type. In the example above, the asset `films_small.csv` will have the title `films.csv` when rendered as a CSV file, and the title `Films` when rendered as a formatted table. |

| Guideline                 | Min | Reco Min | Reco Max | Max |
| :--------                 | :-- | :------- | :------- | :-- |
| Characters in a tab title | 1   | 1        | 10       | 10  |
