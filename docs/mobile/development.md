# Development Process

## Set Up

Each mobile courses is a GitHub repo under the DataCamp GitHub organization. You
will be given full write access to the repository for your course. First clone
the repository:

```sh
git clone git@github.com:datacamp/mobile-courses-example-course.git
```

The suite of development tools available for authoring mobile content on
DataCamp is provided as an NPM package. NPM is the package management system for
Node, a JavaScript framework. It's a bit like CRAN for R or PyPI for Python. You
don't need to know any Javascript, though - this is just how to download the
command line tool that contains the DataCamp for Mobile development tools. If
you don't have NPM yet, you will need to [download and install
it](https://www.npmjs.com/get-npm).

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

### Development App

At any point, you can preview your content on the development version of the
DataCamp for Mobile app. This is a second app that you can install alongside the
real production version of the app. It displays the content that you push to the
`development` (dev) branch. Only you and DataCamp will be able to see what you
push to dev. Email spencer@datacamp.com for an invite to the iOS/Android dev
app.

When you want to push to dev:

1. First, make sure everything is working:

   ```sh
   mobile-teach check
   ```

2. Reset the `development` branch to the content you want to test.

   ```sh
   ## Checkout the development branch
   git checkout -b development

   ## Reset the development branch to your content
   git reset --hard chapter-2

   ## Force push development
   git push origin development --force
   ```

3. Download the development app. Contact spencer@datacamp.com if you don't
   already have it; you will receive an email with download instructions.

4. Create a new account through the dev app. You won't be able to log in with
   your existing DataCamp account because this app runs off DataCamp's
   development server. Instead, make a new account through the dev app and log
   in with that.

5. Check out your new content on the development app, make sure everything looks
   good.

> #### info::Note
> Never work directly on the `development` branch! You should operate under the
> assumption that commits you make directly to `development` could disappear at
> any time.

## Production app

Unlike desktop courses, courses on DataCamp for Mobile are typically release one
chapter at a time. When your chapter branch is ready to be released to the world:

6. Do one last check!

   ```sh
   mobile-teach check
   ```

1. Open a pull request (PR) for your chapter branch into the `master` branch on
   GitHub.

2. DataCamp will review the PR and make suggestions for revisions.

3. After one or more reviews & revisions, the PR will be approved and DataCamp
   will generate a new release.

4. Your content is now live to the world!

5. Start a new branch for the next chapter. For example, if you just merged
   `chapter-1`, create and check out a new branch for `chapter-2`:

   ```sh
   git checkout -b chapter-2
   ```
