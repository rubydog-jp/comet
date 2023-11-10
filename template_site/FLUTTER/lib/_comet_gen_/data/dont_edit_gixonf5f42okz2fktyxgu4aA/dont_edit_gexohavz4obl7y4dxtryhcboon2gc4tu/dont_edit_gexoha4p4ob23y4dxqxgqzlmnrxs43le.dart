// ignore_for_file: constant_identifier_names, file_names
import 'package:comet/comet.dart';

const dont_edit_gexoha4p4ob23y4dxqxgqzlmnrxs43le = CometGenPage(
  srcName: '1.ハロー.hello.md',
  content: _content,
);

const _content = '''
# コメット

![image](assets/images/flutter-and-markdown.png)
[https://comet.rubydog.jp/](https://comet.rubydog.jp/)

### マークダウン

マークダウンがそのまま Flutter アプリに表示されます

| A   | B   | C   |
| --- | --- | --- |
| 1   | 2   | 3   |
| 4   | 5   | 6   |

コードブロックもかけます

```.sh
final num = 1000;
```

箇条書きを使えます

- あか
  - りんご
  - さくらんぼ
  - いちご
- きいろ
  - バナナ
  - レモン
  - パイナップル
- あお
  - ぶどう
  - ブルーベリー
  - プルーン

> **引用** 引用を使うことができます
> 参考にしたセリフや文章を
> このように記載できます

<br />

行間を開けるには `<br />` タグを使います

<br />

# ウィジェット挿入

マークダウンの途中に Widget を表示することができます。  
表示するには `{{MyWidget}}` のように書くだけです

---

↓ ↓ ↓
{{MyWidget}}
↑ ↑ ↑

次はあなたのオリジナル Widget を表示してみましょう。

もっと詳しい情報は公式サイトをご覧ください 💫  
[公式サイト](https://comet.rubydog.jp/)

<br />

''';
