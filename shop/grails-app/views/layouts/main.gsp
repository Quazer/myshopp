<!doctype html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>
		  ${message(code: 'default.website.name')}
        </title>
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
	
	    Pattaya.Global.Page.Header.init("//${message(code: 'default.shop.url')}");
	    Pattaya.Cart.MiniCart.init({ "cartRootUrl": "https://${message(code: 'default.shop.url')}", "portalRootUrl": "//${message(code: 'default.shop.url')}", "passportRootUrl": "http://${message(code: 'default.shop.url')}" });
	</script>


	<!--header:begin-->
	<!--container:begin-->
	<div class="container">
		<div class="wrapper">

			<!--categoryPage:begin-->
			<g:render template="/layouts/main_navigation"/>

			
			<div class="subpage_wrap clearfix">
				<!--left side:begin-->
				<div class="cate_sidebar">
				    <%--
					<!-- Left menu: begin -->
					<g:render template="/layouts/main_left_menu"/>
					<!-- Left menu: end -->
					
					 --%>
					 
					<script type="text/javascript">
            			Pattaya.Mall.Search.init({ radix: '.' });
        			</script>

					<!--best_seller:being-->
					<g:render template="/layouts/main_best_seller"/>
					<!--best_seller:end-->

				</div>
				<!--side:end-->
				
				<!--mainbox:begin-->
				<div class="cate_mainbox">
					<g:layoutBody/>
				</div>
				
				<div class="clear"></div>
				<!--mainbox:end-->
				<%--
				<g:render template="/layouts/main_last_viewed"/>
				
				<g:render template="/layouts/main_recommend"/>
				 --%>

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