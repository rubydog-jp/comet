---
sidebar_position: 120
title: Publish your site
---

# Publish your site

:::note Prepare

✅Required **Git**.  
✅Required **GitHub Account**.

:::

<br />

### Create new repository on GitHub

Please name it like `my_site`.  
The type must be `Public`.

![image](/dev/new-repo.png)

<a href="https://github.com/new" class='linkbutton'>Create new Repository</a>

<br />

### (First Time Only) Edit comet.yaml

open `my_site/comet.yaml`

```
...
github:
  user_id: YOUR_USER_ID
  repository_name: YOUR_REPOSITORY_NAME
```

<br />

### Send data

```
$ comet deploy
```

If asked user, please input your **GitHub UserID**.  
If asked password, please input **GitHub AccessToken**.

<br />

# 5. Completed

Now your new web site is here.  
It takes a few minutes.

- URL

```
https://YOUR_USER_ID.github.io/YOUR_REPOSITORY_NAME/
```

<br />

<a href="/docs/edit" class='linkbutton'>Next Page</a>
