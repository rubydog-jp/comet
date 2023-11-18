"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[457],{3905:(e,t,r)=>{r.d(t,{Zo:()=>s,kt:()=>f});var n=r(7294);function o(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function i(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function a(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?i(Object(r),!0).forEach((function(t){o(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):i(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function l(e,t){if(null==e)return{};var r,n,o=function(e,t){if(null==e)return{};var r,n,o={},i=Object.keys(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||(o[r]=e[r]);return o}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(n=0;n<i.length;n++)r=i[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(o[r]=e[r])}return o}var c=n.createContext({}),u=function(e){var t=n.useContext(c),r=t;return e&&(r="function"==typeof e?e(t):a(a({},t),e)),r},s=function(e){var t=u(e.components);return n.createElement(c.Provider,{value:t},e.children)},p="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},y=n.forwardRef((function(e,t){var r=e.components,o=e.mdxType,i=e.originalType,c=e.parentName,s=l(e,["components","mdxType","originalType","parentName"]),p=u(r),y=o,f=p["".concat(c,".").concat(y)]||p[y]||d[y]||i;return r?n.createElement(f,a(a({ref:t},s),{},{components:r})):n.createElement(f,a({ref:t},s))}));function f(e,t){var r=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var i=r.length,a=new Array(i);a[0]=y;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l[p]="string"==typeof e?e:o,a[1]=l;for(var u=2;u<i;u++)a[u]=r[u];return n.createElement.apply(null,a)}return n.createElement.apply(null,r)}y.displayName="MDXCreateElement"},1103:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>c,contentTitle:()=>a,default:()=>d,frontMatter:()=>i,metadata:()=>l,toc:()=>u});var n=r(7462),o=(r(7294),r(3905));const i={sidebar_position:130,title:"Edit your site"},a="Edit your site",l={unversionedId:"edit",id:"edit",title:"Edit your site",description:"It's very easy to edit your site.",source:"@site/tab_docs_en/130_edit.md",sourceDirName:".",slug:"/edit",permalink:"/docs/edit",draft:!1,tags:[],version:"current",sidebarPosition:130,frontMatter:{sidebar_position:130,title:"Edit your site"},sidebar:"tutorialSidebar",previous:{title:"Publish your site",permalink:"/docs/deploy"},next:{title:"(MEMO) Flutter install",permalink:"/docs/setup-flutter"}},c={},u=[{value:"Check on your PC",id:"check-on-your-pc",level:3},{value:"Publish (again)",id:"publish-again",level:3}],s={toc:u},p="wrapper";function d(e){let{components:t,...r}=e;return(0,o.kt)(p,(0,n.Z)({},s,r,{components:t,mdxType:"MDXLayout"}),(0,o.kt)("h1",{id:"edit-your-site"},"Edit your site"),(0,o.kt)("p",null,"It's very easy to edit your site.",(0,o.kt)("br",{parentName:"p"}),"\n","Let's modify these files."),(0,o.kt)("ul",null,(0,o.kt)("li",{parentName:"ul"},(0,o.kt)("inlineCode",{parentName:"li"},"my_site/1.English/1.Red/1.Apple.md"))),(0,o.kt)("br",null),(0,o.kt)("h3",{id:"check-on-your-pc"},"Check on your PC"),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"$ comet start\n")),(0,o.kt)("br",null),(0,o.kt)("h3",{id:"publish-again"},"Publish (again)"),(0,o.kt)("pre",null,(0,o.kt)("code",{parentName:"pre"},"$ comet deploy\n")),(0,o.kt)("br",null))}d.isMDXComponent=!0}}]);