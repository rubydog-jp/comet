---
sidebar_position: 110
title: Getting started
---

# Getting started

:::note Prepare

✅Required **Flutter** to install.

:::

<br />

# 1. Install Comet

```
$ dart pub global activate comet_cli
```

<br />

# 2. Create new project

Please name your project like `my_site`.

```
$ comet create my_site
```

:::caution 【important】PATH

If you are using Dart commands for the first time, you will need a path.

- Mac

```
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

- Windows

```
%LOCALAPPDATA%\Pub\Cache\bin
```

If you cannot pass the path, please add `dart pub global run comet_cli:` before the following `comet` commands.

```
$ dart pub global run comet_cli:comet create my_site
```

:::

<br />

# 3. See your site on local browser

```
$ cd my_site
$ comet start
```

<br />

# 4. Your website is ready!

- All data is yours. See in `my_site` folder.
- You can quickly make it public using GitHub.
- Editing is easy, just use a simple text editor.

![gif](/dev/v0_3-en.gif)

<br />

<a href="/docs/deploy" class='linkbutton'>Next Page</a>
