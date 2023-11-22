---
sidebar_position: 110
title: スタート
---

# 始めましょう💫

:::note 確認

✅この作業には **Flutter** の事前インストールが必要です

:::

<br />

# 1. Comet をインストール

```
$ dart pub global activate comet_cli
```

<br />

# 2. 新規サイトを作成

作成されるフォルダに好きな名前をつけてください。例: `my_site`

```
$ comet create my_site
```

:::caution 【重要】パスを通す

Dart製のコマンドを初めて使う人はパスが必要です

- Mac

```
export PATH="$PATH":"$HOME/.pub-cache/bin"
```

- Windows

```
%LOCALAPPDATA%\Pub\Cache\bin
```

もしもパスが通せないときは以降の `comet` コマンドの前に `dart pub global run comet_cli:` をつけて実行してください。

```
$ dart pub global run comet_cli:comet create my_site
```

のようになります。

:::

<br />

# 3. ローカルでサイトを確認

```
$ cd my_site
$ comet start
```

<br />

# 4. あなたのサイトが完成しました

- データは全てあなたのものです `my_site` フォルダを覗いてみましょう
- GitHubを使ってすぐに一般公開することができます
- 編集も簡単、メモ帳アプリがあれば十分です

![gif](/dev/v0_3-jp.gif)

<br />

<a href="/docs-jp/deploy" class='linkbutton'>次のページへ</a>
