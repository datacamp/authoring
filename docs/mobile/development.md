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

You may periodically need to update the `mobile-teach` package in the
future. You can achieve this by simply running the installation command again:

```sh
npm install -g @datacamp/mobile-teach
```

## Linting

Before pushing (or - preferably - committing) updates to your content, you
should run the mobile-teach linter. The linter does two things:

1. It validates your YAML's schema to ensure that there are no errors break the
   build.
2. It supplies a warning when your content exceeds guideline recommendations and
   errors when it exceeds hard limits.

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

If you want to run *only* the schema validation:

```sh
mobile-teach check --exclude content-guidelines-validator
```

## Preview

Often it's useful to see how your content will render on a phone screen. The
`mobile-teach preview` subcommand will serve your content on port 8080:

```sh
mobile-teach preview /path/to/lesson-file.yml
```

You can then open a web browser (we recommend Firefox version 58 or later) to
[`localhost:8080`](http://localhost:8080). Open the browser tools
(`Command-Option-i` for Firefox) and click the phone icon to simulate a phone
view port. You can even specify which phone you want to simulate (eg iPhone,
Nexus, Galaxy, etc) by clicking the bar at the top of the viewport and selecting
a device model. We recommend previewing on the smallest phone supported by
DataCamp for Mobile - the iPhone SE.

The simulator preview will update in real time as you make changes to your
content, so try setting it up side by side with your content and editing in
real-time! Note that although the real mobile app will randomize possible
answers in every exercise, the preview will always place the correct answer(s)
first, so that it's easy to power through a lesson for testing purposes.

A known upstream bug in the React framework prevents datasets from rendering in
tabs on the mobile preview. Don't worry - these will render properly on a real
mobile device.

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
