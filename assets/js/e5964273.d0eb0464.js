"use strict";(self.webpackChunkdocs=self.webpackChunkdocs||[]).push([[484],{3905:(e,t,n)=>{n.d(t,{Zo:()=>c,kt:()=>f});var r=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function p(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var l=r.createContext({}),s=function(e){var t=r.useContext(l),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},c=function(e){var t=s(e.components);return r.createElement(l.Provider,{value:t},e.children)},u="mdxType",b={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,a=e.originalType,l=e.parentName,c=p(e,["components","mdxType","originalType","parentName"]),u=s(n),d=i,f=u["".concat(l,".").concat(d)]||u[d]||b[d]||a;return n?r.createElement(f,o(o({ref:t},c),{},{components:n})):r.createElement(f,o({ref:t},c))}));function f(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=n.length,o=new Array(a);o[0]=d;var p={};for(var l in t)hasOwnProperty.call(t,l)&&(p[l]=t[l]);p.originalType=e,p[u]="string"==typeof e?e:i,o[1]=p;for(var s=2;s<a;s++)o[s]=n[s];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},1918:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>l,contentTitle:()=>o,default:()=>b,frontMatter:()=>a,metadata:()=>p,toc:()=>s});var r=n(7462),i=(n(7294),n(3905));const a={sidebar_position:230,title:"(\u53c2\u8003) GitHub\u306e\u6e96\u5099"},o="GitHub",p={unversionedId:"setup-github",id:"setup-github",title:"(\u53c2\u8003) GitHub\u306e\u6e96\u5099",description:"\u307e\u3060\u4f7f\u3063\u305f\u3053\u3068\u304c\u306a\u3044\u65b9\u306f\u4ee5\u4e0b\u304b\u3089 \u767b\u9332(\u30b5\u30a4\u30f3\u30a2\u30c3\u30d7) \u3092\u304a\u9858\u3044\u3057\u307e\u3059\u3002",source:"@site/tab_docs_jp/230_setup-github.md",sourceDirName:".",slug:"/setup-github",permalink:"/docs-jp/setup-github",draft:!1,tags:[],version:"current",sidebarPosition:230,frontMatter:{sidebar_position:230,title:"(\u53c2\u8003) GitHub\u306e\u6e96\u5099"},sidebar:"tutorialSidebar",previous:{title:"(\u53c2\u8003) Git\u306e\u6e96\u5099",permalink:"/docs-jp/setup-git"},next:{title:"\u547d\u540d\u898f\u5247",permalink:"/docs-jp/naming"}},l={},s=[{value:"\u30e6\u30fc\u30b6\u30fc ID",id:"\u30e6\u30fc\u30b6\u30fc-id",level:3},{value:"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3",id:"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3",level:3}],c={toc:s},u="wrapper";function b(e){let{components:t,...a}=e;return(0,i.kt)(u,(0,r.Z)({},c,a,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h1",{id:"github"},"GitHub"),(0,i.kt)("p",null,"\u307e\u3060\u4f7f\u3063\u305f\u3053\u3068\u304c\u306a\u3044\u65b9\u306f\u4ee5\u4e0b\u304b\u3089 ",(0,i.kt)("strong",{parentName:"p"},"\u767b\u9332(\u30b5\u30a4\u30f3\u30a2\u30c3\u30d7)")," \u3092\u304a\u9858\u3044\u3057\u307e\u3059\u3002",(0,i.kt)("br",{parentName:"p"}),"\n",(0,i.kt)("inlineCode",{parentName:"p"},"\u30e6\u30fc\u30b6\u30fcID")," , ",(0,i.kt)("inlineCode",{parentName:"p"},"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3")," \u3092\u7528\u610f\u3057\u3066\u304f\u3060\u3055\u3044\u3002"),(0,i.kt)("a",{href:"https://github.co.jp/",class:"linkbutton"},"GitHub \u306b\u30b5\u30a4\u30f3\u30a2\u30c3\u30d7 \ud83d\udc19"),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"\u30e6\u30fc\u30b6\u30fc-id"},"\u30e6\u30fc\u30b6\u30fc ID"),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"image",src:n(8461).Z,width:"1277",height:"350"})),(0,i.kt)("p",null,"\u3053\u306e ",(0,i.kt)("strong",{parentName:"p"},"\u30e6\u30fc\u30b6\u30fc ID")," \u3092\u30e1\u30e2\u3057\u3066\u304a\u3044\u3066\u304f\u3060\u3055\u3044\u3002",(0,i.kt)("br",{parentName:"p"}),"\n","\u4f8b: ",(0,i.kt)("inlineCode",{parentName:"p"},"rbdog")),(0,i.kt)("br",null),(0,i.kt)("h3",{id:"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3"},"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3"),(0,i.kt)("p",null,"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3\u306f\u3053\u308c\u304b\u3089\u306e\u4f5c\u696d\u3067\u4f7f\u3046\u79d8\u5bc6\u306e\u30d1\u30b9\u30ef\u30fc\u30c9\u306e\u3088\u3046\u306a\u3082\u306e\u3067\u3059\u3002"),(0,i.kt)("p",null,(0,i.kt)("img",{alt:"gif",src:n(4716).Z,width:"1280",height:"720"}),(0,i.kt)("br",{parentName:"p"}),"\n",(0,i.kt)("img",{alt:"gif",src:n(7435).Z,width:"2002",height:"581"})),(0,i.kt)("a",{href:"https://github.com/settings/tokens",class:"linkbutton"},"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3\u4f5c\u6210"),(0,i.kt)("br",null),(0,i.kt)("p",null,"\u4f5c\u3063\u305f ",(0,i.kt)("strong",{parentName:"p"},"\u30a2\u30af\u30bb\u30b9\u30c8\u30fc\u30af\u30f3")," \u3092\u30e1\u30e2\u3057\u3066\u304a\u3044\u3066\u304f\u3060\u3055\u3044\u3002",(0,i.kt)("br",{parentName:"p"}),"\n","\u4e00\u5ea6\u753b\u9762\u3092\u96e2\u308c\u308b\u3068\u3001\u3082\u3046\u78ba\u8a8d\u3059\u308b\u3053\u3068\u304c\u3067\u304d\u307e\u305b\u3093\u3002",(0,i.kt)("br",{parentName:"p"}),"\n","\u4e07\u304c\u4e00\u5fd8\u308c\u3066\u3057\u307e\u3063\u305f\u3068\u304d\u3084\u3001\u4ed6\u4eba\u306b\u30d0\u30ec\u3066\u3057\u307e\u3063\u305f\u3068\u304d\u306f \u53e4\u3044\u307b\u3046\u3092\u6d88\u3057\u3066\u3082\u3046\u4e00\u5ea6\u4f5c\u308a\u76f4\u305b\u3070\u5927\u4e08\u592b\u3067\u3059\u3002"),(0,i.kt)("p",null,"\u4f8b: ",(0,i.kt)("inlineCode",{parentName:"p"},"ghp_Xxxx1122Yyyy3344Zzzz5566AaaaBbbbCccc")),(0,i.kt)("br",null),(0,i.kt)("a",{href:"/docs-jp/deploy",class:"linkbutton"},"\u8aac\u660e\u3078\u623b\u308b"))}b.isMDXComponent=!0},7435:(e,t,n)=>{n.d(t,{Z:()=>r});const r=n.p+"assets/images/access-token-digest-2eea4cf2619746a6654b1b217da0726c.png"},4716:(e,t,n)=>{n.d(t,{Z:()=>r});const r=n.p+"assets/images/access-token-bac8578f9f9299726c400ce5741b5f93.gif"},8461:(e,t,n)=>{n.d(t,{Z:()=>r});const r=n.p+"assets/images/github_id-8bee4e34b155e5812fd2902711fdfd1b.png"}}]);