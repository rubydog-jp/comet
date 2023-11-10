---
sidebar_position: 220
title: (参考) Gitの準備
---

# Git

まだGitのインストールが終わっていない方はこちらの記事をご覧ください。

<details>
  <summary>Macの方</summary>
    <div>
      Macでは最初からGitが用意されているので準備は不要です。<br /> 
      ただし、まれに他のソフトの影響でエラーになることがあります。 エラー内容 xcrun: error: invalid active developer <br /> 
      このエラーが出たときは以下のコマンドで解決してください。 <br />
      xcode-select --install <br />
      質問に同意したあと、完了までしばらく時間がかかりますのでお待ちください。
    </div>
</details>

<details>
  <summary>Windowsの方</summary>
    <div>
      事前に準備をお願いします
      <img
        src={require('/dev/git-install-win.png').default}
        alt="Example banner"
      />
      <a href="https://gitforwindows.org/" class='linkbutton'>Windows版Gitをインストール</a>
    </div>
</details>

<br />

### 確認する

```ターミナル.sh
$ git --version
```

Mac では **ターミナル** 、 Windows では **Powershell** を開いて上記のコマンドを入力します。  
ちなみに `$ ` は 1 回分のコマンドを表すただの記号ですので 入力する必要はありません。  
`2.39.2` のように何か **バージョンが表示されれば Git が使えます** 。  
`1.7.10` より小さいバージョンだと **古すぎるので新しい Git をインストールし直してください**

<br />

### 初回設定

Git に自分の名前と、メールアドレスの設定をします。  
ついでに `core.autocrlf false` も設定しておくことをオススメします。

```
$ git config --global user.name "ここはなんでも好きな名前"
$ git config --global user.email "開発に使うメールアドレス"
$ git config --global core.autocrlf false
```

例

```
$ git config --global user.name "ルビードッグ"
$ git config --global user.email "rubydog@example.com"
$ git config --global core.autocrlf false
```

<br />

<a href="/docs-jp/deploy" class='linkbutton'>説明へ戻る</a>
