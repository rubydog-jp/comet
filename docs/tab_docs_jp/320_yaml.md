---
sidebar_position: 320
title: comet.yaml
---

# comet.yaml

設定値が書かれたファイルです。 `my_site/comet.yaml`

<br />

- 最新のテンプレート

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

基本的なものは説明を省略します。

<br />

<hr />

- ### site

- icon
  - `FLUTTER/assets/images/` 以下の画像を指定できます。
  - あらかじめ画像ファイルを配置してください。

<br />
<hr />

- ### fonts

:::caution 注意

こちらは現在開発中の機能です

:::

- 以下のような形式でフォントを設定します。

```
fonts:
  - url: "/jp/"
    font: FontNameJP
  - url: "/en/"
    font: FontNameEN
```

- URLが一致した場合にそのフォントが適用されます。
- 実際のフォントファイルは Flutter のルールに従ってプロジェクト内へ配置してください。

<br />
<hr />

- ### ignore_folders

- 以下のような形式でビルドの対象から外します

```
ignore_folders:
  - Folder1
  - Folder2
```

- `Folder1/Folder2` のようなパス形式は使用できません。トップ階層のフォルダ名のみが有効です。

<br />
