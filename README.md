# Comet

Flutter + Markdown. Static Site Generator.

[Official Site](https://comet.rubydog.jp/)

![image](https://github.com/rubydog-jp/comet/blob/main/remote_config/comet-and-docusaurus.png?raw=true)

![image](https://github.com/rubydog-jp/comet/blob/main/remote_config/pr-1.png?raw=true)

![image](https://github.com/rubydog-jp/comet/blob/main/remote_config/pr-2.png?raw=true)

![image](https://github.com/rubydog-jp/comet/blob/main/remote_config/pr-3.png?raw=true)

<br />

Comet is an altanative to **docusaurus**, a simple-version **Next.js**, a reincarnated **GitBook**. Built with **Flutter** and Dart-lang.

It's very easy to

- Set up
- Edit
- Publish your site

So, Let's start with below

```
#
# Needs Flutter to install.
#

$ dart pub global activate comet_cli
$ comet create my_site
$ cd my_site
$ comet start
```

<br />

# Inline Flutter Widget

Comet supports the inline-widget.  
in markdown, you can write like `{{MyWidget}}` to show any Flutter widget.

```
# MyPage

↓ ↓ ↓
{{MyWidget}}
↑ ↑ ↑
```

- [image]

<br />

# Tags

`Flutter docusaurus`, `Flutter Static Site Generator`, `Flutter Markdown`

<br />

See more docs  
https://comet.rubydog.jp/

🎉 Contributions, Questions, Issues are welcomed!
