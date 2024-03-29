<%@ page import="com.nghia.shop.CommonUtils" %>
<html xmlns:og="http://ogp.me/ns#" style="height: 100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>
	${message(code: 'default.shop.name')}
</title>
<meta name="keywords" content="">
<meta name="description" content="">

<meta property="og:url" content="">
<meta property="og:title" content="">
<meta property="og:type" content="product">
<meta property="og:image" content="">
<meta property="og:site_name" content="">

<link rel="shortcut icon" type="image/x-icon"
	href="${resource(dir: 'images', file: 'myshop.ico')}">
<%--
	<link rel="search" type="application/opensearchdescription+xml" href="" title="">
	 --%>

<script type="text/javascript" async=""
	src="${resource(dir: 'js/index', file: 'v_1044d484401d_0.js')}"></script>
<script type="text/javascript" async=""
	src="${resource(dir: 'js/index', file: 'dc.js')}"></script>
<script type="text/javascript" async=""
	src="${resource(dir: 'js/index', file: 'beacon_async-v_1044d484401d_0.js')}"></script>
<script>
	try {
		document.domain = "${message(code: 'default.website.domain')}";
	} catch (E) {
	}
</script>

<link
	href="${resource(dir: 'css/product', file: 'header-auto-width-MODERN_BROWSER-v_1464b531d60972_0.css')}"
	rel="stylesheet" type="text/css" media="all">

<%--
<script id="yui__dyn_2" type="text/javascript" charset="utf-8" src="http://style.aliexpress.com/js/5v/run/pool/we_facebook_like.js"></script>
 --%>
</head>

