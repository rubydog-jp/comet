---
sidebar_position: 510
title: コマンド
---

# 各コマンドの説明

# フラグ

| フラグ    | 例              | 説明                         |
| --------- | --------------- | ---------------------------- |
| --version | comet --version | バージョンを表示します       |
| --help    | comet --help    | **現在開発中のコマンドです** |

<br />

# コマンド

`comet` に続けて以下を実行できます。

| コマンド | 例                   | 説明                                                                                               |
| -------- | -------------------- | -------------------------------------------------------------------------------------------------- |
| create   | comet create my_site | 新しいcometプロジェクトを作成します                                                                |
| doctor   | comet doctor         | **現在開発中のコマンドです**                                                                       |
| build    | comet build          | マークダウンファイルを解析して `FLUTTER/lib/_comet_gen_/..` 以下のファイルを生成します             |
| start    | comet start          | ローカルでサイトを確認します build & flutter build & flutter run を順に実行します                  |
| deploy   | comet deploy         | サイトを公開します flutterリリースビルド, gh-pagesブランチへコミット, GitHubへプッシュを実行します |

- deploy
  - `no-push` フラグ
    - コミットを作りますが、プッシュは行いません
    - `comet deploy --no-push`
