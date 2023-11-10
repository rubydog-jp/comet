# 開発ドキュメント

See
https://comet.rubydog.jp/

### dev

```
# ローカルで確認
$ npm start
```

<br />

CLI の開発時

```
# リリース版を使用
dart pub global activate comet_cli

# ローカル番を使用
dart pub global activate --source path comet_cli

$ 有効になっている一覧をみる
dart pub global list
```

<br />

# リリース

### docs

```
# デプロイ GitHub Pages
$ GIT_USER=xxxxx DEPLOYMENT_BRANCH=gh-pages npm run deploy
```

### comet_ui

- pubspecのバージョン書き換え
- CHANGELOG.md
- template_site 内の comet バージョン置き換え

```
flutter pub publish
```

### template_site

- コミット

```
# テンプレの直下に移動
cd template_site

# gitignoreされてないファイルだけをzip化
# コミットされていないと無効なので注意
git archive --prefix ${PWD##*/}/ HEAD -o ../${PWD##*/}.zip

# ここから新しいリリースを作成
https://github.com/rubydog-jp/comet/releases/new

# リモートConfigを書き換える
remote_config/remote-config.json
```

### comet_cli

- lib内のバージョン書き換え
- pubspecのバージョン書き換え
- CHANGELOG.md

```
flutter pub publish
```