<body style="position: relative; min-height: 100%; top: 0px;">
	<g:render template="css_javascript" />
	<input id="web-info:ws-reg-ori" type="hidden" value="detail">
	<input id="web-info:ws-is-auto-width" type="hidden" value="t">

	<input type="hidden" id="isSeller" value="false">
	<input type="hidden" id="userCountryCode" value="VN">
	<input type="hidden" id="isNewHeader" value="true">
	<!-- header -->
	<!-- top -->
	<div id="header" class="header">
		<g:render template="/category/header" />
	</div>
	<!-- end header -->





	<div id="page" class="categories-collapse clearfix">

		<g:render template="navigation" />

        <div id="base">
            <div class="grid-c2-s6f">
                <div class="col-main" itemscope=""
                    itemtype="http://schema.org/Product">
                    <div class="main-wrap">

                        <div class="info-box">
                            <div id="sc-coupon-wrap"></div>
                            <div class="inner clearfix">
                                <div id="inf">
            <g:render template="product_detail_header" model="[productInstance:productInstance]"/>

                                 </div>
                                <!--real-time-->
                                <div id="img" style="position:relative;z-index:120;">
									<div itemprop="image" class="image-item">
										<img
											style="margin-top: 0pt; display: block;"
											src="${CommonUtils.urlWithProductNameForImage(productInstance)}"
											height="159" width="250">
										<iframe src="http://style.alibaba.com/js/blank.html"
												style="display: none; visibility: hidden;"></iframe>
											<div class="viewport"
												style="display: none; visibility: hidden;">
												<div class="visible"
													style="border: 5px solid rgb(204, 204, 204); width: 320px; height: 240px; overflow: hidden;">
													<img
														src="${CommonUtils.urlWithProductNameForImage(productInstance)}"
														alt="">
												</div>
											</div>
											<span class="glass"
											style="display: none; visibility: hidden; width: 140px; height: 105px; background-color: rgb(255, 255, 255); border: 1px solid rgb(153, 153, 153); margin-left: -1px; margin-top: -1px; position: absolute; left: 0px; top: 0px; cursor: move; opacity: 0.5; background-position: initial initial; background-repeat: initial initial;"></span></a>
									</div>
                                    
                                    <div class="prod-id">Product ID: ${productInstance.sku }</div>
                                

                                </div>
                                <script type="text/javascript">
                                        if(!window.runParams) {
                                        window.runParams = {};
                                        }
                                        window.runParams.imageServer="http://i00.i.aliimg.com";
                                        window.runParams.imageDetailPageURL="http://www.aliexpress.com/item-img/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping/688800292.html";
                                                            window.runParams.imageURL=["http://i00.i.aliimg.com/wsphoto/v0/688800292/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping.jpg"];
                                        </script>
                                
                                <!--real-time-->
                                                    </div>
                                                    <script type="text/javascript">
                                                            if(!window.runParams) {
                                                            window.runParams = {};
                                                            }
                                                            window.runParams.transactionHistoryServer="http://www.aliexpress.com";
                                                            window.runParams.shopcartServer="http://shoppingcart.aliexpress.com";
                                                                                        window.runParams.serverUrl="http://www.aliexpress.com";
                                                            window.runParams.countryServer="http://www.aliexpress.com";
                                                            window.runParams.feedbackServer="http://feedback.aliexpress.com";
                                                            window.runParams.freightServer="http://freight.aliexpress.com";
                                                            window.runParams.feedbackMessageServer="http://message.aliexpress.com";
                                                            window.runParams.adminSeq="112687601";
                                                            window.runParams.companyId="102867765";
                                                            window.runParams.vipLevelServerUrl="http://www.aliexpress.com/help/ajax/get_wsbuyer_level_for_ajax.htm";
                                                            window.runParams.personalServer="http://hotproducts.aliexpress.com/wsproduct-personal-server.html";
                                                            window.runParams.interested="1";
                                                            window.runParams.coremetrics_customParams="688800292-_-new style clear soft tpu gel case for lg nexus 4 e960 free shipping-_-380230-_-phones &amp; telecommunications_mobile phone accessories &amp; parts_mobile phone bags &amp; cases";
                                                            window.runParams.usaeServer="http://us.ae.alibaba.com";
                                                            window.runParams.registerFrom="product_detail";
                                                            window.runParams.viewMyCoupon="http://escrow.alibaba.com";
                                
                                                    </script>
                                                </div>
                                
                                            </div>
                                        </div>
                                        <div class="col-extra" id="extra" style="display: block;">
                                            <!-- Seller's info/Notice -->
                                            <%--
                                            <g:render template="seller_info"/>
                                             --%>
                                             
                                            <div class="box contact contact-supplier" id="atm_plus"
                                                style="display: block; padding: 12px; cursor: auto;">
                                                <div class="caption">${message(code: 'default.buyer.notice')}</div>
                                                <div class="linkmen clearfix">
                                                    ${message(code: 'default.buyer.notice_detail')}
                                                </div>
                                                <div id="contact-ways" class="contact-ways clearfix">
                                                    <a class="contact-mail" href="javascript:void(0)"
                                                        title="${message(code: 'default.buyer.contactnow.tooltip')}">${message(code: 'default.buyer.contact.label')}</a>
                                                </div>
                                            </div>
                                        </div>
                                
                                    </div>
                                </div>		

		<script type="text/javascript"
			src="${resource(dir: 'js/product', file: 'detail_sku-MODERN_BROWSER-v_b96cd5de3605_da0eefee6f6e2.js')}"></script>
		<script>
		PAGE_TIMING.firstScreenImage = new Image();
		PAGE_TIMING.firstScreenImage.onload = function() {
			PAGE_TIMING.firstScreen = new Date().getTime();
		};
		PAGE_TIMING.firstScreenImage.src = 'http://i02.i.aliimg.com/wimg/monitor/first-screen.png';
	</script>


		<div id="magnet-see-full" style="display: block;">
			<a class="click-stat" href="#anchor-full-item-description"
				style="display: block; margin: 7px 0px;">See full item
				description</a>
		</div>

		<div id="magnet-recommend-product-list"></div>

		<div id="magnet-search-keyword-with"></div>

		<div id="magnet-marketing" class="clearfix" style="display: block;align:center">
			<a class="click-stat magnet-col-left"
				name="anchor-full-item-description"
				target="_blank"><img
				src="${resource(dir: 'images/product', file: 'banner-discount.jpg')}"></a>
			<a style="display:none"
				class="click-stat magnet-col-right" style="margin: 0px 0px 0px 10px"
				target="_blank"><img
				src="${resource(dir: 'images/product', file: 'banner_amazing.jpg')}"></a>
		</div>

		<div id="switch-main" style="margin-left: 240px;">
			<div class="col-sub" id="col-sub" style="display: block;">
				<%--
				<g:render template="last_product_viewed" />
 
				<g:render template="related_product" />
				 --%>
			</div>
			<div class="col-main" id="col-main">
				<div class="switch-bar" id="switch-bar" style="top: 925px;">
					<a href="javascript:void(0)" class="expend" id="switch-a"
						show="show" style="height: 1080px;"><span id="switch-span">Toggle
							right side bar</span></a>
				</div>
				<div class="switch-bar" id="switch-bar" style="top: 734px;">
					<a href="javascript:void(0)" class="expend" id="switch-a"
						show="show" style="height: 1080px;"><span id="switch-span">Toggle
							right side bar</span></a>
				</div>

				<div id="tabbed-pane">
					<div id="tabs" class="tabs">
						<ul>
							<li id="tab-pdt" class="tabbed-pane-tab  current"><a>Product Details</a></li>
						</ul>
						<div class="tab-border"></div>
						
					</div>

					<!-- product detail -->
					<g:render template="product_detail_center" />

				
					<div id="sap" class="tabbed-pane-panel clearfix"
						style="display: none;">

						<div class="actions clearfix">
							<div class="caption">Calculate your shipping cost by
								country/region and quantity.</div>
							<span class="desc">Quantity:</span>
							<div id="sap-pnl-quantity" class="pnl-quantity">
								<div id="sap-msg-quantity" class="msg-quantity"></div>
								<input type="text" id="sap-txt-quantity" class="txt-quantity"
									maxlength="5" value="1"> <img
									id="sap-bnt-quantity-calculate"
									src="./product detail_files/calculate.gif" alt="">
							</div>

							<span class="desc">Ship to:</span>
							<div id="sap-pnl-country" class="link-fake-selector">
								<div class="list-title">
									<span class="css_flag css_vn">Vietnam</span>
								</div>
							</div>
							<div id="sap-lbl-loader"></div>

							<g:render template="country_selection"/>
							
							<input style="position: absolute; left: -50000px;" maxlength="3">
							<iframe class="maskIframe"
								style="display: none; z-index: 998; top: 0px; left: 0px;"
								frameborder="0"></iframe>
						</div>

						<div id="sap-pnl-shipping"></div>


						<a id="sap-lnk-help-time"><img
							src="./product detail_files/help_icon.gif" alt="help"></a>
						<div class="tip-popup right" id="sap-pnl-help-time"
							style="display: none;">
							<div class="arrow"></div>
							<a class="close-button" href="javascript:void(0);"></a>
							<div class="tip-popup-content">
								<div>The Estimated Delivery Time is the amount of time it
									will take the Shipping Company to deliver your order after the
									Processing Time.</div>
							</div>
						</div>

					</div>

					<div id="payment" class="tabbed-pane-panel" style="display: none;">

						<img style="display: block; margin: 0 auto;" width="32px"
							height="32px" src="./product detail_files/loading-middle.gif"
							title="Loading" alt="loading">

					</div>



				</div>
				<%--
				<div class="relatied-products clearfix"
					id="keywords-selling-products">
					<h2>More Products from This Seller</h2>
					<div id="selling-keywords-slide"
						class="tabbed-pane-panel relatied-product-slide current">
						<div class="pnl-slide">
							<span class="sep-mask-left"></span><span class="sep-mask-right"></span>
							<div class="pnl-slide-container">
								<ul id="selling-keywords" class="clearfix"
									style="margin-left: 0px;">
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="685155008"
												href="http://www.aliexpress.com/store/product/S-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_685155008.html"
												target="_blank" class="lnk-thumb"><img
												alt="New arrive S line Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/New-arrive-S-line-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="685155008"
										title="New arrive S line Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/S-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_685155008.html"
										class="lnk-title">New arrive S line Soft TPU Gel Cas...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">98</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="685159967"
												href="http://www.aliexpress.com/store/product/Nexus-4-tpu-case-S-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free/503423_685159967.html"
												target="_blank" class="lnk-thumb"><img
												alt="Nexus 4 tpu case,S line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/Nexus-4-tpu-case-S-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free.jpg_120x120.jpg"></a>
										</div>
										<a prodid="685159967"
										title="Nexus 4 tpu case,S line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/Nexus-4-tpu-case-S-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free/503423_685159967.html"
										class="lnk-title">Nexus 4 tpu case,S line Soft TPU G...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">190</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="688028790"
												href="http://www.aliexpress.com/store/product/Nexus-4-case-Matte-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_688028790.html"
												target="_blank" class="lnk-thumb"><img
												alt="Nexus 4 case,Matte Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/Nexus-4-case-Matte-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="688028790"
										title="Nexus 4 case,Matte Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/Nexus-4-case-Matte-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_688028790.html"
										class="lnk-title">Nexus 4 case,Matte Soft TPU Gel Co...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">190</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="689477815"
												href="http://www.aliexpress.com/store/product/for-LG-E960-cover-New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960/503423_689477815.html"
												target="_blank" class="lnk-thumb"><img
												alt="for LG E960 cover,New Style Clear Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/for-LG-E960-cover-New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960.jpg_120x120.jpg"></a>
										</div>
										<a prodid="689477815"
										title="for LG E960 cover,New Style Clear Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/for-LG-E960-cover-New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960/503423_689477815.html"
										class="lnk-title">for LG E960 cover,New Style Clear ...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">105</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="677265349"
												href="http://www.aliexpress.com/store/product/Matte-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_677265349.html"
												target="_blank" class="lnk-thumb"><img
												alt="Matte Soft TPU Gel Case for LG Nexus 4 E960"
												src="./product detail_files/Matte-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960.jpg_120x120.jpg"></a>
										</div>
										<a prodid="677265349"
										title="Matte Soft TPU Gel Case for LG Nexus 4 E960"
										href="http://www.aliexpress.com/store/product/Matte-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_677265349.html"
										class="lnk-title">Matte Soft TPU Gel Case for LG Nex...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">485</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="688817146"
												href="http://www.aliexpress.com/store/product/Clear-White-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_688817146.html"
												target="_blank" class="lnk-thumb"><img
												alt="Clear White Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/Clear-White-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="688817146"
										title="Clear White Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/Clear-White-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_688817146.html"
										class="lnk-title">Clear White Soft TPU Gel Cover for...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">485</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="685140339"
												href="http://www.aliexpress.com/store/product/E960-cover-S-line-Soft-TPU-Gel-Casefor-LG-Nexus-4-E960-Free-Shipping/503423_685140339.html"
												target="_blank" class="lnk-thumb"><img
												alt="E960 cover,S line Soft TPU Gel Casefor LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/E960-cover-S-line-Soft-TPU-Gel-Casefor-LG-Nexus-4-E960-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="685140339"
										title="E960 cover,S line Soft TPU Gel Casefor LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/E960-cover-S-line-Soft-TPU-Gel-Casefor-LG-Nexus-4-E960-Free-Shipping/503423_685140339.html"
										class="lnk-title">E960 cover,S line Soft TPU Gel Cas...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">65</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="692626053"
												href="http://www.aliexpress.com/store/product/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_692626053.html"
												target="_blank" class="lnk-thumb"><img
												alt="New arrive X line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="692626053"
										title="New arrive X line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_692626053.html"
										class="lnk-title">New arrive X line Soft TPU Gel Cov...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">98</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="692601243"
												href="http://www.aliexpress.com/store/product/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_692601243.html"
												target="_blank" class="lnk-thumb"><img
												alt="New arrive X line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
												src="./product detail_files/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping.jpg_120x120(1).jpg"></a>
										</div>
										<a prodid="692601243"
										title="New arrive X line Soft TPU Gel Cover for LG Nexus 4 E960 Free Shipping"
										href="http://www.aliexpress.com/store/product/New-arrive-X-line-Soft-TPU-Gel-Cover-for-LG-Nexus-4-E960-Free-Shipping/503423_692601243.html"
										class="lnk-title">New arrive X line Soft TPU Gel Cov...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">190</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="374141151"
												href="http://www.aliexpress.com/store/product/for-iphone-4s-case-Bumpers-Hard-cover-case-For-iPhone-4-4S-Free-Shipping/503423_374141151.html"
												target="_blank" class="lnk-thumb"><img
												alt="for iphone 5 Bumper,Bumper Hard cover case For iPhone 5 with DHL Free Shipping"
												src="./product detail_files/for-iphone-5-Bumper-Bumper-Hard-cover-case-For-iPhone-5-with-DHL-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="374141151"
										title="for iphone 5 Bumper,Bumper Hard cover case For iPhone 5 with DHL Free Shipping"
										href="http://www.aliexpress.com/store/product/for-iphone-4s-case-Bumpers-Hard-cover-case-For-iPhone-4-4S-Free-Shipping/503423_374141151.html"
										class="lnk-title">for iphone 5 Bumper,Bumper Hard co...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">115</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="619645417"
												href="http://www.aliexpress.com/store/product/for-LG-P720-cover-S-line-Soft-TPU-Gel-case-for-LG-Optimus-3D-MAX-P720/503423_619645417.html"
												target="_blank" class="lnk-thumb"><img
												alt="S line Soft TPU Gel case for LG Optimus L9 P760 Free Shipping"
												src="./product detail_files/S-line-Soft-TPU-Gel-case-for-LG-Optimus-L9-P760-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="619645417"
										title="S line Soft TPU Gel case for LG Optimus L9 P760 Free Shipping"
										href="http://www.aliexpress.com/store/product/for-LG-P720-cover-S-line-Soft-TPU-Gel-case-for-LG-Optimus-3D-MAX-P720/503423_619645417.html"
										class="lnk-title">S line Soft TPU Gel case for LG Op...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">190</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="552422396"
												href="http://www.aliexpress.com/store/product/One-X-Screen-Protector-Clear-Screen-Guard-Film-Protector-For-HTC-One-X-Free-Shipping/503423_552422396.html"
												target="_blank" class="lnk-thumb"><img
												alt="One X Screen Protector,Clear Screen Guard Film Protector For HTC One X Free Shipping"
												src="./product detail_files/One-X-Screen-Protector-Clear-Screen-Guard-Film-Protector-For-HTC-One-X-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="552422396"
										title="One X Screen Protector,Clear Screen Guard Film Protector For HTC One X Free Shipping"
										href="http://www.aliexpress.com/store/product/One-X-Screen-Protector-Clear-Screen-Guard-Film-Protector-For-HTC-One-X-Free-Shipping/503423_552422396.html"
										class="lnk-title">One X Screen Protector,Clear Scree...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">19</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="547901644"
												href="http://www.aliexpress.com/store/product/S-line-soft-TPU-Gel-Skin-Case-For-Samsung-Galaxy-Ace-Plus-S7500-Free-Shipping/503423_547901644.html"
												target="_blank" class="lnk-thumb"><img
												alt="S line soft TPU Gel Skin Case For Samsung GALAXY SIII Mini i8190 Free Shipping"
												src="./product detail_files/S-line-soft-TPU-Gel-Skin-Case-For-Samsung-GALAXY-SIII-Mini-i8190-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="547901644"
										title="S line soft TPU Gel Skin Case For Samsung GALAXY SIII Mini i8190 Free Shipping"
										href="http://www.aliexpress.com/store/product/S-line-soft-TPU-Gel-Skin-Case-For-Samsung-Galaxy-Ace-Plus-S7500-Free-Shipping/503423_547901644.html"
										class="lnk-title">S line soft TPU Gel Skin Case For ...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">95</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="683323390"
												href="http://www.aliexpress.com/store/product/S-line-Soft-TPU-Gel-Case-for-Motorola-Droid-Razr-M-XT907-Free-Shipping/503423_683323390.html"
												target="_blank" class="lnk-thumb"><img
												alt="X line Soft TPU Gel Case for Motorola Droid Razr i XT907/XT890 Free Shipping"
												src="./product detail_files/X-line-Soft-TPU-Gel-Case-for-Motorola-Droid-Razr-i-XT907-XT890-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="683323390"
										title="X line Soft TPU Gel Case for Motorola Droid Razr i XT907/XT890 Free Shipping"
										href="http://www.aliexpress.com/store/product/S-line-Soft-TPU-Gel-Case-for-Motorola-Droid-Razr-M-XT907-Free-Shipping/503423_683323390.html"
										class="lnk-title">X line Soft TPU Gel Case for Motor...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">105</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="631125646"
												href="http://www.aliexpress.com/store/product/galaxy-note2-cases-Matte-Soft-TPU-Cover-for-Samsung-GALAXY-Note-2-N7100-Free-Shipping/503423_631125646.html"
												target="_blank" class="lnk-thumb"><img
												alt="for samsung cases,Matte Soft TPU Cover for Samsung GALAXY Note 2 N7100 Free Shipping"
												src="./product detail_files/for-samsung-cases-Matte-Soft-TPU-Cover-for-Samsung-GALAXY-Note-2-N7100-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="631125646"
										title="for samsung cases,Matte Soft TPU Cover for Samsung GALAXY Note 2 N7100 Free Shipping"
										href="http://www.aliexpress.com/store/product/galaxy-note2-cases-Matte-Soft-TPU-Cover-for-Samsung-GALAXY-Note-2-N7100-Free-Shipping/503423_631125646.html"
										class="lnk-title">for samsung cases,Matte Soft TPU C...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">130</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="610201445"
												href="http://www.aliexpress.com/store/product/Solid-Color-Soft-TPU-Back-Case-For-Samsung-Galaxy-Ace-Plus-S7500-Free-Shipping/503423_610201445.html"
												target="_blank" class="lnk-thumb"><img
												alt="Matte Soft TPU Back Case For Samsung Galaxy S3 III mini i8190 Free Shipping"
												src="./product detail_files/Matte-Soft-TPU-Back-Case-For-Samsung-Galaxy-S3-III-mini-i8190-Free-Shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="610201445"
										title="Matte Soft TPU Back Case For Samsung Galaxy S3 III mini i8190 Free Shipping"
										href="http://www.aliexpress.com/store/product/Solid-Color-Soft-TPU-Back-Case-For-Samsung-Galaxy-Ace-Plus-S7500-Free-Shipping/503423_610201445.html"
										class="lnk-title">Matte Soft TPU Back Case For Samsu...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">193</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="570143451"
												href="http://www.aliexpress.com/store/product/Cartoon-shell-Hard-Cover-Case-for-Samsung-Galaxy-Mini-S5570-free-shipping/503423_570143451.html"
												target="_blank" class="lnk-thumb"><img
												alt="Cartoon shell Hard Cover Case for Samsung Galaxy Mini S5570 free shipping"
												src="./product detail_files/Cartoon-shell-Hard-Cover-Case-for-Samsung-Galaxy-Mini-S5570-free-shipping.jpg_120x120.jpg"></a>
										</div>
										<a prodid="570143451"
										title="Cartoon shell Hard Cover Case for Samsung Galaxy Mini S5570 free shipping"
										href="http://www.aliexpress.com/store/product/Cartoon-shell-Hard-Cover-Case-for-Samsung-Galaxy-Mini-S5570-free-shipping/503423_570143451.html"
										class="lnk-title">Cartoon shell Hard Cover Case for ...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">118</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
									<li style="width: 182px;"><div class="pnl-thumb">
											<a prodid="619389094"
												href="http://www.aliexpress.com/store/product/galaxy-ace-2-flip-case-Genuine-Flip-leather-cover-for-Samsung-Galaxy-Ace-2-i8160-Free/503423_619389094.html"
												target="_blank" class="lnk-thumb"><img
												alt="galaxy ace 2 flip case,Genuine Flip leather cover for Samsung Galaxy Ace 2 i8160 Free Shipping"
												src="./product detail_files/galaxy-ace-2-flip-case-Genuine-Flip-leather-cover-for-Samsung-Galaxy-Ace-2-i8160-Free.jpg_120x120.jpg"></a>
										</div>
										<a prodid="619389094"
										title="galaxy ace 2 flip case,Genuine Flip leather cover for Samsung Galaxy Ace 2 i8160 Free Shipping"
										href="http://www.aliexpress.com/store/product/galaxy-ace-2-flip-case-Genuine-Flip-leather-cover-for-Samsung-Galaxy-Ace-2-i8160-Free/503423_619389094.html"
										class="lnk-title">galaxy ace 2 flip case,Genuine Fli...</a>
									<div class="price price-s">
											<span class="currency">US $</span><span class="value">147</span><span
												class="separator"> /</span> <span class="unit">lot</span>
										</div></li>
								</ul>
							</div>
						</div>
						<a class="lnk-prev lnk-prev-disabled">Preview</a><a
							class="lnk-next">Next</a>
					</div>
				</div>
				<div class="relatied-products clearfix"
					id="relatied-products-from-wholesale">
					<h2>Related Products from Other Sellers</h2>
					<div class="relatied-product-slide" id="relatied-product-slide">

						<div class="pnl-slide">
							<span class="sep-mask-left"></span> <span class="sep-mask-right"></span>

							<div class="pnl-slide-container">
								<ul style="margin-left: 0px;">
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="586721024"
												href="http://www.aliexpress.com/item/50pcs-lot-Good-Discount-New-TPU-Soft-Jelly-Gel-Cove-Case-for-iphone4-4s-Freeshipping/586721024.html"
												target="_blank" class="lnk-thumb"> <img
												alt="50pcs/lot Good Discount  New TPU Soft Jelly Gel Cove Case for iphone4/4s,Freeshipping"
												image-src="http://i00.i.aliimg.com/wsphoto/v1/586721024_1/50pcs-lot-Good-Discount-New-TPU-Soft-Jelly-Gel-Cove-Case-for-iphone4-4s-Freeshipping.summ.jpg"
												src="./product detail_files/50pcs-lot-Good-Discount-New-TPU-Soft-Jelly-Gel-Cove-Case-for-iphone4-4s-Freeshipping.summ.jpg"></a>
										</div> <a prodid="586721024"
										title="50pcs/lot Good Discount  New TPU Soft Jelly Gel Cove Case for iphone4/4s,Freeshipping"
										target="_blank"
										href="http://www.aliexpress.com/item/50pcs-lot-Good-Discount-New-TPU-Soft-Jelly-Gel-Cove-Case-for-iphone4-4s-Freeshipping/586721024.html"
										class="lnk-title">50pcs/lot Good Discount New TPU S...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">49.90</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="686409003"
												href="http://www.aliexpress.com/item/10pcs-New-Clear-Soft-TPU-Rubber-Gel-Clip-Case-For-Ipod-Nano-7-7th-generation-7G/686409003.html"
												target="_blank" class="lnk-thumb"> <img
												alt="10pcs New Clear Soft TPU Rubber Gel Clip Case For Ipod Nano 7 7th generation 7G"
												image-src="http://i01.i.aliimg.com/wsphoto/v0/686409003/10pcs-New-Clear-Soft-TPU-Rubber-Gel-Clip-Case-For-Ipod-Nano-7-7th-generation-7G.summ.jpg"
												src="./product detail_files/10pcs-New-Clear-Soft-TPU-Rubber-Gel-Clip-Case-For-Ipod-Nano-7-7th-generation-7G.summ.jpg"></a>
										</div> <a prodid="686409003"
										title="10pcs New Clear Soft TPU Rubber Gel Clip Case For Ipod Nano 7 7th generation 7G"
										target="_blank"
										href="http://www.aliexpress.com/item/10pcs-New-Clear-Soft-TPU-Rubber-Gel-Clip-Case-For-Ipod-Nano-7-7th-generation-7G/686409003.html"
										class="lnk-title">10pcs New Clear Soft TPU Rubber Ge...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">16.50</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="529762750"
												href="http://www.aliexpress.com/item/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL/529762750.html"
												target="_blank" class="lnk-thumb"> <img
												alt="50pcs/lot Free shipping New Soft Crystal TPU Gel Case for HTC Sensation XL"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/529762750/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL.summ.jpg"
												src="./product detail_files/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL.summ.jpg"></a>
										</div> <a prodid="529762750"
										title="50pcs/lot Free shipping New Soft Crystal TPU Gel Case for HTC Sensation XL"
										target="_blank"
										href="http://www.aliexpress.com/item/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL/529762750.html"
										class="lnk-title">50pcs/lot Free shipping New Soft C...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">61.68</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="597283440"
												href="http://www.aliexpress.com/item/100-new-High-quality-Soft-TPU-gel-Case-For-HTC-one-x-s720e-g23-free-shipping/597283440.html"
												target="_blank" class="lnk-thumb"> <img
												alt="100% new High quality Soft TPU gel Case For HTC one x s720e g23,free shipping .10pcs/lot"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/597283440/100-new-High-quality-Soft-TPU-gel-Case-For-HTC-one-x-s720e-g23-free-shipping.summ.jpg"
												src="./product detail_files/100-new-High-quality-Soft-TPU-gel-Case-For-HTC-one-x-s720e-g23-free-shipping.summ.jpg"></a>
										</div> <a prodid="597283440"
										title="100% new High quality Soft TPU gel Case For HTC one x s720e g23,free shipping .10pcs/lot"
										target="_blank"
										href="http://www.aliexpress.com/item/100-new-High-quality-Soft-TPU-gel-Case-For-HTC-one-x-s720e-g23-free-shipping/597283440.html"
										class="lnk-title">100% new High quality Soft TPU gel...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">22.00</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="455139513"
												href="http://www.aliexpress.com/item/NEW-6x-Soft-TPU-Gel-Case-For-Droid-Incredible-2-6350/455139513.html"
												target="_blank" class="lnk-thumb"> <img
												alt="NEW 6x Soft TPU Gel Case For Droid Incredible 2 6350"
												image-src="http://i01.i.aliimg.com/wsphoto/v0/455139513/NEW-6x-Soft-TPU-Gel-Case-For-Droid-Incredible-2-6350.summ.jpg"
												src="./product detail_files/NEW-6x-Soft-TPU-Gel-Case-For-Droid-Incredible-2-6350.summ.jpg"></a>
										</div> <a prodid="455139513"
										title="NEW 6x Soft TPU Gel Case For Droid Incredible 2 6350"
										target="_blank"
										href="http://www.aliexpress.com/item/NEW-6x-Soft-TPU-Gel-Case-For-Droid-Incredible-2-6350/455139513.html"
										class="lnk-title">NEW 6x Soft TPU Gel Case For Droid...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">12.60</span>
											<span class="separator">/</span> <span class="unit">piece</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="496884600"
												href="http://www.aliexpress.com/item/New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-Free-shipping/496884600.html"
												target="_blank" class="lnk-thumb"> <img
												alt="New Soft TPU Gel Case for BlackBerry Bold Touch 9900+Free shipping"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/496884600/New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-Free-shipping.summ.jpg"
												src="./product detail_files/New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-Free-shipping.summ.jpg"></a>
										</div> <a prodid="496884600"
										title="New Soft TPU Gel Case for BlackBerry Bold Touch 9900+Free shipping"
										target="_blank"
										href="http://www.aliexpress.com/item/New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-Free-shipping/496884600.html"
										class="lnk-title">New Soft TPU Gel Case for BlackBer...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">16.66</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="551251625"
												href="http://www.aliexpress.com/item/Free-shipping-10pcs-lot-new-Soft-TPU-S-Line-Case-for-Amazon-Kindle-Fire-Gel-with/551251625.html"
												target="_blank" class="lnk-thumb"> <img
												alt="Free shipping 10pcs/lot new Soft TPU S-Line Case for Amazon Kindle Fire Gel with retail package"
												image-src="http://i01.i.aliimg.com/wsphoto/v0/551251625_1/Free-shipping-10pcs-lot-new-Soft-TPU-S-Line-Case-for-Amazon-Kindle-Fire-Gel-with.summ.jpg"
												src="./product detail_files/Free-shipping-10pcs-lot-new-Soft-TPU-S-Line-Case-for-Amazon-Kindle-Fire-Gel-with.summ.jpg"></a>
										</div> <a prodid="551251625"
										title="Free shipping 10pcs/lot new Soft TPU S-Line Case for Amazon Kindle Fire Gel with retail package"
										target="_blank"
										href="http://www.aliexpress.com/item/Free-shipping-10pcs-lot-new-Soft-TPU-S-Line-Case-for-Amazon-Kindle-Fire-Gel-with/551251625.html"
										class="lnk-title">Free shipping 10pcs/lot new Soft T...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">23.39</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="512742400"
												href="http://www.aliexpress.com/item/Free-shipping-10pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900/512742400.html"
												target="_blank" class="lnk-thumb"> <img
												alt="Free shipping 10pcs/lot New Soft TPU Gel Case for BlackBerry Bold Touch 9900"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/512742400/Free-shipping-10pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900.summ.jpg"
												src="./product detail_files/Free-shipping-10pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900.summ.jpg"></a>
										</div> <a prodid="512742400"
										title="Free shipping 10pcs/lot New Soft TPU Gel Case for BlackBerry Bold Touch 9900"
										target="_blank"
										href="http://www.aliexpress.com/item/Free-shipping-10pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900/512742400.html"
										class="lnk-title">Free shipping 10pcs/lot New Soft T...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">16.51</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="672730159"
												href="http://www.aliexpress.com/item/New-case-for-iphone5-tpu-case-with-water-cube-design-Soft-tpu-gel-material-high-end/672730159.html"
												target="_blank" class="lnk-thumb"> <img
												alt="New case for iphone5 tpu case with water cube design, Soft tpu gel material,high end quality"
												image-src="http://i01.i.aliimg.com/wsphoto/v0/672730159_1/New-case-for-iphone5-tpu-case-with-water-cube-design-Soft-tpu-gel-material-high-end.summ.jpg"
												src="./product detail_files/New-case-for-iphone5-tpu-case-with-water-cube-design-Soft-tpu-gel-material-high-end.summ.jpg"></a>
										</div> <a prodid="672730159"
										title="New case for iphone5 tpu case with water cube design, Soft tpu gel material,high end quality"
										target="_blank"
										href="http://www.aliexpress.com/item/New-case-for-iphone5-tpu-case-with-water-cube-design-Soft-tpu-gel-material-high-end/672730159.html"
										class="lnk-title">New case for iphone5 tpu case with...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">33.90</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="485228308"
												href="http://www.aliexpress.com/item/New-arrival-Soft-Crystal-TPU-Gel-Case-for-HTC-Desire-S-G14/485228308.html"
												target="_blank" class="lnk-thumb"> <img
												alt="New arrival Soft Crystal TPU Gel Case for HTC Desire S (G14)"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/485228308/New-arrival-Soft-Crystal-TPU-Gel-Case-for-HTC-Desire-S-G14-.summ.jpg"
												src="./product detail_files/New-arrival-Soft-Crystal-TPU-Gel-Case-for-HTC-Desire-S-G14-.summ.jpg"></a>
										</div> <a prodid="485228308"
										title="New arrival Soft Crystal TPU Gel Case for HTC Desire S (G14)"
										target="_blank"
										href="http://www.aliexpress.com/item/New-arrival-Soft-Crystal-TPU-Gel-Case-for-HTC-Desire-S-G14/485228308.html"
										class="lnk-title">New arrival Soft Crystal TPU Gel C...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">58.95</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="543893591"
												href="http://www.aliexpress.com/item/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL/543893591.html"
												target="_blank" class="lnk-thumb"> <img
												alt="50pcs/lot Free shipping New Soft Crystal TPU Gel Case for HTC Sensation XL"
												image-src="http://i01.i.aliimg.com/wsphoto/v0/543893591/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL.summ.jpg"
												src="./product detail_files/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL.summ(1).jpg"></a>
										</div> <a prodid="543893591"
										title="50pcs/lot Free shipping New Soft Crystal TPU Gel Case for HTC Sensation XL"
										target="_blank"
										href="http://www.aliexpress.com/item/50pcs-lot-Free-shipping-New-Soft-Crystal-TPU-Gel-Case-for-HTC-Sensation-XL/543893591.html"
										class="lnk-title">50pcs/lot Free shipping New Soft C...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">60.99</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
									<li style="width: 182px;">
										<div class="pnl-thumb">
											<a prodid="508512048"
												href="http://www.aliexpress.com/item/Free-Shipping-20pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-9930/508512048.html"
												target="_blank" class="lnk-thumb"> <img
												alt="Free Shipping 20pcs/lot New Soft TPU Gel Case for BlackBerry Bold Touch 9900 9930"
												image-src="http://i00.i.aliimg.com/wsphoto/v0/508512048/Free-Shipping-20pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-9930.summ.jpg"
												src="./product detail_files/Free-Shipping-20pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-9930.summ.jpg"></a>
										</div> <a prodid="508512048"
										title="Free Shipping 20pcs/lot New Soft TPU Gel Case for BlackBerry Bold Touch 9900 9930"
										target="_blank"
										href="http://www.aliexpress.com/item/Free-Shipping-20pcs-lot-New-Soft-TPU-Gel-Case-for-BlackBerry-Bold-Touch-9900-9930/508512048.html"
										class="lnk-title">Free Shipping 20pcs/lot New Soft T...</a>
										<div class="price price-s">
											<span class="currency">US $</span><span class="value">29.99</span>
											<span class="separator">/</span> <span class="unit">lot</span>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<a class="lnk-prev    lnk-prev-disabled">Preview</a> <a
							class="lnk-next  ">Next</a>
					</div>
				</div>

 	--%>




				<div id="base-line"></div>
			</div>
		</div>

	</div>

	
	<g:render template="/category/footer"/>



	<script type="text/javascript"
		src="${resource(dir: 'js/product', file: 'userstatusx2.atc')}"></script>
	<div id="inf-dlg-shipping" class="mask-content"
		style="display: none; z-index: 1025; left: 293.5px; top: 70px; width: 693px;">
		<a
			href="http://www.aliexpress.com/item/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping/688800292.html#"
			class="close"></a>
	</div>
	<div id="inf-dlg-shipping-company" class="mask-content"
		style="display: none;">
		<a href="javascript:void(0);" class="close"></a>
	</div>
	<!-- ws_portal_detail_feature_words -->
	<script type="text/javascript"
        src="${resource(dir: 'js', file: 'jquery-1.8.1.js')}"></script>

	<script type="text/javascript"
		src="${resource(dir: 'js/product', file: 'detail-extend-MODERN_BROWSER-v_7a0ac940a1fad_103026fdbb362d.js')}"></script>

    <script type="text/javascript"
        src="${resource(dir: 'js', file: 'common.js')}"></script>
        
    <script type="text/javascript"
        src="${resource(dir: 'js/product', file: 'n_product.js')}"></script>

    
	<div id="ws-xman-temp-mask-content" class="ws-xman-mask-content"
		style="display: none;">
		<a class="mask-close"
			href="http://www.aliexpress.com/item/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping/688800292.html#"></a>
	</div>
	<div id="go-top" style="top: 193px; right: 0px; display: none;"></div>
	<div id="dialogShareURLTip" class="divShareURLMaskContent"
		style="display: none; width: 620px; position: fixed; border: 1px solid rgb(252, 187, 41); background-color: rgb(255, 255, 255); background-position: initial initial; background-repeat: initial initial;">
		<a href="javascript:void(0);" class="mask-close"></a>
	</div>


</body>
</html>