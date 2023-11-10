"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[238],{3905:(e,t,n)=>{n.d(t,{Zo:()=>u,kt:()=>b});var r=n(7294);function a(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function o(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function i(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?o(Object(n),!0).forEach((function(t){a(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):o(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,a=function(e,t){if(null==e)return{};var n,r,a={},o=Object.keys(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||(a[n]=e[n]);return a}(e,t);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(r=0;r<o.length;r++)n=o[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(a[n]=e[n])}return a}var p=r.createContext({}),c=function(e){var t=r.useContext(p),n=t;return e&&(n="function"==typeof e?e(t):i(i({},t),e)),n},u=function(e){var t=c(e.components);return r.createElement(p.Provider,{value:t},e.children)},s="mdxType",m={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,a=e.mdxType,o=e.originalType,p=e.parentName,u=l(e,["components","mdxType","originalType","parentName"]),s=c(n),d=a,b=s["".concat(p,".").concat(d)]||s[d]||m[d]||o;return n?r.createElement(b,i(i({ref:t},u),{},{components:n})):r.createElement(b,i({ref:t},u))}));function b(e,t){var n=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var o=n.length,i=new Array(o);i[0]=d;var l={};for(var p in t)hasOwnProperty.call(t,p)&&(l[p]=t[p]);l.originalType=e,l[s]="string"==typeof e?e:a,i[1]=l;for(var c=2;c<o;c++)i[c]=n[c];return r.createElement.apply(null,i)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},9194:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>p,contentTitle:()=>i,default:()=>m,frontMatter:()=>o,metadata:()=>l,toc:()=>c});var r=n(7462),a=(n(7294),n(3905));const o={sidebar_position:120,title:"\u30b5\u30a4\u30c8\u3092\u516c\u958b"},i="\u30b5\u30a4\u30c8\u3092\u516c\u958b",l={unversionedId:"deploy",id:"deploy",title:"\u30b5\u30a4\u30c8\u3092\u516c\u958b",description:"\u2705\u3053\u306e\u4f5c\u696d\u306b\u306f Git \u304c\u5fc5\u8981\u3067\u3059",source:"@site/tab_docs_jp/120_deploy.md",sourceDirName:".",slug:"/deploy",permalink:"/docs-jp/deploy",draft:!1,tags:[],version:"current",sidebarPosition:120,frontMatter:{sidebar_position:120,title:"\u30b5\u30a4\u30c8\u3092\u516c\u958b"},sidebar:"tutorialSidebar",previous:{title:"\u30b9\u30bf\u30fc\u30c8",permalink:"/docs-jp/start"},next:{title:"\u30b5\u30a4\u30c8\u3092\u7de8\u96c6",permalink:"/docs-jp/edit"}},p={},c=[{value:"GitHub\u3067\u30ea\u30dd\u30b8\u30c8\u30ea\u3092\u4f5c\u6210",id:"github\u3067\u30ea\u30dd\u30b8\u30c8\u30ea\u3092\u4f5c\u6210",level:3},{value:"(\u521d\u56de\u306e\u307f) comet.yaml \u306e\u8a2d\u5b9a",id:"\u521d\u56de\u306e\u307f-cometyaml-\u306e\u8a2d\u5b9a",level:3},{value:"\u30c7\u30fc\u30bf\u3092\u9001\u4fe1",id:"\u30c7\u30fc\u30bf\u3092\u9001\u4fe1",level:3}],u={toc:c},s="wrapper";function m(e){let{components:t,...o}=e;return(0,a.kt)(s,(0,r.Z)({},u,o,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"\u30b5\u30a4\u30c8\u3092\u516c\u958b"},"\u30b5\u30a4\u30c8\u3092\u516c\u958b"),(0,a.kt)("admonition",{title:"\u78ba\u8a8d",type:"note"},(0,a.kt)("p",{parentName:"admonition"},"\u2705\u3053\u306e\u4f5c\u696d\u306b\u306f ",(0,a.kt)("strong",{parentName:"p"},"Git")," \u304c\u5fc5\u8981\u3067\u3059",(0,a.kt)("br",{parentName:"p"}),"\n","\u2705\u3053\u306e\u4f5c\u696d\u306b\u306f ",(0,a.kt)("strong",{parentName:"p"},"GitHub\u30a2\u30ab\u30a6\u30f3\u30c8")," \u304c\u5fc5\u8981\u3067\u3059")),(0,a.kt)("br",null),(0,a.kt)("h3",{id:"github\u3067\u30ea\u30dd\u30b8\u30c8\u30ea\u3092\u4f5c\u6210"},"GitHub\u3067\u30ea\u30dd\u30b8\u30c8\u30ea\u3092\u4f5c\u6210"),(0,a.kt)("p",null,"\u30ea\u30dd\u30b8\u30c8\u30ea\u540d\u306f\u597d\u304d\u306a\u540d\u524d \u4f8b: ",(0,a.kt)("inlineCode",{parentName:"p"},"my_site"),(0,a.kt)("br",{parentName:"p"}),"\n","\u516c\u958b\u30bf\u30a4\u30d7\u306f ",(0,a.kt)("inlineCode",{parentName:"p"},"\u30d1\u30d6\u30ea\u30c3\u30af Public")," \u306b\u306a\u3063\u3066\u3044\u308b\u3053\u3068\u3092\u78ba\u8a8d\u3057\u3066\u304f\u3060\u3055\u3044"),(0,a.kt)("p",null,(0,a.kt)("img",{alt:"image",src:n(1079).Z,width:"1788",height:"1048"})),(0,a.kt)("a",{href:"https://github.com/new",class:"linkbutton"},"\u30ea\u30dd\u30b8\u30c8\u30ea\u3092\u4f5c\u6210"),(0,a.kt)("br",null),(0,a.kt)("h3",{id:"\u521d\u56de\u306e\u307f-cometyaml-\u306e\u8a2d\u5b9a"},"(\u521d\u56de\u306e\u307f) comet.yaml \u306e\u8a2d\u5b9a"),(0,a.kt)("p",null,(0,a.kt)("inlineCode",{parentName:"p"},"my_site/comet.yaml")," \u3092\u7de8\u96c6\u3057\u307e\u3059\u3002"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},"...\ngithub:\n  user_id: \u3053\u3053\u306b\u30e6\u30fc\u30b6\u30fcID\n  repository_name: my_site\n")),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("inlineCode",{parentName:"li"},"user_id"),": GitHub\u306e\u30e6\u30fc\u30b6\u30fcID\u3092\u5165\u529b\u3057\u307e\u3059"),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("inlineCode",{parentName:"li"},"repository_name"),": \u4f5c\u6210\u3057\u305f\u30ea\u30dd\u30b8\u30c8\u30ea\u540d\u306b\u5408\u308f\u305b\u3066\u7de8\u96c6\u3057\u3066\u304f\u3060\u3055\u3044\u3002")),(0,a.kt)("br",null),(0,a.kt)("h3",{id:"\u30c7\u30fc\u30bf\u3092\u9001\u4fe1"},"\u30c7\u30fc\u30bf\u3092\u9001\u4fe1"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},"$ comet deploy\n")),(0,a.kt)("p",null,"\u30e6\u30fc\u30b6\u30fcID\u3092\u805e\u304b\u308c\u305f\u3089 ",(0,a.kt)("strong",{parentName:"p"},"GitHub\u30e6\u30fc\u30b6\u30fcID")," \u3092",(0,a.kt)("br",{parentName:"p"}),"\n","\u30d1\u30b9\u30ef\u30fc\u30c9\u3092\u805e\u304b\u308c\u305f\u3089 ",(0,a.kt)("strong",{parentName:"p"},"GitHub\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3")," \u3092\u5165\u529b\u3057\u3066\u304f\u3060\u3055\u3044"),(0,a.kt)("br",null),(0,a.kt)("h1",{id:"5-\u5b8c\u4e86"},"5. \u5b8c\u4e86"),(0,a.kt)("p",null,"\u304a\u75b2\u308c\u69d8\u3067\u3057\u305f\u3002\u4ee5\u4e0b\u306eURL\u306b\u3042\u306a\u305f\u306e\u30b5\u30a4\u30c8\u304c\u516c\u958b\u3055\u308c\u307e\u3057\u305f\u3002",(0,a.kt)("br",{parentName:"p"}),"\n","\u53cd\u6620\u307e\u3067\u306f\u6570\u5206\u304b\u304b\u308a\u307e\u3059\u3002"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre"},"https://<\u30e6\u30fc\u30b6\u30fcID>.github.io/my_site/\n")),(0,a.kt)("br",null))}m.isMDXComponent=!0},1079:(e,t,n)=>{n.d(t,{Z:()=>r});const r=n.p+"assets/images/new-repo-ef7d05e6ac51645e5a6c70e09ead402c.png"}}]);