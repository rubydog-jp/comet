---
sidebar_position: 120
title: サイトを公開
---

# サイトを公開

:::note 確認

✅この作業には **Git** が必要です  
✅この作業には **GitHubアカウント** が必要です

:::

<br />

### GitHubでリポジトリを作成

リポジトリ名は好きな名前 例: `my_site`  
公開タイプは `パブリック Public` になっていることを確認してください

![image](/dev/new-repo.png)

<a href="https://github.com/new" class='linkbutton'>リポジトリを作成</a>

<br />

### (初回のみ) comet.yaml の設定

`my_site/comet.yaml` を編集します。

```
...
github:
  user_id: ここにユーザーID
  repository_name: my_site
```

- `user_id`: GitHubのユーザーIDを入力します
- `repository_name`: 作成したリポジトリ名に合わせて編集してください。

<br />

### データを送信

```
$ comet deploy
```

ユーザーIDを聞かれたら **GitHubユーザーID** を  
パスワードを聞かれたら **GitHubアクセストークン** を入力してください

<br />

# 5. 完了

お疲れ様でした。以下のURLにあなたのサイトが公開されました。  
反映までは数分かかります。

```
https://<ユーザーID>.github.io/my_site/
```

<br />

<a href="/docs-jp/edit" class='linkbutton'>次のページへ</a>
