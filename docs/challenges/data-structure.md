# Data structure

Challenges consists of a simple directory structure used by the DataCamp build process to generate the views your students will be able to interact with.

Depending on the technology (`R`, `Python`, `SQL`) you have chosen when creating the challenge the data structure can slightly differ.

```text
|- datasets/
|- img/
|- challenges/
|  |- my_first_challenge.md
|  |- my_second_challenge.md
|- .gitignore
|- README.md
|- pool.yml
|- requirements.r
|- requirements.sh
```

An overview of what each of this does is:

| File/Folder         | Description                                                              |
|:--------------------|:-------------------------------------------------------------------------|
| `datasets/*`          | Folder containing all datasets you may want to use during the challenge creation process (eg. csv / excel files)|
| `img/*`          | Folder containing the challenge image should as `shield_image.png`|
| `challenges/*`          | Contains all challenges you have created.                                                                       |
| `.gitignore`         | Files and folders which should be ignored by Git  |
| `README.md`         | A readme file with a list of resources more explanation to get started  |
| `pool.yml`       | A yaml file with challenges metadata                          |
| `requirements.r`   | Additional R packages you may want to use in your challenges                                                                          |
| `requirements.sh`   | Additional Python / SQL packages you may want to use in your challenges                                                                          |

Let's go over some of the most important files and folders in more detail.

## `pool.yml`
This file contains the general information about your challenge being:

| Field                | Explanation                                                                                                                                                                                                                                                                                               |
|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `title`                | Title of the challenge                                                                                                                                                                                                                                                                                       |
| `programming_language` | Programming language of the challenge (r, python, sql)                                                                                                                                                                                                                                                       |
| `from`             | A special key reserved and used only by DataCamp|


## `requirements.r`
This file holds all the `R` dependencies or packages you may want to use through your project.
Example:

```r
devtools::install_version("ggplot2", "2.2.1")
devtools::install_version("data.table", "1.10.0")
```

This file is only present when the technology of a challenge is `R`

## `requirements.sh`
This file holds all the `Python` or `SQL` dependencies or packages you may want to use through your project.
Example:

```python
pip3 install numpy==1.12.0
pip3 install pandas==0.19.2 
pip3 install dccpu==0.3.7
```

This file is only present when the technology of a challenge is `SQL` or `Python`

**[Next: Learn about supported challenges](content/README.md)**