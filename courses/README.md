## Courses

Courses use a simple directory structure.

```text
|- README.md
|- course.yml*
|- chapter1.md*
|- datasets
|- index.md
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
| `README.md`         | A readme file with a list of resources more explanation to get started.  |
| `course.yml*`       | (__required__) A yaml file with course metadata                          |
| `chapter1.md*`      | (__required__) A markdown file with chapter metadata and exercises.      |
| `datasets`          |                                                                          |
| `index.md`          |                                                                          |
| `requirements.sh`   |                                                                          |
| `scripts/`          |                                                                          |
| `slides/`           |                                                                          |

