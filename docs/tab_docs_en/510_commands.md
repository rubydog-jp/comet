---
sidebar_position: 510
title: Commands
---

# Description

# Flag

| flag      | example         | description               |
| --------- | --------------- | ------------------------- |
| --version | comet --version | show comet_cli version    |
| --help    | comet --help    | **now under development** |

<br />

# Command

| flag   | example              | description                                                                         |
| ------ | -------------------- | ----------------------------------------------------------------------------------- |
| create | comet create my_site | create new project                                                                  |
| doctor | comet doctor         | **now under development**                                                           |
| build  | comet build          | read the source files and build `FLUTTER/lib/_comet_gen_/..` files                  |
| start  | comet start          | see your site on local browser. run commands build & flutter build & flutter run    |
| deploy | comet deploy         | Publish your site. flutter release build, commit to gh-pages branch, push to GitHub |

- deploy
  - `no-push` flag
    - make a commit, but no push.
    - `comet deploy --no-push`
