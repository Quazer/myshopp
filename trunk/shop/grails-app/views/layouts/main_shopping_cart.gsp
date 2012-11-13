<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
        <link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
        
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'beacon_ws_async-v_f3043219f4d9_0.js')}"></script>
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'ae.js')}"></script>
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'slidebox_gofirst-MODERN_BROWSER-v_1ec13981fed88_0.js')}"></script>
            
        <g:layoutHead/>
        <r:layoutResources />
    </head>
    <body>
    <script type="text/javascript">
        var dmtrack_c = '{-}';
        var dmtrack_pageid = '319c3417cdcc74031352460618';
        (function() {
            var beacon = document.createElement('script');
            beacon.type = 'text/javascript';
            beacon.async = true;
            beacon.src = 'http://style.aliunicorn.com/run/pool/monitor/beacon_ws_async|v_f3043219f4d9_0.js';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(beacon, s);
        })();
        ;
    </script>

    <script>
/* <![CDATA[ */
    var PAGE_TIMING = {
        pageType: 'order'
    };
    PAGE_TIMING.startRenderImage = new Image();
    PAGE_TIMING.startRenderImage.onload = function() {
        PAGE_TIMING.startRender = new Date().getTime()
    };
    PAGE_TIMING.startRenderImage.src = '${resource(dir: 'images/shoppingcart', file: 'start-render.png')}';
/* ]]> */
</script>
<div id="header">
    <div class="clearfix" id="header-inner">
        <div class="ali-logo">
            <a href="http://www.aliexpress.com/">
                <img border="0" src="${resource(dir: 'images/shoppingcart', file: 'logo_stable_buyer.gif')}" alt="My Shop">
            </a>
        </div>
        <ul class="help-secure">
            <li class="order-help">Need help? <a target="_blank" href="http://help.aliexpress.com/categories_Placing_orders.html">Click here</a></li>
            <li class="secure-logo">
                <a target="_blank" href="https://seal.verisign.com/splash?form_file=fdf/splash.fdf&dn=ESCROW.ALIBABA.COM&lang=en">
                    <img src="${resource(dir: 'images/shoppingcart', file: 'icon-other.jpg')}">
                </a>
                <span>You are securely signed in</span>
            </li>
        </ul>
    </div>
</div>

<div class="process-min p4 w990">
     <ul>
         <li><span>Review product details</span></li>
         <li class="current"><span class="con">Confirm order</span></li>
         <li class="over"><span class="con">Check out</span></li>
         <li class="last"><span>Wait for delivery</span></li>
     </ul>
</div>
       <div id="page"> 
        <g:javascript library="application"/>
        <r:layoutResources />
        <g:layoutBody/>
       </div>
    </body>
</html>