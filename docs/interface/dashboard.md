# Course dashboard

![Teach dashboard](../images/courses/teach-dashboard.png)
*Teach dashboard*

The landing page consists of two parts: a sortable, filterable and paginated table of course repositories and a modal to create new courses. The table has the following columns:

- **Title**: the title of the course (or repository name if it is not properly built yet)
- **Owner**: the owner of the repository. If the repository has no owner yet, you can claim it if it's yours.
- **Instructors**: instructors of the repository. You can set these in the Settings tab of the master branch of the repository.
- **Updated by me**: when the repository was last updated by me
- **Updated by instructor**: when the repository was last updated by an instructor
- **Unreviewed time**: the time differences between when the repository was last updated by me and when it was last updated by an instructor
- **Last updated branch**: the branch of this repository that was last updated

For featured courses the following extra columns are in the table:

- **Completion rate**: the percentage of course takers that completed the course
- **Rating**: the user rating of the course
- **Hint rate**: the percentage of students that take a hint, averaged over each exercise of the course
- **Solution rate**: the percentage of students that take a solution, averaged over each exercise of the course

The following features are also important in the course dashboard:

- The **search field** will do string matching in the following columns: title, owner, instructors and last updated branch.
- Checking the **"Only my courses"** checkbox will show you only courses that are owned by you. 
***Note**: the first time using the dashboard, no courses will be owned by you.*
- In the upper right corner of the dashboard, you can choose between Featured/Development courses. Featured courses are courses that are in production on DataCamp.
- You can synchronize the shown repositories with GitHub by hitting the **"Refresh List"** link in the upper right corner of the dashboard.
- The table is paginated, which means the rows are shown per 10. You can show all the repositories, but this can be slow if there are a lot of repositories.