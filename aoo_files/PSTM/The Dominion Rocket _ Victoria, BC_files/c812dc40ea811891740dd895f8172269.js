<br />
<b>Warning</b>:  ini_set() has been disabled for security reasons in <b>/home/dominionrocket/public_html/wp-content/plugins/wp-rocket/min/config.php</b> on line <b>188</b><br />
/*!
 * jQuery UI Effects Pulsate 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/pulsate-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.pulsate=function(b,c){var d,e=a(this),f=a.effects.setMode(e,b.mode||"show"),g="show"===f,h="hide"===f,i=g||"hide"===f,j=2*(b.times||5)+(i?1:0),k=b.duration/j,l=0,m=e.queue(),n=m.length;for((g||!e.is(":visible"))&&(e.css("opacity",0).show(),l=1),d=1;j>d;d++)e.animate({opacity:l},k,b.easing),l=1-l;e.animate({opacity:l},k,b.easing),e.queue(function(){h&&e.hide(),c()}),n>1&&m.splice.apply(m,[1,0].concat(m.splice(n,j+1))),e.dequeue()}});;
/*!
 * jQuery UI Effects Size 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/size-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.size=function(b,c){var d,e,f,g=a(this),h=["position","top","bottom","left","right","width","height","overflow","opacity"],i=["position","top","bottom","left","right","overflow","opacity"],j=["width","height","overflow"],k=["fontSize"],l=["borderTopWidth","borderBottomWidth","paddingTop","paddingBottom"],m=["borderLeftWidth","borderRightWidth","paddingLeft","paddingRight"],n=a.effects.setMode(g,b.mode||"effect"),o=b.restore||"effect"!==n,p=b.scale||"both",q=b.origin||["middle","center"],r=g.css("position"),s=o?h:i,t={height:0,width:0,outerHeight:0,outerWidth:0};"show"===n&&g.show(),d={height:g.height(),width:g.width(),outerHeight:g.outerHeight(),outerWidth:g.outerWidth()},"toggle"===b.mode&&"show"===n?(g.from=b.to||t,g.to=b.from||d):(g.from=b.from||("show"===n?t:d),g.to=b.to||("hide"===n?t:d)),f={from:{y:g.from.height/d.height,x:g.from.width/d.width},to:{y:g.to.height/d.height,x:g.to.width/d.width}},("box"===p||"both"===p)&&(f.from.y!==f.to.y&&(s=s.concat(l),g.from=a.effects.setTransition(g,l,f.from.y,g.from),g.to=a.effects.setTransition(g,l,f.to.y,g.to)),f.from.x!==f.to.x&&(s=s.concat(m),g.from=a.effects.setTransition(g,m,f.from.x,g.from),g.to=a.effects.setTransition(g,m,f.to.x,g.to))),("content"===p||"both"===p)&&f.from.y!==f.to.y&&(s=s.concat(k).concat(j),g.from=a.effects.setTransition(g,k,f.from.y,g.from),g.to=a.effects.setTransition(g,k,f.to.y,g.to)),a.effects.save(g,s),g.show(),a.effects.createWrapper(g),g.css("overflow","hidden").css(g.from),q&&(e=a.effects.getBaseline(q,d),g.from.top=(d.outerHeight-g.outerHeight())*e.y,g.from.left=(d.outerWidth-g.outerWidth())*e.x,g.to.top=(d.outerHeight-g.to.outerHeight)*e.y,g.to.left=(d.outerWidth-g.to.outerWidth)*e.x),g.css(g.from),("content"===p||"both"===p)&&(l=l.concat(["marginTop","marginBottom"]).concat(k),m=m.concat(["marginLeft","marginRight"]),j=h.concat(l).concat(m),g.find("*[width]").each(function(){var c=a(this),d={height:c.height(),width:c.width(),outerHeight:c.outerHeight(),outerWidth:c.outerWidth()};o&&a.effects.save(c,j),c.from={height:d.height*f.from.y,width:d.width*f.from.x,outerHeight:d.outerHeight*f.from.y,outerWidth:d.outerWidth*f.from.x},c.to={height:d.height*f.to.y,width:d.width*f.to.x,outerHeight:d.height*f.to.y,outerWidth:d.width*f.to.x},f.from.y!==f.to.y&&(c.from=a.effects.setTransition(c,l,f.from.y,c.from),c.to=a.effects.setTransition(c,l,f.to.y,c.to)),f.from.x!==f.to.x&&(c.from=a.effects.setTransition(c,m,f.from.x,c.from),c.to=a.effects.setTransition(c,m,f.to.x,c.to)),c.css(c.from),c.animate(c.to,b.duration,b.easing,function(){o&&a.effects.restore(c,j)})})),g.animate(g.to,{queue:!1,duration:b.duration,easing:b.easing,complete:function(){0===g.to.opacity&&g.css("opacity",g.from.opacity),"hide"===n&&g.hide(),a.effects.restore(g,s),o||("static"===r?g.css({position:"relative",top:g.to.top,left:g.to.left}):a.each(["top","left"],function(a,b){g.css(b,function(b,c){var d=parseInt(c,10),e=a?g.to.left:g.to.top;return"auto"===c?e+"px":d+e+"px"})})),a.effects.removeWrapper(g),c()}})}});;
/*!
 * jQuery UI Effects Scale 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/scale-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect","./effect-size"],a):a(jQuery)}(function(a){return a.effects.effect.scale=function(b,c){var d=a(this),e=a.extend(!0,{},b),f=a.effects.setMode(d,b.mode||"effect"),g=parseInt(b.percent,10)||(0===parseInt(b.percent,10)?0:"hide"===f?0:100),h=b.direction||"both",i=b.origin,j={height:d.height(),width:d.width(),outerHeight:d.outerHeight(),outerWidth:d.outerWidth()},k={y:"horizontal"!==h?g/100:1,x:"vertical"!==h?g/100:1};e.effect="size",e.queue=!1,e.complete=c,"effect"!==f&&(e.origin=i||["middle","center"],e.restore=!0),e.from=b.from||("show"===f?{height:0,width:0,outerHeight:0,outerWidth:0}:j),e.to={height:j.height*k.y,width:j.width*k.x,outerHeight:j.outerHeight*k.y,outerWidth:j.outerWidth*k.x},e.fade&&("show"===f&&(e.from.opacity=0,e.to.opacity=1),"hide"===f&&(e.from.opacity=1,e.to.opacity=0)),d.effect(e)}});;
/*!
 * jQuery UI Effects Shake 1.11.4
 * http://jqueryui.com
 *
 * Copyright jQuery Foundation and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 *
 * http://api.jqueryui.com/shake-effect/
 */
!function(a){"function"==typeof define&&define.amd?define(["jquery","./effect"],a):a(jQuery)}(function(a){return a.effects.effect.shake=function(b,c){var d,e=a(this),f=["position","top","bottom","left","right","height","width"],g=a.effects.setMode(e,b.mode||"effect"),h=b.direction||"left",i=b.distance||20,j=b.times||3,k=2*j+1,l=Math.round(b.duration/k),m="up"===h||"down"===h?"top":"left",n="up"===h||"left"===h,o={},p={},q={},r=e.queue(),s=r.length;for(a.effects.save(e,f),e.show(),a.effects.createWrapper(e),o[m]=(n?"-=":"+=")+i,p[m]=(n?"+=":"-=")+2*i,q[m]=(n?"-=":"+=")+2*i,e.animate(o,l,b.easing),d=1;j>d;d++)e.animate(p,l,b.easing).animate(q,l,b.easing);e.animate(p,l,b.easing).a