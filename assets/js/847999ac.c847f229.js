"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[339],{3905:(e,t,n)=>{n.d(t,{Zo:()=>m,kt:()=>f});var r=n(7294);function l(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){l(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function i(e,t){if(null==e)return{};var n,r,l=function(e,t){if(null==e)return{};var n,r,l={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(l[n]=e[n]);return l}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(l[n]=e[n])}return l}var u=r.createContext({}),p=function(e){var t=r.useContext(u),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},m=function(e){var t=p(e.components);return r.createElement(u.Provider,{value:t},e.children)},c="mdxType",s={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,l=e.mdxType,a=e.originalType,u=e.parentName,m=i(e,["components","mdxType","originalType","parentName"]),c=p(n),d=l,f=c["".concat(u,".").concat(d)]||c[d]||s[d]||a;return n?r.createElement(f,o(o({ref:t},m),{},{components:n})):r.createElement(f,o({ref:t},m))}));function f(e,t){var n=arguments,l=t&&t.mdxType;if("string"==typeof e||l){var a=n.length,o=new Array(a);o[0]=d;var i={};for(var u in t)hasOwnProperty.call(t,u)&&(i[u]=t[u]);i.originalType=e,i[c]="string"==typeof e?e:l,o[1]=i;for(var p=2;p<a;p++)o[p]=n[p];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},2762:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>u,contentTitle:()=>o,default:()=>s,frontMatter:()=>a,metadata:()=>i,toc:()=>p});var r=n(7462),l=(n(7294),n(3905));const a={sidebar_position:320,title:"comet.yaml"},o="comet.yaml",i={unversionedId:"yaml",id:"yaml",title:"comet.yaml",description:"- latest template",source:"@site/tab_docs_en/320_yaml.md",sourceDirName:".",slug:"/yaml",permalink:"/docs/yaml",draft:!1,tags:[],version:"current",sidebarPosition:320,frontMatter:{sidebar_position:320,title:"comet.yaml"},sidebar:"tutorialSidebar",previous:{title:"Naming Rules",permalink:"/docs/naming"},next:{title:"Inline Flutter Widget",permalink:"/docs/inline-widget"}},u={},p=[],m={toc:p},c="wrapper";function s(e){let{components:t,...n}=e;return(0,l.kt)(c,(0,r.Z)({},m,n,{components:t,mdxType:"MDXLayout"}),(0,l.kt)("h1",{id:"cometyaml"},"comet.yaml"),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},"latest template")),(0,l.kt)("pre",null,(0,l.kt)("code",{parentName:"pre"},'\nsite:\n  title: MySite\n  icon: icon.png\n  copyright: "Copyright \xa9\ufe0e 2023 MySite. Made with Comet \ud83d\udcab"\n\nflutter_project:\n  root: FLUTTER\n\ngithub:\n  user_id: null\n  repository_name: my_site\n\nfonts:\n  - url: "/jp/"\n    font: NotoSansJP\n\nignore_folders:\n  - .git\n\n')),(0,l.kt)("br",null),(0,l.kt)("h1",{id:"\u8aac\u660e"},"\u8aac\u660e"),(0,l.kt)("hr",null),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},(0,l.kt)("h3",{parentName:"li",id:"site"},"site")),(0,l.kt)("li",{parentName:"ul"},(0,l.kt)("p",{parentName:"li"},"icon"),(0,l.kt)("ul",{parentName:"li"},(0,l.kt)("li",{parentName:"ul"},"image name of assets at ",(0,l.kt)("inlineCode",{parentName:"li"},"FLUTTER/assets/images/")," ..."),(0,l.kt)("li",{parentName:"ul"},"Please put your image there.")))),(0,l.kt)("br",null),(0,l.kt)("hr",null),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},(0,l.kt)("h3",{parentName:"li",id:"fonts"},"fonts"))),(0,l.kt)("admonition",{type:"caution"},(0,l.kt)("p",{parentName:"admonition"},"Now under development")),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},"Choose fonts")),(0,l.kt)("pre",null,(0,l.kt)("code",{parentName:"pre"},'fonts:\n  - url: "/jp/"\n    font: FontNameJP\n  - url: "/en/"\n    font: FontNameEN\n')),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},"if the URL contains ",(0,l.kt)("inlineCode",{parentName:"li"},"url"),", Comet uses the ",(0,l.kt)("inlineCode",{parentName:"li"},"font")," a font-family name."),(0,l.kt)("li",{parentName:"ul"},"Put your font file into Flutter project according to Flutter rules.")),(0,l.kt)("br",null),(0,l.kt)("hr",null),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},(0,l.kt)("h3",{parentName:"li",id:"ignore_folders"},"ignore_folders"))),(0,l.kt)("pre",null,(0,l.kt)("code",{parentName:"pre"},"ignore_folders:\n  - Folder1\n  - Folder2\n")),(0,l.kt)("ul",null,(0,l.kt)("li",{parentName:"ul"},"don't use the path format like ",(0,l.kt)("inlineCode",{parentName:"li"},"Folder1/Folder2.."),". only folder names are available.")),(0,l.kt)("br",null))}s.isMDXComponent=!0}}]);