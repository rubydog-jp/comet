---
sidebar_position: 310
title: Naming Rules
---

# Naming Rules

Note your site is built from the source Folders an Files.

<br />

### Name of Folder

These namings are available.

- [**Title**]
- [**Sort**].[**Title**]
- [**Sort**].[**Title**].[**URL**]

<br />

### Name of File

These namings are available.

- [**Title**].md
- [**Sort**].[**Title**].md
- [**Sort**].[**title**].[**URL**].md

<br />

### Meaning of the elements

- **Title**

These are the characters for the elements displayed on the site. When a URL is not specified, these characters are adopted as the URL segments as they are.

- **Sort**

Specifies the position of elements within the site. They are arranged from the top left to the bottom right, with smaller numbers first. The numbers don't have to be sequential.

- **URL**

These are URL segments. For example, specifying `apple` will be structured in the URL as ``../apple/..`. Especially at the top level, it is recommended to use language codes such as `ja` and `en`. This adjusts the priority of the initial display page based on the browser's language settings.

- `1.English.en`
  - `1.Red.my-color`
    - `1.Apple.my-fruit.md`

then, the page URL is `../en/my-color/my-fruit`.

<br />
