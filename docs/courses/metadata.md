# Metadata

All general information concerning the course is contained in the YAML-formatted `course.yml` file. You can update the `course.yml` at all times by simply committing your changes to the GitHub repository and the DataCamp course will be updated accordingly

__title*__

Title of the course.

__description*__

Description of the course.

__programming_language*__

Programming language of the course (r, python or sql).

__difficulty_level*__ 

1, 2 or 3, depending on the difficulty of the course. 1 corresponds to beginner, 2 to intermediate and 3 to advanced.

---

__from__

The base docker image to use for the course. Every time a student of your course tries  to do an exercise, this docker image is used to spin up a unique session. For example, the Intro to SQL course uses:

```yaml
from: 'postgresql-base-prod:22'
```

Note that in addition to specifying the base docker image in `course.yml`, you can further customize your image by specifying requirements (`requirements.sh`, `requirements.r`) to install binaries, python/r packages, copy datasets etc.


__prerequisites__ 

a YAML list of course ids that are a prerequisite of this course. For example, you will need to add the following yaml snippet to make Introduction to R (58) and Intermediate R (672) a prerequisite.

```yaml
prerequisites:
  - 58
  - 672
```

__time_needed:__ 

The time needed to finish the course. Use small caps. "4 hours", for example.

__university__

Organization, university or company the author is linked to.

__practice_pool_id__

The practice pool that links to this course. Specifiying this id ensures that the practice session related to this course gets displayed in the user's dashboard, after they complete the course.

__datasets__ 

YAML key value combinations that explicitely define the datasets that are used in this course. The key is the filename of the dataset, the value is the humanized title of the dataset, that will be shown on the course page. If the value is __IGNORE__, the dataset won't be shown on the course page. In the example shown below,  the first 2 datasets will be displaed as "Super nice dataset" and "Some image", while the last one will be ignored.

```yaml
datasets:
  some_data.RData: Super nice dataset
  some_image.jpg: Some image
  r_script_i_need.R: __IGNORE__
```


> #### info::Note
> to make your life easier, there's an automated system that will add the datasets in your datasets directory to your course.yml. The system will try to generate a humanized string, you can change it afterwards (or change it to __IGNORE__ if you want the system to ignore this dataset). To trigger it, you'll see a button in the build status block of your course, in the Home tab. 
