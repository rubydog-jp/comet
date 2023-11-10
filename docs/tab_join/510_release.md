---
sidebar_position: 510
title: リリース手順
---

```
# move to dir
cd app

# build
flutter build web --release

# stg
firebase deploy --only hosting:stg

# prd
firebase deploy --only hosting:prd
```
