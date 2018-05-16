# Assets: Images & Datasets

A DataCamp course has a badge, and your exercises will typically use datasets, so you can add these assets to your course through our platform or through GitHub.

## Images

When you create a course with the "[Create a DataCamp Course](/interface/create-content-dialog.md)" dialog, DataCamp creates an `img/` folder with a template course shield image called `shield_image.png`. You can replace the course shield image with your own so long as you use the same name and keep the file's size under 1Mb. As soon as you push the changes to GitHub, your course's image will be updated.

## Datasets

The recommended way of uploading your assets is by using the [Teach editor assets interface](/interface/teach-editor.md#editor-upload-assets).  However, you can also add files directly to the `datasets` folder in the root of your course's repository (and create the folder if it doesn't exist). Every file in the `datasets` folder with a recognized extension will be uploaded whenever you push the changes to GitHub. The build logs in the repository overview will inform that they have been uploaded to DataCamp's S3 servers and provide a link you can use in `requirements.r`, `requirements.sh`, or the `pre_exercise_code` block of your exercises to download the file.

For example, to load an RData file in an R exercise:

    `@pre_exercise_code`
    
    ```{r}
    load(url("http://assets.datacamp.com/production/course_123/my_file.RData"))
    ```

and to load a CSV file in a Python exercise with Pandas:

    `@pre_exercise_code`
          
    ```{python}
    import pandas as pd
    df = pd.read_csv('http://assets.datacamp.com/production/course_234/gapminder.csv', index_col = 0)
    ```

Datasets can be up to 10Mb in size. The following extensions are supported for upload:

| `RProfile` | `R`        | `Rda` | `Rdata`   | `Rds`    | `Rhistory` | `Rmd`  | `csv` | `db3`  |
| `db3`      | `dta`      | `gif` | `hdf5`    | `jpeg`   | `jpg`      | `json` | `mat` | `p`    |
| `png`      | `sas7bdat` | `sav` | `sqlite3` | `sqlite` | `tsv`      | `txt`  | `xls` | `xlsx` |

If there are other file extensions that you want to upload, please contact support.

> #### info::NOTE
> Don't use an RData file to store functions that you want to make available in your R exercises: because our submission checking system executes student and solution code in separate environments, this causes issues. Instead, put the functions in a script in your datasets folder and use `eval(parse("link_to_script_url"))` in your pre-exercise code to make the functions available.

### Handling Larger Datasets

If your course repeatedly uses large datasets, it may make sense to add these to your course image rather than downloading them repeatedly.  To do this, put appropriate instructions in the `requirements.r` or `requirements.sh` file.  For example, to make `iris.csv available at `/usr/local/share/datasets/iris.csv` in an R course, you can add this to `requirements.r`:

```r
data_dir <- "/usr/local/share/datasets"
dir.create(data_dir)
download.file(
  "http://s3.amazonaws.com/assets.datacamp.com/staging/course_2406/datasets/iris.csv",
  destfile = file.path(data_dir, "iris.csv")
)
```

For a Python, SQL, or Shell course, you can add these lines to `requirements.sh`:

```sh
DATADIR=/usr/local/share/datasets/
mkdir -p $DATADIR
wget -O $DATADIR/iris.csv http://s3.amazonaws.com/assets.datacamp.com/staging/course_2406/datasets/iris.csv
```
