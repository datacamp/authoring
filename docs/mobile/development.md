# Development Process

## Set Up

Each mobile courses is a GitHub repo under the DataCamp GitHub organization. You
will be given full write access to the repository for your course. First clone
the repository:

```sh
git clone git@github.com:datacamp/mobile-courses-example-course.git
```

The suite of development tools available for authoring mobile content on
DataCamp is provided as an NPM package. You can download and install it using
NPM:

```sh
npm install -g @datacamp/mobile-teach
```

This will create the `mobile-teach` executable, which you will use to lint and
preview your content.

## Write

You are free to use whatever editing tools you like on your local repository, eg
Sublime, Vim, Emacs, etc. You should author content on a feature branch, *not*
on the `master` branch:

```sh
git checkout -c chapter-1
```

It can be helpful to use an IDE that allows you to expand snippets, and to write
a snippet expansion for different exercise types. Bonus points if your IDE of
choice allows you to automatically generate UUIDs for your exercises.

## Linting

Before pushing (or - preferably - committing) updates to your content, you
should run the mobile-teach linter. The linter does two things:

1. It ensures that there are no errors in your YAML that will break the build.
2. It supplies warning when your content exceeds [guideline
recommendations](guidelines.md), and errors when it exceeds hard limits.

The linter will provide exercise UUIDs to mark where problems are occurring and
explicit messages about what is wrong.

```sh
mobile-teach check /path/to/mobile-courses-example-course
```

## Preview

Often it's useful to see how your content will render on a phone screen. The
`mobile-teach preview` subcommand will serve your content on port 8080:

```sh
mobile-teach preview /path/to/mobile-courses-example-course
```

You can then open a web browser to `http://localhost:8080`. Open the browser tools
(usually `Command-Option-j`) and click the phone icon to simulate a phone view
port. You can even specify which phone you want to simulate (eg iPhone, Nexus,
Galaxy, etc.)

The simulator preview will update in real time as you make changes to your
content.

## Release

1. Merge your content branch into the *development* branch.

```sh
git merge development
```

2. Check that the build passes on [CircleCI](https://circleci.com/gh/datacamp/workflows).

3. Download the latest development build of DataCamp for Mobile.

   * [Android App
     Center](https://appcenter.ms/users/mobileDCamp/apps/DataCamp-Android/distribute/distribution-groups/Collaborators/releases)
   * [iTunes TestFlight](https://itunesconnect.apple.com/WebObjects/iTunesConnect.woa/ra/ng/app/1321970315/testflight?section=iosbuilds)

4. Check out your new content on the development app, make sure everything looks
   good.

5. Merge your content branch into the *master* branch.

```sh
git merge master
```

7. Tag the `master` branch in GitHub `release-1.0.0` as appropriate. We
   recommend using [semantic versioning](https://semver.org/), but the only rule
   is that the tag/release must begin with `release-`.

8. Your content is now live to the world!
