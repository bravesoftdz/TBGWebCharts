unit TetherminJS;

interface

uses Interfaces, Classes;

type
  TTetherminJS = class(TInterfacedObject,iModelJS)
    private
      FPack : TStringList;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelJS;
	  procedure TetherminJS_1;
      function PackJS : String;
  end;

implementation

uses
  SysUtils;

{ TTetherminJS }

constructor TTetherminJS.Create;
begin
  FPack := TStringList.Create;
end;

destructor TTetherminJS.Destroy;
begin
  freeandnil(fpack);
  inherited;
end;

class function TTetherminJS.New: iModelJS;
begin
  Result := Self.Create;
end;

procedure TTetherminJS.TetherminJS_1;
begin
  FPack.Add('<script>'+#13);
  FPack.Add('!function(t,e){"function"==typeof define&&define.amd?define(e):"object"==typeof ');
  FPack.Add('exports?module.exports=e(require,exports,module):t.Tether=e()}(this,function(t,e,o){"use strict";function ');
  FPack.Add('n(t,e){if(!(t instanceof e))throw new ');
  FPack.Add('TypeError("Cannot call a class as a function")}function i(t){var ');
  FPack.Add('e=t.getBoundingClientRect(),o={};for(var n in ');
  FPack.Add('e)o[n]=e[n];if(t.ownerDocument!==document){var ');
  FPack.Add('r=t.ownerDocument.defaultView.frameElement;if(r){var ');
  FPack.Add('s=i(r);o.top+=s.top,o.bottom+=s.top,o.left+=s.left,o.right+=s.left}}return ');
  FPack.Add('o}function r(t){var ');
  FPack.Add('e=getComputedStyle(t)||{},o=e.position,n=[];if("fixed"===o)return[t];for(var ');
  FPack.Add('i=t;(i=i.parentNode)&&i&&1===i.nodeType;){var r=void ');
  FPack.Add('0;try{r=getComputedStyle(i)}catch(s){}if("undefined"==typeof r||null===r)return ');
  FPack.Add('n.push(i),n;var ');
  FPack.Add('a=r,f=a.overflow,l=a.overflowX,h=a.overflowY;/(auto|scroll)/.test(f+h+l)&&("absolute"!==o||["relative","absolute","fixed"].indexOf(r.position)>=0)&&n.push(i)}return ');
  FPack.Add('n.push(t.ownerDocument.body),t.ownerDocument!==document&&n.push(t.ownerDocument.defaultView),n}function ');
  FPack.Add('s(){A&&document.body.removeChild(A),A=null}function a(t){var e=void ');
  FPack.Add('0;t===document?(e=document,t=document.documentElement):e=t.ownerDocument;var ');
  FPack.Add('o=e.documentElement,n=i(t),r=P();return n.top-=r.top,n.left-');
  FPack.Add('=r.left,"undefined"==typeof n.width&&(n.width=document.body.scrollWidth-n.left-');
  FPack.Add('n.right),"undefined"==typeof n.height&&(n.height=document.body.scrollHeight-');
  FPack.Add('n.top-n.bottom),n.top=n.top-o.clientTop,n.left=n.left-');
  FPack.Add('o.clientLeft,n.right=e.body.clientWidth-n.width-');
  FPack.Add('n.left,n.bottom=e.body.clientHeight-n.height-n.top,n}function f(t){return ');
  FPack.Add('t.offsetParent||document.documentElement}function l(){var ');
  FPack.Add('t=document.createElement("div");t.style.width="100%",t.style.height="200px";var ');
  FPack.Add('e=document.createElement("div");h(e.style,{position:"absolute",top:0,left:0,pointerEvents:"none",visibility:"hidden",width:"200px",height:"150px",overflow:"hidden"}),e.appendChild(t),document.body.appendChild(e);var ');
  FPack.Add('o=t.offsetWidth;e.style.overflow="scroll";var ');
  FPack.Add('n=t.offsetWidth;o===n&&(n=e.clientWidth),document.body.removeChild(e);var i=o-');
  FPack.Add('n;return{width:i,height:i}}function h(){var t=arguments.length<=0||void ');
  FPack.Add('0===arguments[0]?{}:arguments[0],e=[];return ');
  FPack.Add('Array.prototype.push.apply(e,arguments),e.slice(1).forEach(function(e){if(e)for(var ');
  FPack.Add('o in e)({}).hasOwnProperty.call(e,o)&&(t[o]=e[o])}),t}function ');
  FPack.Add('u(t,e){if("undefined"!=typeof ');
  FPack.Add('t.classList)e.split(" ").forEach(function(e){e.trim()&&t.classList.remove(e)});else{var ');
  FPack.Add('o=new ');
  FPack.Add('RegExp("(^| )"+e.split(" ").join("|")+"( |$)","gi"),n=c(t).replace(o," ");g(t,n)}}function ');
  FPack.Add('d(t,e){if("undefined"!=typeof ');
  FPack.Add('t.classList)e.split(" ").forEach(function(e){e.trim()&&t.classList.add(e)});else{u(t,e);var ');
  FPack.Add('o=c(t)+(" "+e);g(t,o)}}function p(t,e){if("undefined"!=typeof ');
  FPack.Add('t.classList)return t.classList.contains(e);var o=c(t);return new ');
  FPack.Add('RegExp("(^| )"+e+"( |$)","gi").test(o)}function c(t){return t.className ');
  FPack.Add('instanceof ');
  FPack.Add('t.ownerDocument.defaultView.SVGAnimatedString?t.className.baseVal:t.className}function ');
  FPack.Add('g(t,e){t.setAttribute("class",e)}function m(t,e,o){o.forEach(function(o){-');
  FPack.Add('1===e.indexOf(o)&&p(t,o)&&u(t,o)}),e.forEach(function(e){p(t,e)||d(t,e)})}function ');
  FPack.Add('n(t,e){if(!(t instanceof e))throw new ');
  FPack.Add('TypeError("Cannot call a class as a function")}function ');
  FPack.Add('v(t,e){if("function"!=typeof e&&null!==e)throw new ');
  FPack.Add('TypeError("Super expression must either be null or a function, not "+typeof ');
  FPack.Add('e);t.prototype=Object.create(e&&e.prototype,{constructor:{value:t,enumerable:!1,writable:!0,configurable:!0}}),e&&(Object.setPrototypeOf?Object.setPrototypeOf(t,e):t.__proto__=e)}function ');
  FPack.Add('y(t,e){var o=arguments.length<=2||void 0===arguments[2]?1:arguments[2];return ');
  FPack.Add('t+o>=e&&e>=t-o}function b(){return"undefined"!=typeof ');
  FPack.Add('performance&&"undefined"!=typeof performance.now?performance.now():+new ');
  FPack.Add('Date}function w(){for(var ');
  FPack.Add('t={top:0,left:0},e=arguments.length,o=Array(e),n=0;e>n;n++)o[n]=arguments[n];return ');
  FPack.Add('o.forEach(function(e){var o=e.top,n=e.left;"string"==typeof ');
  FPack.Add('o&&(o=parseFloat(o,10)),"string"==typeof ');
  FPack.Add('n&&(n=parseFloat(n,10)),t.top+=o,t.left+=n}),t}function ');
  FPack.Add('C(t,e){return"string"==typeof t.left&&-');
  FPack.Add('1!==t.left.indexOf("%")&&(t.left=parseFloat(t.left,10)/100*e.width),"string"==typeof ');
  FPack.Add('t.top&&-');
  FPack.Add('1!==t.top.indexOf("%")&&(t.top=parseFloat(t.top,10)/100*e.height),t}function ');
  FPack.Add('O(t,e){return"scrollParent"===e?e=t.scrollParents[0]:"window"===e&&(e=[pageXOffset,pageYOffset,innerWidth+pageXOffset,innerHeight+pageYOffset]),e===document&&(e=e.documentElement),"undefined"!=typeof ');
  FPack.Add('e.nodeType&&!function(){var ');
  FPack.Add('t=e,o=a(e),n=o,i=getComputedStyle(e);if(e=[n.left,n.top,o.width+n.left,o.height+n.top],t.ownerDocument!==document){var ');
  FPack.Add('r=t.ownerDocument.defaultView;e[0]+=r.pageXOffset,e[1]+=r.pageYOffset,e[2]+=r.pageXOffset,e[3]+=r.pageYOffset}$.forEach(function(t,o){t=t[0].toUpperCase()+t.substr(1),"Top"===t||"Left"===t?e[o]+=parseFloat(i["border"+t+"Width"]):e[o]-');
  FPack.Add('=parseFloat(i["border"+t+"Width"])})}(),e}var E=function(){function ');
  FPack.Add('t(t,e){for(var o=0;o<e.length;o++){var ');
  FPack.Add('n=e[o];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in ');
  FPack.Add('n&&(n.writable=!0),Object.defineProperty(t,n.key,n)}}return ');
  FPack.Add('function(e,o,n){return o&&t(e.prototype,o),n&&t(e,n),e}}(),x=void ');
  FPack.Add('0;"undefined"==typeof x&&(x={modules:[]});var A=null,T=function(){var ');
  FPack.Add('t=0;return function(){return++t}}(),S={},P=function(){var ');
  FPack.Add('t=A;t||(t=document.createElement("div"),t.setAttribute("data-tether-id",T()),h(t.style,{top:0,left:0,position:"absolute"}),document.body.appendChild(t),A=t);var ');
  FPack.Add('e=t.getAttribute("data-tether-id");return"undefined"==typeof ');
  FPack.Add('S[e]&&(S[e]=i(t),M(function(){delete ');
  FPack.Add('S[e]})),S[e]},W=[],M=function(t){W.push(t)},_=function(){for(var t=void ');
  FPack.Add('0;t=W.pop();)t()},k=function(){function t(){n(this,t)}return ');
  FPack.Add('E(t,[{key:"on",value:function(t,e,o){var n=arguments.length<=3||void ');
  FPack.Add('0===arguments[3]?!1:arguments[3];"undefined"==typeof ');
  FPack.Add('this.bindings&&(this.bindings={}),"undefined"==typeof ');
  FPack.Add('this.bindings[t]&&(this.bindings[t]=[]),this.bindings[t].push({handler:e,ctx:o,once:n})}},{key:"once",value:function(t,e,o){this.on(t,e,o,!0)}},{key:"off",value:function(t,e){if("undefined"!=typeof ');
  FPack.Add('this.bindings&&"undefined"!=typeof this.bindings[t])if("undefined"==typeof ');
  FPack.Add('e)delete this.bindings[t];else for(var ');
  FPack.Add('o=0;o<this.bindings[t].length;)this.bindings[t][o].handler===e?this.bindings[t].splice(o,1):++o}},{key:"trigger",value:function(t){if("undefined"!=typeof ');
  FPack.Add('this.bindings&&this.bindings[t]){for(var e=0,o=arguments.length,n=Array(o>1?o-');
  FPack.Add('1:0),i=1;o>i;i++)n[i-1]=arguments[i];for(;e<this.bindings[t].length;){var ');
  FPack.Add('r=this.bindings[t][e],s=r.handler,a=r.ctx,f=r.once,l=a;"undefined"==typeof ');
  FPack.Add('l&&(l=this),s.apply(l,n),f?this.bindings[t].splice(e,1):++e}}}}]),t}();x.Utils={getActualBoundingClientRect:i,getScrollParents:r,getBounds:a,getOffsetParent:f,');
  FPack.Add('extend:h,addClass:d,removeClass:u,hasClass:p,updateClasses:m,defer:M,flush:_,uniqueId:T,Evented:k,getScrollBarSize:l,removeUtilElements:s};var ');
  FPack.Add('B=function(){function t(t,e){var o=[],n=!0,i=!1,r=void 0;try{for(var ');
  FPack.Add('s,a=t[Symbol.iterator]();!(n=(s=a.next()).done)&&(o.push(s.value),!e||o.length!==e);n=!0);}catch(f){i=!0,r=f}finally{try{!n&&a["return"]&&a["return"]()}finally{if(i)throw ');
  FPack.Add('r}}return o}return function(e,o){if(Array.isArray(e))return ');
  FPack.Add('e;if(Symbol.iterator in Object(e))return t(e,o);throw new ');
  FPack.Add('TypeError("Invalid attempt to destructure non-iterable instance")}}(),E=function(){function ');
  FPack.Add('t(t,e){for(var o=0;o<e.length;o++){var ');
  FPack.Add('n=e[o];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in ');
  FPack.Add('n&&(n.writable=!0),Object.defineProperty(t,n.key,n)}}return ');
  FPack.Add('function(e,o,n){return ');
  FPack.Add('o&&t(e.prototype,o),n&&t(e,n),e}}(),z=function(t,e,o){for(var n=!0;n;){var ');
  FPack.Add('i=t,r=e,s=o;n=!1,null===i&&(i=Function.prototype);var ');
  FPack.Add('a=Object.getOwnPropertyDescriptor(i,r);if(void 0!==a){if("value"in a)return ');
  FPack.Add('a.value;var f=a.get;if(void 0===f)return;return f.call(s)}var ');
  FPack.Add('l=Object.getPrototypeOf(i);if(null===l)return;t=l,e=r,o=s,n=!0,a=l=void ');
  FPack.Add('0}};if("undefined"==typeof x)throw new ');
  FPack.Add('Error("You must include the utils.js file before tether.js");var ');
  FPack.Add('j=x.Utils,r=j.getScrollParents,a=j.getBounds,f=j.getOffsetParent,h=j.extend,d=j.addClass,u=j.removeClass,m=j.updateClasses,M=j.defer,_=j.flush,l=j.getScrollBarSize,s=j.removeUtilElements,Y=function(){if("undefined"==typeof ');
  FPack.Add('document)return"";for(var ');
  FPack.Add('t=document.createElement("div"),e=["transform","WebkitTransform","OTransform","MozTransform","msTransform"],o=0;o<e.length;++o){var ');
  FPack.Add('n=e[o];if(void 0!==t.style[n])return ');
  FPack.Add('n}}(),L=[],D=function(){L.forEach(function(t){t.position(!1)}),_()};!function(){var ');
  FPack.Add('t=null,e=null,o=null,n=function i(){return"undefined"!=typeof ');
  FPack.Add('e&&e>16?(e=Math.min(e-');
  FPack.Add('16,250),void(o=setTimeout(i,250))):void("undefined"!=typeof t&&b()-');
  FPack.Add('t<10||(null!=o&&(clearTimeout(o),o=null),t=b(),D(),e=b()-');
  FPack.Add('t))};"undefined"!=typeof window&&"undefined"!=typeof ');
  FPack.Add('window.addEventListener&&["resize","scroll","touchmove"].forEach(function(t){window.addEventListener(t,n)})}();var ');
  FPack.Add('X={center:"center",left:"right",right:"left"},F={middle:"middle",top:"bottom",bottom:"top"},H={top:0,left:0,middle:"50%",center:"50%",bottom:"100%",right:"100%"},N=function(t,e){var ');
  FPack.Add('o=t.left,n=t.top;return"auto"===o&&(o=X[e.left]),"auto"===n&&(n=F[e.top]),{left:o,top:n}},U=function(t){var ');
  FPack.Add('e=t.left,o=t.top;return"undefined"!=typeof ');
  FPack.Add('H[t.left]&&(e=H[t.left]),"undefined"!=typeof ');
  FPack.Add('H[t.top]&&(o=H[t.top]),{left:e,top:o}},V=function(t){var ');
  FPack.Add('e=t.split(" "),o=B(e,2),n=o[0],i=o[1];return{top:n,left:i}},R=V,q=function(t){function ');
  FPack.Add('e(t){var ');
  FPack.Add('o=this;n(this,e),z(Object.getPrototypeOf(e.prototype),"constructor",this).call(this),this.position=this.position.bind(this),L.push(this),this.history=[],this.setOptions(t,!1),x.modules.forEach(function(t){"undefined"!=typeof ');
  FPack.Add('t.initialize&&t.initialize.call(o)}),this.position()}return ');
  FPack.Add('v(e,t),E(e,[{key:"getClass",value:function(){var t=arguments.length<=0||void ');
  FPack.Add('0===arguments[0]?"":arguments[0],e=this.options.classes;return"undefined"!=typeof ');
  FPack.Add('e&&e[t]?this.options.classes[t]:this.options.classPrefix?this.options.classPrefix+"-"+t:t}},{key:"setOptions",value:function(t){var ');
  FPack.Add('e=this,o=arguments.length<=1||void ');
  FPack.Add('0===arguments[1]?!0:arguments[1],n={offset:"0 0",targetOffset:"0 0",targetAttachment:"auto auto",classPrefix:"tether"};this.options=h(n,t);var ');
  FPack.Add('i=this.options,s=i.element,a=i.target,f=i.targetModifier;if(this.element=s,this.target=a,this.targetModifier=f,"viewport"===this.target?(this.target=document.body,');
  FPack.Add('this.targetModifier="visible"):"scroll-handle"===this.target&&(this.target=document.body,this.targetModifier="scroll-handle"),["element","target"].forEach(function(t){if("undefined"==typeof ');
  FPack.Add('e[t])throw new ');
  FPack.Add('Error("Tether Error: Both element and target must be defined");"undefined"!=typeof ');
  FPack.Add('e[t].jquery?e[t]=e[t][0]:"string"==typeof ');
  FPack.Add('e[t]&&(e[t]=document.querySelector(e[t]))}),d(this.element,this.getClass("element")),this.options.addTargetClasses!==!1&&d(this.target,this.getClass("target")),!this.options.attachment)throw ');
  FPack.Add('new ');
  FPack.Add('Error("Tether Error: You must provide an attachment");this.targetAttachment=R(this.options.targetAttachment),this.attachment=R(this.options.attachment),this.offset=V(this.options.offset),this.targetOffset=V(this.options.targetOffset),"undefined"!=typeof ');
  FPack.Add('this.scrollParents&&this.disable(),"scroll-handle"===this.targetModifier?this.scrollParents=[this.target]:this.scrollParents=r(this.target),this.options.enabled!==!1&&this.enable(o)}},{key:"getTargetBounds",value:function(){if("undefined"==typeof ');
  FPack.Add('this.targetModifier)return ');
  FPack.Add('a(this.target);if("visible"===this.targetModifier){if(this.target===document.body)return{top:pageYOffset,left:pageXOffset,height:innerHeight,width:innerWidth};var ');
  FPack.Add('t=a(this.target),e={height:t.height,width:t.width,top:t.top,left:t.left};return ');
  FPack.Add('e.height=Math.min(e.height,t.height-(pageYOffset-');
  FPack.Add('t.top)),e.height=Math.min(e.height,t.height-(t.top+t.height-');
  FPack.Add('(pageYOffset+innerHeight))),e.height=Math.min(innerHeight,e.height),e.height-');
  FPack.Add('=2,e.width=Math.min(e.width,t.width-(pageXOffset-');
  FPack.Add('t.left)),e.width=Math.min(e.width,t.width-(t.left+t.width-');
  FPack.Add('(pageXOffset+innerWidth))),e.width=Math.min(innerWidth,e.width),e.width-');
  FPack.Add('=2,e.top<pageYOffset&&(e.top=pageYOffset),e.left<pageXOffset&&(e.left=pageXOffset),e}if("scroll-handle"===this.targetModifier){var ');
  FPack.Add('t=void ');
  FPack.Add('0,o=this.target;o===document.body?(o=document.documentElement,t={left:pageXOffset,top:pageYOffset,height:innerHeight,width:innerWidth}):t=a(o);var ');
  FPack.Add('n=getComputedStyle(o),i=o.scrollWidth>o.clientWidth||[n.overflow,n.overflowX].indexOf("scroll")>=0||this.target!==document.body,r=0;i&&(r=15);var ');
  FPack.Add('s=t.height-parseFloat(n.borderTopWidth)-parseFloat(n.borderBottomWidth)-');
  FPack.Add('r,e={width:15,height:.975*s*(s/o.scrollHeight),left:t.left+t.width-');
  FPack.Add('parseFloat(n.borderLeftWidth)-15},f=0;408>s&&this.target===document.body&&(f=-');
  FPack.Add('11e-5*Math.pow(s,2)-');
  FPack.Add('.00727*s+22.58),this.target!==document.body&&(e.height=Math.max(e.height,24));var ');
  FPack.Add('l=this.target.scrollTop/(o.scrollHeight-s);return e.top=l*(s-e.height-');
  FPack.Add('f)+t.top+parseFloat(n.borderTopWidth),this.target===document.body&&(e.height=Math.max(e.height,24)),e}}},{key:"clearCache",value:function(){this._cache={}}},{key:"cache",value:function(t,e){return"undefined"==typeof ');
  FPack.Add('this._cache&&(this._cache={}),"undefined"==typeof ');
  FPack.Add('this._cache[t]&&(this._cache[t]=e.call(this)),this._cache[t]}},{key:"enable",value:function(){var ');
  FPack.Add('t=this,e=arguments.length<=0||void ');
  FPack.Add('0===arguments[0]?!0:arguments[0];this.options.addTargetClasses!==!1&&d(this.target,this.getClass("enabled")),d(this.element,this.getClass("enabled")),');
  FPack.Add('this.enabled=!0,this.scrollParents.forEach(function(e){e!==t.target.ownerDocument&&e.addEventListener("scroll",t.position)}),e&&this.position()}},{key:"disable",value:function(){var ');
  FPack.Add('t=this;u(this.target,this.getClass("enabled")),u(this.element,this.getClass("enabled")),this.enabled=!1,"undefined"!=typeof ');
  FPack.Add('this.scrollParents&&this.scrollParents.forEach(function(e){e.removeEventListener("scroll",t.position)})}},{key:"destroy",value:function(){var ');
  FPack.Add('t=this;this.disable(),L.forEach(function(e,o){e===t&&L.splice(o,1)}),0===L.length&&s()}},{key:"updateAttachClasses",value:function(t,e){var ');
  FPack.Add('o=this;t=t||this.attachment,e=e||this.targetAttachment;var ');
  FPack.Add('n=["left","top","bottom","right","middle","center"];"undefined"!=typeof ');
  FPack.Add('this._addAttachClasses&&this._addAttachClasses.length&&this._addAttachClasses.splice(0,this._addAttachClasses.length),"undefined"==typeof ');
  FPack.Add('this._addAttachClasses&&(this._addAttachClasses=[]);var ');
  FPack.Add('i=this._addAttachClasses;t.top&&i.push(this.getClass("element-attached")+"-"+t.top),t.left&&i.push(this.getClass("element-attached")+"-"+t.left),');
  FPack.Add('e.top&&i.push(this.getClass("target-attached")+"-"+e.top),e.left&&i.push(this.getClass("target-attached")+"-"+e.left);var ');
  FPack.Add('r=[];n.forEach(function(t){r.push(o.getClass("element-attached")+"-"+t),r.push(o.getClass("target-attached")+"-"+t)}),M(function(){"undefined"!=typeof ');
  FPack.Add('o._addAttachClasses&&(m(o.element,o._addAttachClasses,r),o.options.addTargetClasses!==!1&&m(o.target,o._addAttachClasses,r),delete ');
  FPack.Add('o._addAttachClasses)})}},{key:"position",value:function(){var ');
  FPack.Add('t=this,e=arguments.length<=0||void ');
  FPack.Add('0===arguments[0]?!0:arguments[0];if(this.enabled){this.clearCache();var ');
  FPack.Add('o=N(this.targetAttachment,this.attachment);this.updateAttachClasses(this.attachment,o);var ');
  FPack.Add('n=this.cache("element-bounds",function(){return ');
  FPack.Add('a(t.element)}),i=n.width,r=n.height;if(0===i&&0===r&&"undefined"!=typeof ');
  FPack.Add('this.lastSize){var s=this.lastSize;i=s.width,r=s.height}else ');
  FPack.Add('this.lastSize={width:i,height:r};var ');
  FPack.Add('h=this.cache("target-bounds",function(){return ');
  FPack.Add('t.getTargetBounds()}),u=h,d=C(U(this.attachment),{width:i,height:r}),p=C(U(o),u),c=C(this.offset,{width:i,height:r}),g=C(this.targetOffset,u);d=w(d,c),p=w(p,g);for(var ');
  FPack.Add('m=h.left+p.left-d.left,v=h.top+p.top-d.top,y=0;y<x.modules.length;++y){var ');
  FPack.Add('b=x.modules[y],O=b.position.call(this,{left:m,top:v,targetAttachment:o,targetPos:h,elementPos:n,offset:d,targetOffset:p,manualOffset:c,manualTargetOffset:g,scrollbarSize:S,attachment:this.attachment});if(O===!1)return!1;"undefined"!=typeof ');
  FPack.Add('O&&"object"==typeof O&&(v=O.top,m=O.left)}var ');
  FPack.Add('E={page:{top:v,left:m},viewport:{top:v-pageYOffset,bottom:pageYOffset-v-');
  FPack.Add('r+innerHeight,left:m-pageXOffset,right:pageXOffset-m-');
  FPack.Add('i+innerWidth}},A=this.target.ownerDocument,T=A.defaultView,S=void 0;return ');
  FPack.Add('A.body.scrollWidth>T.innerWidth&&(S=this.cache("scrollbar-size",l),E.viewport.bottom-');
  FPack.Add('=S.height),A.body.scrollHeight>T.innerHeight&&(S=this.cache("scrollbar-size",l),E.viewport.right-');
  FPack.Add('=S.width),(-1===["","static"].indexOf(A.body.style.position)||-');
  FPack.Add('1===["","static"].indexOf(A.body.parentElement.style.position))&&(E.page.bottom=A.body.scrollHeight-');
  FPack.Add('v-r,E.page.right=A.body.scrollWidth-m-i),"undefined"!=typeof ');
  FPack.Add('this.options.optimizations&&this.options.optimizations.moveElement!==!1&&"undefined"==typeof ');
  FPack.Add('this.targetModifier&&!function(){var ');
  FPack.Add('e=t.cache("target-offsetparent",function(){return ');
  FPack.Add('f(t.target)}),o=t.cache("target-offsetparent-bounds",function(){return ');
  FPack.Add('a(e)}),n=getComputedStyle(e),i=o,r={};if(["Top","Left","Bottom","Right"].forEach(function(t){r[t.toLowerCase()]=parseFloat(n["border"+t+"Width"])}),o.right=A.body.scrollWidth-');
  FPack.Add('o.left-i.width+r.right,o.bottom=A.body.scrollHeight-o.top-');
  FPack.Add('i.height+r.bottom,E.page.top>=o.top+r.top&&E.page.bottom>=o.bottom&&E.page.left>=o.left+r.left&&E.page.right>=o.right){var ');
  FPack.Add('s=e.scrollTop,l=e.scrollLeft;E.offset={top:E.page.top-o.top+s-');
  FPack.Add('r.top,left:E.page.left-o.left+l-');
  FPack.Add('r.left}}}(),this.move(E),this.history.unshift(E),this.history.length>3&&this.history.pop(),e&&_(),!0}}},{key:"move",value:function(t){var ');
  FPack.Add('e=this;if("undefined"!=typeof this.element.parentNode){var o={};for(var n in ');
  FPack.Add('t){o[n]={};for(var i in t[n]){for(var r=!1,s=0;s<this.history.length;++s){var ');
  FPack.Add('a=this.history[s];if("undefined"!=typeof ');
  FPack.Add('a[n]&&!y(a[n][i],t[n][i])){r=!0;break}}r||(o[n][i]=!0)}}var ');
  FPack.Add('l={top:"",left:"",right:"",bottom:""},u=function(t,o){var n="undefined"!=typeof ');
  FPack.Add('e.options.optimizations,i=n?e.options.optimizations.gpu:null;if(i!==!1){var ');
  FPack.Add('r=void 0,s=void 0;t.top?(l.top=0,r=o.top):(l.bottom=0,r=-');
  FPack.Add('o.bottom),t.left?(l.left=0,s=o.left):(l.right=0,s=-');
  FPack.Add('o.right),l[Y]="translateX("+Math.round(s)+"px) translateY("+Math.round(r)+"px)","msTransform"!==Y&&(l[Y]+=" translateZ(0)")}else ');
  FPack.Add('t.top?l.top=o.top+"px":l.bottom=o.bottom+"px",t.left?l.left=o.left+"px":l.right=o.right+"px"},d=!1;if((o.page.top||o.page.bottom)&&(o.page.left||o.page.right)');
  FPack.Add('?(l.position="absolute",u(o.page,t.page)):(o.viewport.top||o.viewport.bottom)&&(o.viewport.left||o.viewport.right)?(l.position="fixed",u(o.viewport,t.viewport)):"undefined"!=typeof ');
  FPack.Add('o.offset&&o.offset.top&&o.offset.left?!function(){l.position="absolute";var ');
  FPack.Add('n=e.cache("target-offsetparent",function(){return ');
  FPack.Add('f(e.target)});f(e.element)!==n&&M(function(){e.element.parentNode.removeChild(e.element),n.appendChild(e.element)}),u(o.offset,t.offset),d=!0}():(l.position="absolute",u({top:!0,left:!0},t.page)),!d){for(var ');
  FPack.Add('p=!0,c=this.element.parentNode;c&&1===c.nodeType&&"BODY"!==c.tagName;){if("static"!==getComputedStyle(c).position){p=!1;break}c=c.parentNode}p||');
  FPack.Add('(this.element.parentNode.removeChild(this.element),this.element.ownerDocument.body.appendChild(this.element))}var ');
  FPack.Add('g={},m=!1;for(var i in l){var ');
  FPack.Add('v=l[i],b=this.element.style[i];b!==v&&(m=!0,g[i]=v)}m&&M(function(){h(e.element.style,g)})}}}]),e}(k);q.modules=[],x.position=D;var ');
  FPack.Add('I=h(q,x),B=function(){function t(t,e){var o=[],n=!0,i=!1,r=void 0;try{for(var ');
  FPack.Add('s,a=t[Symbol.iterator]();!(n=(s=a.next()).done)&&(o.push(s.value),!e||o.length!==e);n=!0);}catch(f){i=!0,r=f}finally{try{!n&&a["return"]&&a["return"]()}finally{if(i)throw ');
  FPack.Add('r}}return o}return function(e,o){if(Array.isArray(e))return ');
  FPack.Add('e;if(Symbol.iterator in Object(e))return t(e,o);throw new ');
  FPack.Add('TypeError("Invalid attempt to destructure non-iterable instance")}}(),j=x.Utils,a=j.getBounds,h=j.extend,m=j.updateClasses,M=j.defer,$=["left","top","right","bottom"];x.modules.push({position:function(t){var ');
  FPack.Add('e=this,o=t.top,n=t.left,i=t.targetAttachment;if(!this.options.constraints)return!0;var ');
  FPack.Add('r=this.cache("element-bounds",function(){return ');
  FPack.Add('a(e.element)}),s=r.height,f=r.width;if(0===f&&0===s&&"undefined"!=typeof ');
  FPack.Add('this.lastSize){var l=this.lastSize;f=l.width,s=l.height}var ');
  FPack.Add('u=this.cache("target-bounds",function(){return ');
  FPack.Add('e.getTargetBounds()}),d=u.height,p=u.width,c=[this.getClass("pinned"),this.getClass("out-of-bounds")];this.options.constraints.forEach(function(t){var ');
  FPack.Add('e=t.outOfBoundsClass,o=t.pinnedClass;e&&c.push(e),o&&c.push(o)}),c.forEach(function(t){["left","top","right","bottom"].forEach(function(e){c.push(t+"-"+e)})});var ');
  FPack.Add('g=[],v=h({},i),y=h({},this.attachment);return ');
  FPack.Add('this.options.constraints.forEach(function(t){var ');
  FPack.Add('r=t.to,a=t.attachment,l=t.pin;"undefined"==typeof a&&(a="");var h=void 0,u=void ');
  FPack.Add('0;if(a.indexOf(" ")>=0){var c=a.split(" "),m=B(c,2);u=m[0],h=m[1]}else ');
  FPack.Add('h=u=a;var ');
  FPack.Add('b=O(e,r);("target"===u||"both"===u)&&(o<b[1]&&"top"===v.top&&(o+=d,v.top="bottom"),o+s>b[3]&&"bottom"===v.top&&(o-');
  FPack.Add('=d,v.top="top")),"together"===u&&("top"===v.top&&("bottom"===y.top&&o<b[1]?(o+=d,v.top="bottom",o+=s,y.top="top"):"top"===y.top&&o+s>b[3]&&o-');
  FPack.Add('(s-d)>=b[1]&&(o-=s-');
  FPack.Add('d,v.top="bottom",y.top="bottom")),"bottom"===v.top&&("top"===y.top&&o+s>b[3]?(o-');
  FPack.Add('=d,v.top="top",o-=s,y.top="bottom"):"bottom"===y.top&&o<b[1]&&o+(2*s-');
  FPack.Add('d)<=b[3]&&(o+=s-');
  FPack.Add('d,v.top="top",y.top="top")),"middle"===v.top&&(o+s>b[3]&&"top"===y.top?(o-');
  FPack.Add('=s,y.top="bottom"):o<b[1]&&"bottom"===y.top&&(o+=s,y.top="top"))),("target"===h||"both"===h)&&(n<b[0]&&"left"===v.left&&(n+=p,v.left="right"),n+f>b[2]&&"right"===v.left&&(n-');
  FPack.Add('=p,v.left="left")),"together"===h&&(n<b[0]&&"left"===v.left?"right"===y.left?(n+=p,v.left="right",n+=f,y.left="left"):"left"===y.left&&(n+=p,v.left="right",n-');
  FPack.Add('=f,y.left="right"):n+f>b[2]&&"right"===v.left?"left"===y.left?(n-');
  FPack.Add('=p,v.left="left",n-=f,y.left="right"):"right"===y.left&&(n-');
  FPack.Add('=p,v.left="left",n+=f,y.left="left"):"center"===v.left&&(n+f>b[2]&&"left"===y.left?(n-');
  FPack.Add('=f,y.left="right"):n<b[0]&&"right"===y.left&&(n+=f,y.left="left"))),("element"===u||"both"===u)&&(o<b[1]&&"bottom"===y.top&&(o+=s,y.top="top"),o+s>b[3]&&"top"===y.top&&(o-');
  FPack.Add('=s,y.top="bottom")),("element"===h||"both"===h)&&(n<b[0]&&("right"===y.left?(n+=f,y.left="left"):"center"===y.left&&(n+=f/2,y.left="left")),n+f>b[2]&&("left"===y.left?(n-');
  FPack.Add('=f,y.left="right"):"center"===y.left&&(n-');
  FPack.Add('=f/2,y.left="right"))),"string"==typeof l?l=l.split(",").map(function(t){return ');
  FPack.Add('t.trim()}):l===!0&&(l=["top","left","right","bottom"]),l=l||[];var ');
  FPack.Add('w=[],C=[];o<b[1]&&(l.indexOf("top")>=0?(o=b[1],w.push("top")):C.push("top")),o+s>b[3]&&(l.indexOf("bottom")>=0?(o=b[3]-');
  FPack.Add('s,w.push("bottom")):C.push("bottom")),n<b[0]&&(l.indexOf("left")>=0?(n=b[0],w.push("left")):C.push("left")),n+f>b[2]&&(l.indexOf("right")>=0?(n=b[2]-');
  FPack.Add('f,w.push("right")):C.push("right")),w.length&&!function(){var t=void ');
  FPack.Add('0;t="undefined"!=typeof ');
  FPack.Add('e.options.pinnedClass?e.options.pinnedClass:e.getClass("pinned"),g.push(t),w.forEach(function(e){g.push(t+"-"+e)})}(),C.length&&!function(){var ');
  FPack.Add('t=void 0;t="undefined"!=typeof ');
  FPack.Add('e.options.outOfBoundsClass?e.options.outOfBoundsClass:e.getClass("out-of-bounds"),g.push(t),C.forEach(function(e){g.push(t+"-"+e)})}(),(w.indexOf("left")>=0||');
  FPack.Add('w.indexOf("right")>=0)&&(y.left=v.left=!1),(w.indexOf("top")>=0||w.indexOf("bottom")>=0)&&(y.top=v.top=!1),(v.top!==i.top||v.left!==i.left||y.top!==e.attachment.');
  FPack.Add('top||y.left!==e.attachment.left)&&(e.updateAttachClasses(y,v),e.trigger("update",{attachment:y,targetAttachment:v}))}),M(function(){e.options.addTargetClasses!==!1&&m(e.target,g,c),m(e.element,g,c)}),{top:o,left:n}}});var ');
  FPack.Add('j=x.Utils,a=j.getBounds,m=j.updateClasses,M=j.defer;x.modules.push({position:function(t){var ');
  FPack.Add('e=this,o=t.top,n=t.left,i=this.cache("element-bounds",function(){return ');
  FPack.Add('a(e.element)}),r=i.height,s=i.width,f=this.getTargetBounds(),l=o+r,h=n+s,u=[];o<=f.bottom&&l>=f.top&&["left","right"].forEach(function(t){var ');
  FPack.Add('e=f[t];(e===n||e===h)&&u.push(t)}),n<=f.right&&h>=f.left&&["top","bottom"].forEach(function(t){var ');
  FPack.Add('e=f[t];(e===o||e===l)&&u.push(t)});var ');
  FPack.Add('d=[],p=[],c=["left","top","right","bottom"];return ');
  FPack.Add('d.push(this.getClass("abutted")),c.forEach(function(t){d.push(e.getClass("abutted")+"-"+t)}),u.length&&p.push(this.getClass("abutted")),u.forEach(function(t)');
  FPack.Add('{p.push(e.getClass("abutted")+"-"+t)}),M(function(){e.options.addTargetClasses!==!1&&m(e.target,p,d),m(e.element,p,d)}),!0}});var ');
  FPack.Add('B=function(){function t(t,e){var o=[],n=!0,i=!1,r=void 0;try{for(var ');
  FPack.Add('s,a=t[Symbol.iterator]();!(n=(s=a.next()).done)&&(o.push(s.value),!e||o.length!==e);n=!0);}catch(f){i=!0,r=f}finally{try{!n&&a["return"]&&a["return"]()}finally{if(i)throw ');
  FPack.Add('r}}return o}return function(e,o){if(Array.isArray(e))return ');
  FPack.Add('e;if(Symbol.iterator in Object(e))return t(e,o);throw new ');
  FPack.Add('TypeError("Invalid attempt to destructure non-iterable instance")}}();return ');
  FPack.Add('x.modules.push({position:function(t){var ');
  FPack.Add('e=t.top,o=t.left;if(this.options.shift){var ');
  FPack.Add('n=this.options.shift;"function"==typeof ');
  FPack.Add('this.options.shift&&(n=this.options.shift.call(this,{top:e,left:o}));var i=void ');
  FPack.Add('0,r=void 0;if("string"==typeof n){n=n.split(" "),n[1]=n[1]||n[0];var ');
  FPack.Add('s=n,a=B(s,2);i=a[0],r=a[1],i=parseFloat(i,10),r=parseFloat(r,10)}else ');
  FPack.Add('i=n.top,r=n.left;return e+=i,o+=r,{top:e,left:o}}}}),I});');
  FPack.Add('</script>'+#13);
end;

function TTetherminJS.PackJS: String;
begin
  TetherminJS_1;
  Result := FPack.Text;
end;

end.
