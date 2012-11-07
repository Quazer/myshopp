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
        <%--
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
        <link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
        --%>

        <link charset="utf-8" rel="stylesheet" type="text/css"
            href="${resource(dir: 'js', file: 'saved_resource')}">
        <link charset="utf-8" rel="stylesheet" type="text/css"
            href="${resource(dir: 'js', file: 'content.axd')}">
        
        <script type="text/javascript" async=""
            src="${resource(dir: 'js', file: 'ga.js')}"></script>
        <script chartset="utf-8" type="text/javascript"
            src="${resource(dir: 'js', file: 'saved_resource2')}"></script>
        <script chartset="utf-8" type="text/javascript"
            src="${resource(dir: 'js', file: 'content2.axd')}"></script>
            
        
         <link charset="utf-8" rel="stylesheet" type="text/css" href="${resource(dir: 'css', file: 'dialog.en.min.css')}">
         <script chartset="utf-8" type="text/javascript" src="${resource(dir: 'js', file: 'content.axd')}?js=pattaya/mall/mall.min.js,pattaya/mall/affiliate.min.js&amp;v=2.10.0&amp;l=en"></script>
        <script chartset="utf-8" type="text/javascript" src="${resource(dir: 'js', file: 'jquery_v2.10.0.js')}"></script>
        
    <style type="text/css">
        .tab_content > .tab_panel, .tab_content > div
        {
            display: none;
        }
        .tab_content > div.active
        {
            display: block;
        }
        .pinfobox
        {
            margin-top: 0px;
        }
    </style>
    
        <g:layoutHead/>
        <r:layoutResources />
    </head>
    <body>
    
    <!-- TopBar -->
    <g:render template="/layouts/main_top_menu"/>

    <!--header-->
    <g:render template="/layouts/main_header_menu"/>
    
    <!-- edit here -->
    <script type="text/javascript">
        Pattaya.Global.Config.debug = false;
        Pattaya.Global.Page.Config.set({"URL_SEARCH":"http://dx.com/s/", "DX_GLOBAL_COOKIES":{"domain":".dx.com", "key":"DXGlobalization"}, "URL_OFFERS":"/CommonContent/GetOffersProducts" });
        Pattaya.BFD.set({"skusInfoRootUrl": "//dx.com", "BFD_ITEM_INFO":{"client": "Ctest_88"}, "PREngine": "bi"});
    
        Pattaya.Global.Page.Header.init("//dx.com");
        Pattaya.Cart.MiniCart.init({ "cartRootUrl": "https://cart.dx.com", "portalRootUrl": "//dx.com", "passportRootUrl": "http://passport.dx.com/" });
    </script>


    <!--header:begin-->
    <!--container:begin-->
    <div class="container">
        <div class="wrapper">

            <!--categoryPage:begin-->
            <g:render template="/layouts/main_navigation"/>

            
            <g:layoutBody/>
               

                <script type="text/javascript">
                    var vp = { url: '/CommonContent/ViewHistory', limit: 6, titleSize: 0, chvUrl: '/CommonContent/ClearViewHistory', cname: 'ProductViewHistory' },
                        rp = { url: '/bi/BIRecommendedProductsByFoot', titleSize: 35 };
                    Pattaya.Mall.getVRPros({ vp: vp, rp: rp });
                </script>
            </div>
            <!--categoryPage:end-->


            <!-- customer survey -->
            
            <!-- 
            <a class="customer_survey"
                href="https://www.surveymonkey.com/s/RMJGK5L" target="_blank">customer
                survey</a>
             --> 
                
            <!-- back to top -->
            <a id="backToTop" class="back_to_top hidden"
                href="javascript:void(0);" style="display: none;">back to top</a>
    </div>
    <!--container:end-->
    
    <g:render template="/layouts/main_footer"/>




    <script type="text/javascript"
        src="${resource(dir: 'js', file: 'conversion.js')}">
    </script>
    <img height="1" width="1" border="0"
        src="${resource(dir: 'js', file: 'saved_resource2')}">
    
        
        <g:javascript library="application"/>
        <r:layoutResources />
    </body>
</html>