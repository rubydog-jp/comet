"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[559],{3905:(e,t,n)=>{n.d(t,{Zo:()=>c,kt:()=>g});var r=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var d=r.createContext({}),s=function(e){var t=r.useContext(d),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},c=function(e){var t=s(e.components);return r.createElement(d.Provider,{value:t},e.children)},p="mdxType",u={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},m=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,a=e.originalType,d=e.parentName,c=l(e,["components","mdxType","originalType","parentName"]),p=s(n),m=i,g=p["".concat(d,".").concat(m)]||p[m]||u[m]||a;return n?r.createElement(g,o(o({ref:t},c),{},{components:n})):r.createElement(g,o({ref:t},c))}));function g(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=n.length,o=new Array(a);o[0]=m;var l={};for(var d in t)hasOwnProperty.call(t,d)&&(l[d]=t[d]);l.originalType=e,l[p]="string"==typeof e?e:i,o[1]=l;for(var s=2;s<a;s++)o[s]=n[s];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}m.displayName="MDXCreateElement"},3203:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>d,contentTitle:()=>o,default:()=>u,frontMatter:()=>a,metadata:()=>l,toc:()=>s});var r=n(7462),i=(n(7294),n(3905));const a={sidebar_position:330,title:"Inline Flutter Widget"},o="Inline Flutter Widget",l={unversionedId:"inline-widget",id:"inline-widget",title:"Inline Flutter Widget",description:"You can insert costom Flutter Widget in any where of your markdon.",source:"@site/tab_docs_en/330_inline-widget.md",sourceDirName:".",slug:"/inline-widget",permalink:"/docs/inline-widget",draft:!1,tags:[],version:"current",sidebarPosition:330,frontMatter:{sidebar_position:330,title:"Inline Flutter Widget"},sidebar:"tutorialSidebar",previous:{title:"comet.yaml",permalink:"/docs/yaml"},next:{title:"Commands",permalink:"/docs/commands"}},d={},s=[{value:"How to",id:"how-to",level:3},{value:"Register MyWidget in Flutter",id:"register-mywidget-in-flutter",level:3},{value:"Constraints",id:"constraints",level:3}],c={toc:s},p="wrapper";function u(e){let{components:t,...n}=e;return(0,i.kt)(p,(0,r.Z)({},c,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"inline-flutter-widget"},"Inline Flutter Widget"),(0,i.kt)("p",null,"You can insert costom Flutter Widget in any where of your markdon."),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"how-to"},"How to"),(0,i.kt)("p",null,"Use ",(0,i.kt)("inlineCode",{parentName:"p"},"{{WIDGET_NAME}}"),"."),(0,i.kt)("p",null,"example"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-.md"},"# Title\n\nthis is some text.\n\n{{MyWidget}}\n\nthis is some text.\n")),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"register-mywidget-in-flutter"},"Register MyWidget in Flutter"),(0,i.kt)("p",null,"Open ",(0,i.kt)("inlineCode",{parentName:"p"},"FLUTTER/lib/widgets.dart"),"."),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-widgets.dart"},"\nfinal CometInlineWidgets inlineWidgets = {\n    ...\n    'MyWidget': (_) => MyWidget(), // add this line\n    ...\n};\n")),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"constraints"},"Constraints"),(0,i.kt)("admonition",{title:"Bad",type:"danger"},(0,i.kt)("pre",{parentName:"admonition"},(0,i.kt)("code",{parentName:"pre",className:"language-.md"},"\nLike this {{MyWidget}} nomal text cannot be mixed in the same line\n\n"))),(0,i.kt)("br",null),(0,i.kt)("admonition",{title:"Bad",type:"danger"},(0,i.kt)("pre",{parentName:"admonition"},(0,i.kt)("code",{parentName:"pre",className:"language-.md"},"\n{{MyWidget}} {{MyWidget}}\n\n"))),(0,i.kt)("br",null),(0,i.kt)("admonition",{title:"Bad",type:"danger"},(0,i.kt)("pre",{parentName:"admonition"},(0,i.kt)("code",{parentName:"pre",className:"language-.md"},"\nDon't put leading space\n {{MyWidget}}\n\nNote\n{{MyWidget}}\nand\n{{ MyWidget }}\nare different widget name.\n\n"))))}u.isMDXComponent=!0}}]);