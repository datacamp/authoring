# Frequently Asked Questions

## DataCamp commits to my repository on my behalf, why?

Before you can create a course, you have to log in to DataCamp, and link your account to GitHub. From that moment on, DataCamp is able to make changes to the repositories you've linked on your behalf. For example, when you create a new course with the "Create a DataCamp Course" dialog, we will create a repository for you, and pre-fill it with course and chapter files with several commits. That way, the build process for your course is automatically triggered and a DataCamp course results.

Another point where DataCamp does commits on your behalf, is for setting 'exercise keys'. These keys are meant to make the link between your exercises in the GitHub repository and the exercises on DataCamp's databases.

## Is GitHub necessary to teach on DataCamp? Can we use our own tools?

We are currently depending heavily on GitHub, but we're exploring other possibilities for private and proprietary content. More specifically, we're looking at GitLab to host our own premium courses. During development, we may also explore ways to allowing other GitLab instances to connect to DataCamp.

## How are courses hosted? Is it possible to have courses only available to a select group of people?

Courses are always hosted on datacamp.com. There are different states for a course: development and published. Development courses are only available to those who have the link to the course. Published courses are available through a human-readable slug (www.datacamp.com/courses/my-awesome-course), but not findable by Google. Currently, we do not have a system in place to grant access to a particular number of people; it's just the people with the link that have access.

## I added a dataset to my datasets folder on git, why isn't it uploading?

Datasets or slides have a maximum size of 10 Megabytes. Bigger datasets won't be uploaded and thus will not generate a link. The build logs will tell you your dataset is too big. We need this security built in because we don't want anyone to upload massive datasets onto our servers.

## I need a package but it's not installed on your servers, what can I do?

At the moment a lot of packages that can be used for Data Science are installed on our servers. There's no easy way to install packages yourself, however if you come across a package you think should really be installed, you can mail `content-engineering@datacamp.com`. Please note that there is no guarantee that we will install the package.



