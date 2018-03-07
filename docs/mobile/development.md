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

## Write

Create and checkout a feature branch to write your course in. For example:

```sh
git checkout -b chapter-1
```

> #### info::Note
> You should author content on a feature branch, *not* on the `master` or
> `development` branches!

You are free to use whatever editing tools you like on your local repository, eg
Sublime, Vim, Emacs, etc. It can be helpful to use an IDE that allows you to
expand snippets, and to write a snippet expansion for different exercise
types. Bonus points if your IDE of choice allows you to automatically generate
UUIDs for your exercises.

Visit the [exercises documentation](exercises/readme.md) to see how exercises
are written and see some examples.

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

## Working with YAML

You will often be writing code blocks or output blocks that span multiple
lines. You *can* use explicit newlines `\n`, but the easier and more readable
option is to use a feature of the YAML spec known as **literal scalar
blocks**. Just put `|-` after the colon `:` of a field and then indent the
following lines by another two spaces. Everything in the indented block will be
rendered verbatim, including newlines and all quotes.

Instead of this:

```yaml
solution: "v <- c(4, 9, 3, 5)\norder(v)"
```

Try this:

```yaml

solution: |-
  v <- c(4, 9, 3, 5)
  order(v)
```

A small wrench is thrown into things when the first line of the literal scalar
block needs to start with blank space. When that happens, you need to count the
number of blank spaces at the beginning of the first line `N`, and put that number
`N` after the `|-`. Then, indent the whole block an extra `N` characters. This
is easier demonstrated than explained.

Instead of this:

```yaml
output: "[,1] [,2]\n[1,]    1    3\n[2,]    2    4"
```

Try this:

```yaml
output: |-5
            [,1] [,2]
       [1,]    1    3
       [2,]    2    4
```

See the [YAML spec](http://yaml.org/spec/1.2/spec.html) for more advanced YAML
features that might come in handy, but literal scalar blocks will be what you
need 99% of the time.

[This online YAML parser](https://yaml-online-parser.appspot.com) can also be
useful for diagnosing bugs in YAML. [The `mobile-teach`
linter](../development.md) should be able to clearly pinpoint 100% of errors,
however.

You don't need to use quotes in your key-value pairs unless the value itself
contains a single or double quote.

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

You can then open a web browser (we recommend Firefox version 58 or later) to
`http://localhost:8080`. Open the browser tools (`Command-Option-i` for Firefox)
and click the phone icon to simulate a phone view port. You can even specify
which phone you want to simulate (eg iPhone, Nexus, Galaxy, etc) by clicking the
bar at the top of the viewport and selecting a device model. We recommend
previewing on the smallest phone supported by DataCamp for Mobile - the iPhone
SE.

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
