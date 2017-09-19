# Authoring Content for DataCamp

This repository contains comprehensive documentation on how to author different forms of content on the DataCamp platform. It has been built by collating content from different github repositories, wikis, and google documents. The objective is for all authoring related documentation to live in one place that authors can easily access and search.

This is still WIP!

### Usage

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

__Install Gitbook Plugins__

```sh
cd authoring && gitbook install
```

__Serve Site__

```sh
gitbook serve
```



