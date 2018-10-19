# Assets

A DataCamp course's exercises will typically use datasets, so you can add these assets to your course through our platform or through GitHub. Slides also often use images and these can be uploaded as assets as well.

## Images and Datasets

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

Datasets can be up to 10Mb in size. 

> #### info::NOTE
> Don't use an RData file to store functions that you want to make available in your R exercises: because our submission checking system executes student and solution code in separate environments, this causes issues. Instead, put the functions in a script in your datasets folder and use `eval(parse("link_to_script_url"))` in your pre-exercise code to make the functions available.

### Handling Larger Datasets

If your course repeatedly uses large datasets, it may make sense to add these to your course image rather than downloading them repeatedly.  To do this, put appropriate instructions in the `requirements.r` or `requirements.sh` file.  For example, to make `iris.csv` available at `/usr/local/share/datasets/iris.csv` in an R course, you can add this to `requirements.r`:

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

### Populate database for SQL courses

The command [`sqlcmd`](https://docs.microsoft.com/en-us/sql/tools/sqlcmd-utility?view=sql-server-2017) is available in the `requirements.sh` file for courses based on `msft-sql-base-prod`. CSV format is an option to seed the database. As described above, consider the file `data.csv` to be uploaded as a dataset:

```csv
ID,VendorID,PickupDate,DropoffDate,PassengerCount
1216,2,1/1/17 6:53 AM,1/1/17 7:18 AM,1
1314,2,1/1/17 6:54 AM,1/1/17 7:03 AM,5
1384,2,1/1/17 6:55 AM,1/1/17 7:08 AM,1
1709,1,1/1/17 7:00 AM,1/1/17 7:11 AM,2
```

> #### info::Note
> Your file should be utf8 encoded.

Do the same with a SQL script named `script.sql` in charge of seeding the database:

```sql
CREATE DATABASE tripdata;
USE tripdata;
CREATE TABLE YellowTripData (ID INT, VendorID INT, PickupDate DATETIME2, DropoffDate DATETIME2, PassengerCount INT);
BULK INSERT YellowTripData FROM '/home/repl/data.csv' WITH(FIELDTERMINATOR =',', ROWTERMINATOR = '\n', FIRSTROW = 2);
GO
```

And finally, add these lines in `requirements.sh`:

```bash
wget https://s3.amazonaws.com/assets.datacamp.com/production/course_**COURSEID**/datasets/data.csv
wget https://s3.amazonaws.com/assets.datacamp.com/production/course_**COURSEID**/datasets/script.sql

./start_server.sh
sqlcmd -b -i ./script.sql
```
