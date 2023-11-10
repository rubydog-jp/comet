---
sidebar_position: 330
title: ウィジェット挿入
---

# ウィジェット挿入

マークダウンの中に 独自のFlutterウィジェットを挿入できます

<br />

### 記法

.mdファイル内で `{{ウィジェット名}}` を使います。

例

```.md
# テスト

これはウィジェット挿入のサンプルページです。

{{MyWidget}}

以上でこのページを終了します。
```

<br />

### Flutter側の編集

`FLUTTER/lib/widgets.dart` を以下のように編集します

```widgets.dart

final CometInlineWidgets inlineWidgets = {
    ...
    'MyWidget': (_) => MyWidget(), // この行を追加
    ...
};
```

<br />

<hr />

### 制約

1行に必要な要素を丸ごとウィジェット化する必要があります

<br />

マークダウン要素と独自ウィジェットを1行に混在させることはできません。

:::danger Bad

```.md

このように {{MyWidget}} を記入することはできません。

```

:::

<br />

1行に複数の独自ウィジェットを表示することはできません。代わりにRowウィジェットを表示してください。

:::danger Bad

```.md

{{MyWidget}} {{MyWidget}}

```

:::

<br />

独自ウィジェットの前後にスペースを含まないでください。また、ウィジェット名の両端のスペースに注意してください。

:::danger Bad

```.md

左にスペースを開けないでください
 {{MyWidget}}

{{MyWidget}}
と
{{ MyWidget }}
は異なるウィジェット名として認識されます

```

:::
