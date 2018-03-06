# Authoring Content for DataCamp

This repository contains comprehensive documentation on how to author different forms of content on the DataCamp platform. It has been built by collating content from different github repositories, wikis, and google documents. The objective is for all authoring related documentation to live in one place that authors can easily access and search.

## Links
[Documentation](https://authoring.datacamp.com/)

### Prerequisites

In order to start working on the gitbook locally you will need to have node and npm installed on your machine.

To check whether you have them installed try typing:
```shell
node -v && npm -v
```

The result should be similar to:
```shell
v7.10.1
4.2.0
```

In case you do not have node installed you can do so by [using node version manager](https://github.com/creationix/nvm/blob/master/README.md#installation), follow these steps:

1. Open your terminal
2. Install the Node version manager by executing:
```sh
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash
```
3. Install the node version `8`
```sh
nvm install 8 && nvm use 8
```
4. Restart your terminal
5. Execute `node -v && npm -v`. You should see the versions printed out.

### Running a Gitbook

This repository uses `gitbook` to generate clean, user-friendly documentation. In order to preview the documentation site locally, you will need to do the following:

__Install Gitbook__

```sh
npm install gitbook-cli -g
```

__Clone Docs Repo__

```sh
# for ssh
git clone git@github.com:datacamp/authoring.git

# for https
git clone https://github.com/datacamp/authoring.git
```

__Start the gitbook__

```sh
cd authoring && npm start
```

Your gitbook should be acessible on [http://localhost:4000](http://localhost:4000).

### Creating content with Gitbook

[Official Gitbook documentation](https://toolchain.gitbook.com/structure.html) provides a nice starting point for authoring.

Gitbook works with markdown files therefore any changes to any markdown file will result with page being refreshed. With this approach you can see your changes directly in the browsers as you are editing the gitbook.

Same markdown flavour applies as on Github.



#### Important files / folders
There are a few folders and files which have special meaning / tasks:

- `docs/` - All the markdown files which are being used to create a static documentation site. Place all your markdown in the folders.
- `docs/courses` - All the content related to courses
- `docs/projects` - All the content related to projects
- `docs/challenges` - All the content related to challenges
- `docs/mobile` - All the content related to mobile
- `docs/interface` - All the content related to the teach interface
- `docs/image` - All the image files should be placed in this folder depending on the content type (`courses`, `projects`, etc..)
- `SUMMARY.md` - Represents the left menu and the structure of the content. Usually nicely maps with `docs/` structure.
- `books.json` - Lists all the plugins gitbook is currently using. (emojis etc.)

#### How to create content
Before you start working locally on your gitbook **be sure** to branch out to a new branch as pushing to `master` will cause the documentation to build and it **WILL** be available in production.

Flow for creating content:

1. Create a markdown file in one of folders (`docs/courses`, `docs/projects`, `docs/challenges`, `docs/mobile`, `docs/interface`)
2. Add the markdown
3. If you want to add the markdown file to the left menu edit the [docs/SUMMARY.md](docs/SUMMARY.md)

Once you are done with the work create a pull request to master and merge after reviewing.

#### How to link to images or pages?
Linking should always be absolute, which means that you should specify the whole path. The reason behind that decision is search and replace as relative paths could lead to broken links.

Examples on how to import images or create links:
```
![Image description](/images/interface/teach-editor.png) # Will create an image
[A link](/courses/README.md) # Will create a link
A link to [part of the page](/courses/exercises/multiple-choice-exercise.md#pure-mce) # Will link to exercises page scrolling down to pure multiple choice exercise
```
