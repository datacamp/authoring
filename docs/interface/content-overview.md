# Content Overview

Once you have created your first course as explained in [Creating courses](/courses/README.md) wiki page a new course is going to appear on your [Dashboard](/interface/dashboard.md):


By clicking on a course name you can access the `Content Overview` you should be seeing a page similar to:

![Content overview example](/images/interface/content-overview.png)  
*Content overview example*

## Context

The overview pane features a tab for every branch in your GitHub repository. Every branch has its own overview. This is because each branch on GitHub corresponds to a different course on DataCamp. The master branch always corresponds to the 'production' version of your course. 

By making a separate course for each branch, it becomes easy to work on big updates and to collaborate on a course: you simply create a new branch and make changes on the branch. You can add a new branch via the repository overview by clicking on the + sign at the top of your repository window.

Once the new branch is created, you can start making updates to that branch. That way, you can share a 'development version' of your course with a test audience, before merging those changes into the master branch, corresponding to the 'production' version of the course.

Each 'branch overview' shows you the title, author, course image and author badge of the course. If you click the course title, you are redirected to the course corresponding to the selected branch on DataCamp. Next to this general information, the branch overview contains tabs with the most recent build, the build history and the settings. All of this information - title, images, builds settings - is branch-specific.

## Build information

Whenever you make a change to a particular branch on your GitHub repository, DataCamp notices and starts a build attempt. It fetches all the course files from the branch, parses them, performs validity checks on them, and uploads them to DataCamp's databases, so that they are available on the learning platform.

![Content overview build status](/images/interface/content-overview-build-status.png)  
*An example of current build status*

Each such build attempts is listed in the Build History tab. The collapsed view shows the state of the attempt (in progress, warning, passed or failed), the time and last contributor to the changes. You can click the "Show Details" link to display all commit messages (you can click the commit hashes to inspect them on GitHub) and the build logs that are produced by building the course. If something went wrong during the build, it is here that you can figure out what went wrong and make appropriate changes. Some of the build logs will be clickable and will guide you towards the place where you should correct your markdown files.

![Content overview build example](/images/interface/content-overview-build-example.png)  
*An example of current detailed build*

The "Most Recent Build" tab is simply an already expanded version of the last build attempt you've made, with the exact same information.

## Settings

Under the "Settings" tab, you can adapt the settings of a particular repository's branch.

On every build attempt, all exercises in your chapters can be tested for correctness: it checks whether running the exercise's solution happens without errors and whether the Submission Correctness Test passes, presenting the success message to the student. When you push changes to a branch, by default only the chapters that are updated are tested. This setting can be updated to test all chapters whenever a change is made, or to test no chapters whatsoever. It is suggested to not test chapters when your course is still in early development, and you don't expect the exercises to all work. Later, when your course becomes ready for production, you can switch back to testing the chapters that are updated. Note: Your changes will be updated in the corresponding DataCamp course, even though some exercises might fail.
