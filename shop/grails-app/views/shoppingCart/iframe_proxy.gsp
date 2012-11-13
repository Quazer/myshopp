
<!DOCTYPE html>
<!-- saved from url=(0046)http://www.aliexpress.com/bp_iframe_proxy.html -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="UTF-8">
	<title>bp postMessage</title>
	<script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>
	<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'ae(1).js')}"></script>
	<script type="text/javascript">
		window.onload = function(){
			var shoppingCartServer = 'http://shoppingcart.aliexpress.com';
			if(location.port !== ''){
				shoppingCartServer = shoppingCartServer + ':' +location.port;
			}
			if(window.localStorage && localStorage['showBP'] !== undefined){
				var showBP = localStorage['showBP'];
				var iframeEle = document.createElement('iframe');
				iframeEle.setAttribute('src', shoppingCartServer + '/transactionbp.html' + '#' + showBP);
				//YUD.setStyle(iframeEle, 'display', 'none');
				if (document.body) {
					document.body.appendChild(iframeEle);
				}
			}
		}
	</script>
</head>
<body></body><span id="skype_highlighting_settings" display="none" autoextractnumbers="1"></span><object id="skype_plugin_object" location.href="http://www.aliexpress.com/bp_iframe_proxy.html" location.hostname="www.aliexpress.com" style="position: absolute; visibility: hidden; left: -100px; top: -100px;" width="0" height="0" type="application/x-vnd.skype.click2call.chrome.5.7.0"></object></html>