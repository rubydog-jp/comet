---
sidebar_position: 220
title: (MEMO) Git install
---

# Git install

Git is need for publish your site.

<details>
  <summary>For Mac Users</summary>
    <div>
      Useally, you don't need any setup.<br /> 
      But if you see this error message, "xcrun: error: invalid active developer", <br /> 
      input this command<br />
      xcode-select --install <br />
      It takes a few minutes.
    </div>
</details>

<details>
  <summary>For Windows Users</summary>
    <div>
      You can install by here.
      <img
        src={require('/dev/git-install-win.png').default}
        alt="Example banner"
      />
      <a href="https://gitforwindows.org/" class='linkbutton'>Official Git Site</a>
    </div>
</details>

<br />

### 確認する

```terminal.sh
$ git --version
```

In **Terminal App** on Mac, or \*Powershell\*\* on Windows, please inout above command.

<br />

### First time only

Set up git configrations

```
$ git config --global user.name "YOUR_NICKNAME"
$ git config --global user.email "YOUR_EMAIL"
$ git config --global core.autocrlf false
```

例

```
$ git config --global user.name "Comet"
$ git config --global user.email "comet@example.com"
$ git config --global core.autocrlf false
```

<br />

<a href="/docs/deploy" class='linkbutton'>Back to the Docs</a>
