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
|- chapter2/
|  |- lesson1.yml
|  |- lesson2.yml
|- chapter3/
|  |- lesson1.yml
|  |- lesson2.yml
|- chapter4/
|  |- lesson1.yml
|  |- lesson2.yml
|- .gitignore
|- README.md
|- manifest.yml
```

An overview of what each of this does is:

| File/Folder                   | Description                                                                                                                  |
| :--------------------         | :-------------------------------------------------------------------------                                                   |
| `assets*/`                    | Folder containing all datasets you may want to use during the challenge creation process (eg. csv / python/ R / image files) |
| `chapter*/`                   | Contains all challenges you have created.                                                                                    |
| `.gitignore`                  | Files and folders which should be ignored by Git                                                                             |
| `README.md`                   | A readme file with a list of resources more explanation to get started                                                       |
| [`manifest.yml`](manifest.md) | A manifest file specifying paths to chapters and assets.                                                                     |

## Manifest

The manifest file `manifest.yml` lays out the locations of your chapters,
lessons, and assets.

| Field            | Sub Field     | Sub Field     | Explanation                                      |
|------------------+---------------+---------------+--------------------------------------------------|
| `title`          |               |               | Title of the mobile course                       |
| `description`    |               |               | Description of the course                        |
| `from`           |               |               | A special key reserved and used only by DataCamp |
| `key`            |               |               | A unique UUID for the course                     |
| `badge_url`      |               |               |                                                  |
| `status`         |               |               |                                                  |
| `technology_key` |               |               |                                                  |
| `assets`         | `type`        |               |                                                  |
|                  | `key`         |               |                                                  |
|                  | `url`         |               |                                                  |
|                  | `tabs`        | `file`        |                                                  |
|                  |               | `table`       |                                                  |
| `chapters`       | `key`         |               |                                                  |
|                  | `title`       |               |                                                  |
|                  | `description` |               |                                                  |
|                  | `status`      |               |                                                  |
|                  | `lessons`     | `key`         |                                                  |
|                  |               | `title`       |                                                  |
|                  |               | `description` |                                                  |
|                  |               | `practice`    |                                                  |
|                  |               | `fileName`    |                                                  |
