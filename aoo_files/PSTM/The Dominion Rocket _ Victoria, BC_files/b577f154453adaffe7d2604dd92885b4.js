<br />
<b>Warning</b>:  ini_set() has been disabled for security reasons in <b>/home/dominionrocket/public_html/wp-content/plugins/wp-rocket/min/config.php</b> on line <b>188</b><br />
/*!
 * jQuery UI Effects Drop 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/drop-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.drop=function(b,c){var d,e=a(this),f=["position","top","bottom","left","right","opacity","height","width"],g=a.effects.setMode(e,b.mode||"hide"),h="show"===g,i=b.direction||"left",j="up"===i||"down"===i?"top":"left",k="up"===i||"left"===i?"pos":"neg",l={opacity:h?1:0};a.effects.save(e,f),e.show(),a.effects.createWrapper(e),d=b.distance||e["top"===j?"outerHeight":"outerWidth"](!0)/2,h&&e.css("opacity",0).css(j,"pos"===k?-d:d),l[j]=(h?"pos"===k?"+=":"-=":"pos"===k?"-=":"+=")+d,e.animate(l,{queue:!1,duration:b.duration,easing:b.easing,complete:function(){"hide"===g&&e.hide(),a.effects.restore(e,f),a.effects.removeWrapper(e),c()}})}});;
/*!
 * jQuery UI Effects Explode 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/explode-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.explode=function(b,c){function d(){t.push(this),t.length===l*m&&e()}function e(){n.css({visibility:"visible"}),a(t).remove(),p||n.hide(),c()}var f,g,h,i,j,k,l=b.pieces?Math.round(Math.sqrt(b.pieces)):3,m=l,n=a(this),o=a.effects.setMode(n,b.mode||"hide"),p="show"===o,q=n.show().css("visibility","hidden").offset(),r=Math.ceil(n.outerWidth()/m),s=Math.ceil(n.outerHeight()/l),t=[];for(f=0;l>f;f++)for(i=q.top+f*s,k=f-(l-1)/2,g=0;m>g;g++)h=q.left+g*r,j=g-(m-1)/2,n.clone().appendTo("body").wrap("<div></div>").css({position:"absolute",visibility:"visible",left:-g*r,top:-f*s}).parent().addClass("ui-effects-explode").css({position:"absolute",overflow:"hidden",width:r,height:s,left:h+(p?j*r:0),top:i+(p?k*s:0),opacity:p?0:1}).animate({left:h+(p?0:j*r),top:i+(p?0:k*s),opacity:p?1:0},b.duration||500,b.easing,d)}});;
/*!
 * jQuery UI Effects Fold 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/fold-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.fold=function(b,c){var d,e,f=a(this),g=["position","top","bottom","left","right","height","width"],h=a.effects.setMode(f,b.mode||"hide"),i="show"===h,j="hide"===h,k=b.size||15,l=/([0-9]+)%/.exec(k),m=!!b.horizFirst,n=i!==m,o=n?["width","height"]:["height","width"],p=b.duration/2,q={},r={};a.effects.save(f,g),f.show(),d=a.effects.createWrapper(f).css({overflow:"hidden"}),e=n?[d.width(),d.height()]:[d.height(),d.width()],l&&(k=parseInt(l[1],10)/100*e[j?0:1]),i&&d.css(m?{height:0,width:k}:{height:k,width:0}),q[o[0]]=i?e[0]:k,r[o[1]]=i?e[1]:0,d.animate(q,p,b.easing).animate(r,p,b.easing,function(){j&&f.hide(),a.effects.restore(f,g),a.effects.removeWrapper(f),c()})}});;
/*!
 * jQuery UI Effects Highlight 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/highlight-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.highlight=function(b,c){var d=a(this),e=["backgroundImage","backgroundColor","opacity"],f=a.effects.setMode(d,b.mode||"show"),g={backgroundColor:d.css("backgroundColor")};"hide"===f&&(g.opacity=0),a.effects.save(d,e),d.show().css({backg