## Challenges

Coding up challenges is pretty similar to coding up normal exercises. This time, however, there is no course-chapter-exercise concept. Instead, challenges are simply grouped in pools. All challenges have to specified as markdown files in the `challenges/` folder. You can choose the names of the markdown files, the number of challenges per file, and how to structure the challenges.

Challenges use a simple directory structure.

```text
|- README.md
|- pool.yml*
|- challenges*
|  |- chapter1.md*
|- datasets
|- requirements.r
|- requirements.sh
```

An overview of what each of this does is:

| File/Folder         | Description                                                              |
|:--------------------|:-------------------------------------------------------------------------|
| `README.md`         | A readme file with a list of resources more explanation to get started.  |
| `pool.yml*`         | (__required__) A yaml file with challenge metadata                       |
| `challenges*`       | (__required__) A folder with markdown files consisting of challenges     |
| `datasets`          |                                                                          |
| `requirements.R`    |                                                                          |
| `requirements.sh`   |                                                                          |