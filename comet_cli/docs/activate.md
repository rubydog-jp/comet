## CLI の開発者向け

- ローカルで開発中の CLI を使うとき

- comet 直下で実行

```
dart pub global activate --source path comet_cli
```

- バージョンコマンドを試してみる

```
comet --version
```

- バージョンを変更してみる
- comet_cli/lib/config.dart を編集してバージョンを適当に変える

- 再度反映 (編集するごとに必要)

```
dart pub global activate --source path comet_cli
```

- バージョンコマンドを再度試してみる

```
comet --version
```
