# Development Process

## Set Up

Each mobile courses is a GitHub repo under the DataCamp GitHub organization. You
will be given full write access to the repository for your course. First clone
the repository:

```sh
git clone git@github.com:datacamp/mobile-courses-example-course.git
```

The suite of development tools available for authoring mobile content on
DataCamp is provided as an NPM package. If you don't have NPM yet, you will need
to [download and install it](https://www.npmjs.com/get-npm).

```sh
npm cache clean -f

# update node
npm install -g n
sudo n stable

# update npm
npm install -g npm

# install DataCamp mobile development tools
npm install -g @datacamp/mobile-teach
```

This will create the `mobile-teach` executable, which you will use to lint and
preview your content.

## Write

Create and checkout a feature branch to write your course in.

```sh
git checkout -c chapter-1
```

> #### info::Note
> You should author content on a feature branch, *not* on the `master` or
> `development` branches!

You are free to use whatever editing tools you like on your local repository, eg
Sublime, Vim, Emacs, etc. It can be helpful to use an IDE that allows you to
expand snippets, and to write a snippet expansion for different exercise
types. Bonus points if your IDE of choice allows you to automatically generate
UUIDs for your exercises.

The best workflow is generally to open an appropriate interpreter side by side
with the content file, so that you can play with code and quickly insert it into
your exercises. This might be IPython, R, or a SQL client like `psql` or
`sqlite`.

Currently, all UUIDs (eg for chapters, lessons, and exercises) must be generated
manually. This annoyance can be alleviated by finding a UUID generator package
for your text editor or IDE of choice. Some examples:

* [Emac](https://github.com/kanru/uuidgen-el)
* [Vim](https://github.com/kburdett/vim-nuuid)
* [Sublime Text](https://github.com/SublimeText/GenerateUUID)

## Linting

Before pushing (or - preferably - committing) updates to your content, you
should run the mobile-teach linter. The linter does two things:

1. It ensures that there are no errors in your YAML that will break the build.
2. It supplies warning when your content exceeds [guideline
recommendations](guidelines.md), and errors when it exceeds hard limits.

The linter will provide exercise UUIDs to mark where problems are occurring and
explicit messages about what is wrong. You can either specify the path to a
course directory...

```sh
mobile-teach check /path/to/mobile-courses-example-course
```

...or simply run the check from within a course directory:

```sh
cd /path/to/mobile-courses-example-course
mobile-teach check
```

## Preview

Often it's useful to see how your content will render on a phone screen. The
`mobile-teach preview` subcommand will serve your content on port 8080:

```sh
mobile-teach preview /path/to/lesson-file.yml
```

You can then open a web browser to `http://localhost:8080`. Open the browser
tools (usually `Command-Option-j`) and click the phone icon to simulate a phone
view port. You can even specify which phone you want to simulate (eg iPhone,
Nexus, Galaxy, etc). If you are having trouble finding these browser tools, we
recommend updating Firefox to at least version 58.0.

The simulator preview will update in real time as you make changes to your
content.

## Release

1. Merge your content branch into the *development* branch on GitHub.

2. Check that the build passes on
   [CircleCI](https://circleci.com/gh/datacamp/workflows). This should take a
   few minutes or less.

3. Download the latest development build of DataCamp for Mobile.

   * [Android App
     Center](https://appcenter.ms/users/mobileDCamp/apps/DataCamp-Android/distribute/distribution-groups/Collaborators/releases)
   * [iTunes TestFlight](https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/app/1321970315/testflight?section=iosbuilds)

4. Check out your new content on the development app, make sure everything looks
   good.

5. When you are ready for a full release, open a pull request with your content
   branch into the *master* branch on GitHub.

7. DataCamp will review and approve the pull request, and tag the `master`
   branch in GitHub for release.

8. Your content is now live to the world!
