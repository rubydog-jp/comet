"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[853],{3905:(e,t,r)=>{r.d(t,{Zo:()=>u,kt:()=>y});var n=r(7294);function i(e,t,r){return t in e?Object.defineProperty(e,t,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[t]=r,e}function o(e,t){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),r.push.apply(r,n)}return r}function a(e){for(var t=1;t<arguments.length;t++){var r=null!=arguments[t]?arguments[t]:{};t%2?o(Object(r),!0).forEach((function(t){i(e,t,r[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(r,t))}))}return e}function l(e,t){if(null==e)return{};var r,n,i=function(e,t){if(null==e)return{};var r,n,i={},o=Object.keys(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||(i[r]=e[r]);return i}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(n=0;n<o.length;n++)r=o[n],t.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(i[r]=e[r])}return i}var p=n.createContext({}),s=function(e){var t=n.useContext(p),r=t;return e&&(r="function"==typeof e?e(t):a(a({},t),e)),r},u=function(e){var t=s(e.components);return n.createElement(p.Provider,{value:t},e.children)},c="mdxType",d={inlineCode:"code",wrapper:function(e){var t=e.children;return n.createElement(n.Fragment,{},t)}},m=n.forwardRef((function(e,t){var r=e.components,i=e.mdxType,o=e.originalType,p=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),c=s(r),m=i,y=c["".concat(p,".").concat(m)]||c[m]||d[m]||o;return r?n.createElement(y,a(a({ref:t},u),{},{components:r})):n.createElement(y,a({ref:t},u))}));function y(e,t){var r=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var o=r.length,a=new Array(o);a[0]=m;var l={};for(var p in t)hasOwnProperty.call(t,p)&&(l[p]=t[p]);l.originalType=e,l[c]="string"==typeof e?e:i,a[1]=l;for(var s=2;s<o;s++)a[s]=r[s];return n.createElement.apply(null,a)}return n.createElement.apply(null,r)}m.displayName="MDXCreateElement"},1321:(e,t,r)=>{r.r(t),r.d(t,{assets:()=>p,contentTitle:()=>a,default:()=>d,frontMatter:()=>o,metadata:()=>l,toc:()=>s});var n=r(7462),i=(r(7294),r(3905));const o={sidebar_position:120,title:"Publish your site"},a="Publish your site",l={unversionedId:"deploy",id:"deploy",title:"Publish your site",description:"\u2705Required Git.",source:"@site/tab_docs_en/120_deploy.md",sourceDirName:".",slug:"/deploy",permalink:"/docs/deploy",draft:!1,tags:[],version:"current",sidebarPosition:120,frontMatter:{sidebar_position:120,title:"Publish your site"},sidebar:"tutorialSidebar",previous:{title:"Getting started",permalink:"/docs/start"},next:{title:"Edit your site",permalink:"/docs/edit"}},p={},s=[{value:"Create new repository on GitHub",id:"create-new-repository-on-github",level:3},{value:"(First Time Only) Edit comet.yaml",id:"first-time-only-edit-cometyaml",level:3},{value:"Send data",id:"send-data",level:3}],u={toc:s},c="wrapper";function d(e){let{components:t,...o}=e;return(0,i.kt)(c,(0,n.Z)({},u,o,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"publish-your-site"},"Publish your site"),(0,i.kt)("admonition",{title:"Prepare",type:"note"},(0,i.kt)("p",{parentName:"admonition"},"\u2705Required ",(0,i.kt)("strong",{parentName:"p"},"Git"),".",(0,i.kt)("br",{parentName:"p"}),"\n","\u2705Required ",(0,i.kt)("strong",{parentName:"p"},"GitHub Account"),".")),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"create-new-repository-on-github"},"Create new repository on GitHub"),(0,i.kt)("p",null,"Please name it like ",(0,i.kt)("inlineCode",{parentName:"p"},"my_site"),".",(0,i.kt)("br",{parentName:"p"}),"\n","The type must be ",(0,i.kt)("inlineCode",{parentName:"p"},"Public"),"."),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"image",src:r(1079).Z,width:"1788",height:"1048"})),(0,i.kt)("a",{href:"https://github.com/new",class:"linkbutton"},"Create new Repository"),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"first-time-only-edit-cometyaml"},"(First Time Only) Edit comet.yaml"),(0,i.kt)("p",null,"open ",(0,i.kt)("inlineCode",{parentName:"p"},"my_site/comet.yaml")),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre"},"...\ngithub:\n  user_id: YOUR_USER_ID\n  repository_name: YOUR_REPOSITORY_NAME\n")),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"send-data"},"Send data"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre"},"$ comet deploy\n")),(0,i.kt)("p",null,"If asked user, please input your ",(0,i.kt)("strong",{parentName:"p"},"GitHub UserID"),".",(0,i.kt)("br",{parentName:"p"}),"\n","If asked password, please input ",(0,i.kt)("strong",{parentName:"p"},"GitHub AccessToken"),"."),(0,i.kt)("br",null),(0,i.kt)("h1",{id:"5-completed"},"5. Completed"),(0,i.kt)("p",null,"Now your new web site is here.",(0,i.kt)("br",{parentName:"p"}),"\n","It takes a few minutes."),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"URL")),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre"},"https://YOUR_USER_ID.github.io/YOUR_REPOSITORY_NAME/\n")),(0,i.kt)("br",null),(0,i.kt)("a",{href:"/docs/edit",class:"linkbutton"},"Next Page"))}d.isMDXComponent=!0},1079:(e,t,r)=>{r.d(t,{Z:()=>n});const n=r.p+"assets/images/new-repo-ef7d05e6ac51645e5a6c70e09ead402c.png"}}]);