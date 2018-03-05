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
|  |- practice.yml
|- chapter2/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- practice.yml
|- chapter3/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- practice.yml
|- chapter4/
|  |- lesson1.yml
|  |- lesson2.yml
|  |- practice.yml
|- .gitignore
|- .circleci
|  |- config.yml
|- README.md
|- manifest.yml
```

An overview of what each of this does is:

| File/Folder                   | Description                                                                                                       |
| :--------------------         | :-------------------------------------------------------------------------                                        |
| `assets*/`                    | Folder containing all datasets or images you may want to use in your lessons (eg. csv / python/ R / image files). |
| `chapter*/`                   | Contains all the lessons for a particular chapter. This is a convention, not a strict requirement.                |
| `.gitignore`                  | Files and folders which should be ignored by Git.                                                                 |
| `README.md`                   | A readme file with a list of resources more explanation to get started.                                           |
| [`manifest.yml`](manifest.md) | A manifest file specifying metadata about the course, chapters, lessons, and assets.                              |

## Assets

This directory should contain all datasets or images you may want to use in your
lessons (eg. csv / python/ R / image files). You can organize it any way you
like, but sub-directories for images, datasets, etc. is one logical strategy.

## Chapters

Each chapter should belong to its own dedicated subdirectory. You can name
lessons according to their subject matter or ordinality at your own discretion.

## README

The course README should explain the objective of the course and outline the
curriculum at a high level.

## .gitignore

[Typical `.gitignore` file](https://www.atlassian.com/git/tutorials/gitignore).

## .circleci/config

The `.circleci/config.yml` file is the configuration for DataCamp's course build
process. It triggers the building and deployment of your course when you perform
certain actions, like merging into `development` / `master` branches, or tagging
a release. See [the development process documentation](development.md) for more
details.

## Manifest

The manifest file `manifest.yml` is what ties everything together. It lays out
the locations of your chapters, lessons, and assets. For example:

```yaml
authoringVersion: 1
title: Introduction to SQL
description: "Master the basics of querying databases with SQL, the world's most popular databasing language."
key: e738342c-15ca-4866-8786-500214d9a363
main_id: 1946
badge_url: https://s3.amazonaws.com/assets.datacamp.com/mobile/course_badges/SQL%402x.png
status: LIVE
technology_key: SQL

chapters:
  - key: 2caafbb1-c116-4c66-9c7f-857b1155ff3c
    title: Selecting Columns
    description: A brief introduction to working with relational databases.
    status: LIVE
    main_id: 5261
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
      table:
        title: Films
  - type: dataset
    key: reviews
    url: assets/datasets/reviews.csv
    tabs:
      table:
        title: Reviews
  - type: dataset
    key: roles
    url: assets/datasets/roles.csv
    tabs:
      table:
        title: Roles
```

The general structure is at least somewhat self-explanatory, but here's a
breakdown:

| Field              | Sub Field     | Sub Field     | Explanation                                               |
|--------------------|---------------|---------------|-----------------------------------------------------------|
| `authoringVersion` |               |               | Should be set to `2` the current authoring format version |
| `title`            |               |               | Title of the mobile course                                |
| `description`      |               |               | Description of the course                                 |
| `key`              |               |               | A unique UUID for the course                              |
| `badge_url`        |               |               | URL of the course badge image                             |
| `status`           |               |               | Set to `LIVE` when the course is ready to be launched     |
| `technology_key`   |               |               | One of `R`, `PYTHON`, or `SQL`                            |
| `assets`           | `type`        |               | One of `image` or `dataset`                               |
|                    | `key`         |               | How will this asset be referenced in exercise YAML?       |
|                    | `url`         |               | The path to the asset (relative to the root directory)    |
|                    | `tabs`        | `file`        |                                                           |
|                    |               | `table`       |                                                           |
| `chapters`         | `key`         |               | A unique UID for the chapter                              |
|                    | `title`       |               |                                                           |
|                    | `description` |               |                                                           |
|                    | `status`      |               |                                                           |
|                    | `lessons`     | `key`         |                                                           |
|                    |               | `title`       |                                                           |
|                    |               | `description` |                                                           |
|                    |               | `practice`    |                                                           |
|                    |               | `fileName`    |                                                           |
