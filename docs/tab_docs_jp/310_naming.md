---
sidebar_position: 310
title: 命名規則
---

# 命名規則

フォルダ名やファイル名から自動的にサイトが構成されるため、名前は重要です。

<br />

### フォルダ構成

`フォルダ` - `フォルダ` - `ファイル` の3段構成をサポートしています  
それ以外のフォルダやファイルはすべて無視されます。

**my_site/**

- フォルダ
  - フォルダ
    - ファイル.md
- フォルダ
  - フォルダ
    - ファイル.md
- フォルダ
  - フォルダ
    - ファイル.md

<br />
<hr />

### フォルダ名

フォルダ名に使用可能な形式は以下です。

- [**タイトル**]
- [**並び順**].[**タイトル**]
- [**並び順**].[**タイトル**].[**URL**]

例

- 日本語
- 1.日本語
- 1.日本語.jp

<br />

<hr />

### ファイル名

ファイル名に使用可能な形式は以下です。

- [**タイトル**].md
- [**並び順**].[**タイトル**].md
- [**並び順**].[**タイトル**].[**URL**].md

例

- りんご.md
- 1.りんご.md
- 1.りんご.apple.md

<br />
<hr />

### 各要素の意味

- **タイトル**

サイト内で表示される文字です。[URL]が指定されていないときは、この文字がそのままURLとして採用されます。

- **並び順**

サイト内での要素の位置を指定します。数字の小さい方から 左上→右下 の方向へ並べられます。数字は連番でなくても構いません。

- **URL**

URLセグメントです。例えば `apple` と指定すると URLの中で `.../apple/...` として構成されます。 例えば、

- `1.日本語`
  - `1.あか`
    - `1.りんご.md`

の場合、該当ページのURLは `/日本語/あか/りんご` となり

- `1.日本語.jp`
  - `1.あか.red`
    - `1.りんご.apple.md`

の場合、該当ページのURLは `/jp/red/apple` となります。

特にトップ階層のURLは `ja` , `en` のような **言語コードをオススメ** します。ブラウザの言語設定に合わせて初期表示ページの優先度が変更されるためです。
<br />
