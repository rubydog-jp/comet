// @ts-check

const lightCodeTheme = require("prism-react-renderer/themes/dracula");
const darkCodeTheme = require("prism-react-renderer/themes/github");

/** @type {import('@docusaurus/types').Config} */
const config = {
  title: "Comet",
  tagline: "Flutter + Markdown. Website generator.",
  favicon: "img/favicon.png",

  url: "https://comet.rubydog.jp",
  baseUrl: "/",
  trailingSlash: true,

  organizationName: "rubydog-jp",
  projectName: "comet",

  onBrokenLinks: "warn",
  onBrokenMarkdownLinks: "warn",

  i18n: {
    defaultLocale: "ja",
    locales: ["ja"],
  },

  presets: [
    [
      "classic",
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          path: "tab_docs_en",
          routeBasePath: "docs",
          sidebarPath: require.resolve("./tab_docs_en/sidebars.js"),
        },
        // blog: {
        //   path: "tab_news",
        //   routeBasePath: "news",
        //   archiveBasePath: "/news",
        //   blogTitle: "news",
        //   showReadingTime: false,
        // },
        theme: {
          customCss: require.resolve("./src/css/custom.css"),
        },
      }),
    ],
  ],

  plugins: [
    [
      "@docusaurus/plugin-content-docs",
      {
        id: "tab_docs_jp",
        path: "tab_docs_jp",
        routeBasePath: "docs-jp",
        sidebarPath: require.resolve("./tab_docs_jp/sidebars.js"),
      },
    ],
    // [
    //   "@docusaurus/plugin-content-docs",
    //   {
    //     id: "tab_join",
    //     path: "tab_join",
    //     routeBasePath: "join",
    //     sidebarPath: require.resolve("./tab_join/sidebars.js"),
    //   },
    // ],
    // [
    //   "@docusaurus/plugin-content-docs",
    //   {
    //     id: "tab_support",
    //     path: "tab_support",
    //     routeBasePath: "support",
    //     sidebarPath: require.resolve("./tab_support/sidebars.js"),
    //   },
    // ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      image: "img/header.png", // OGR?
      navbar: {
        title: "Comet",
        logo: {
          alt: "Logo",
          src: "img/logo.png",
        },
        items: [
          {
            label: "English",
            to: "/docs/intro",
            position: "left",
            activeBaseRegex: "/docs/",
          },
          {
            label: "日本語",
            to: "/docs-jp/intro",
            position: "left",
            activeBaseRegex: "/docs-jp/",
          },
          // {
          //   label: "News",
          //   to: "/news",
          //   position: "left",
          //   activeBaseRegex: "/news",
          // },
          // {
          //   label: "Stuff",
          //   to: "/join/overview",
          //   position: "left",
          //   activeBaseRegex: "/join/",
          // },
          // {
          //   label: "Support",
          //   to: "/support/contact",
          //   position: "left",
          //   activeBaseRegex: "/support/",
          // },
          {
            href: "https://github.com/rubydog-jp/comet",
            label: "GitHub",
            position: "right",
          },
        ],
      },
      footer: {
        style: "dark",
        links: [
          {
            title: "Shortcuts",
            items: [
              {
                label: "Home",
                to: "/",
              },
            ],
          },
          {
            title: "Contact",
            items: [
              {
                label: "X SNS",
                href: "https://twitter.com/rubydog_jp",
              },
            ],
          },
        ],
        copyright: `Copyright © 2023 Rubydog. Built with Docusaurus.`,
      },
      prism: {
        theme: lightCodeTheme,
        darkTheme: darkCodeTheme,
      },
    }),
};

module.exports = config;
