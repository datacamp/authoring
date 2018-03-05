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
| `.gitignore`                  | Files and folders which should be ignored by Git                                                                  |
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
the locations of your chapters, lessons, and assets.

| Field              | Sub Field     | Sub Field     | Explanation                                               |
|--------------------|---------------|---------------|-----------------------------------------------------------|
| `authoringVersion` |               |               | Should be set to `2` the current authoring format version |
| `title`            |               |               | Title of the mobile course                                |
| `description`      |               |               | Description of the course                                 |
| `key`              |               |               | A unique UUID for the course                              |
| `badge_url`        |               |               | URL of the course badge image                             |
| `status`           |               |               | Set to `LIVE` when the course is ready to be launched     |
| `technology_key`   |               |               |                                                           |
| `assets`           | `type`        |               |                                                           |
|                    | `key`         |               |                                                           |
|                    | `url`         |               |                                                           |
|                    | `tabs`        | `file`        |                                                           |
|                    |               | `table`       |                                                           |
| `chapters`         | `key`         |               |                                                           |
|                    | `title`       |               |                                                           |
|                    | `description` |               |                                                           |
|                    | `status`      |               |                                                           |
|                    | `lessons`     | `key`         |                                                           |
|                    |               | `title`       |                                                           |
|                    |               | `description` |                                                           |
|                    |               | `practice`    |                                                           |
|                    |               | `fileName`    |                                                           |
