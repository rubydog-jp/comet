---
sidebar_position: 330
title: Inline Flutter Widget
---

# Inline Flutter Widget

You can insert costom Flutter Widget in any where of your markdon.

<br />

### How to

Use `{{WIDGET_NAME}}`.

example

```.md
# Title

this is some text.

{{MyWidget}}

this is some text.
```

<br />

### Register MyWidget in Flutter

Open `FLUTTER/lib/widgets.dart`.

```widgets.dart

final CometInlineWidgets inlineWidgets = {
    ...
    'MyWidget': (_) => MyWidget(), // add this line
    ...
};
```

<br />

### Constraints

:::danger Bad

```.md

Like this {{MyWidget}} nomal text cannot be mixed in the same line

```

:::

<br />

:::danger Bad

```.md

{{MyWidget}} {{MyWidget}}

```

:::

<br />

:::danger Bad

```.md

Don't put leading space
 {{MyWidget}}

Note
{{MyWidget}}
and
{{ MyWidget }}
are different widget name.

```

:::
