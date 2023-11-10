---
sidebar_position: 320
title: comet.yaml
---

# comet.yaml

- latest template

```

site:
  title: MySite
  icon: icon.png
  copyright: "Copyright ©︎ 2023 MySite. Made with Comet 💫"

flutter_project:
  root: FLUTTER

github:
  user_id: null
  repository_name: my_site

fonts:
  - url: "/jp/"
    font: NotoSansJP

ignore_folders:
  - .git

```

<br />

# 説明

<hr />

- ### site

- icon
  - image name of assets at `FLUTTER/assets/images/` ...
  - Please put your image there.

<br />
<hr />

- ### fonts

:::caution

Now under development

:::

- Choose fonts

```
fonts:
  - url: "/jp/"
    font: FontNameJP
  - url: "/en/"
    font: FontNameEN
```

- if the URL contains `url`, Comet uses the `font` a font-family name.
- Put your font file into Flutter project according to Flutter rules.

<br />
<hr />

- ### ignore_folders

```
ignore_folders:
  - Folder1
  - Folder2
```

- don't use the path format like `Folder1/Folder2..`. only folder names are available.

<br />
