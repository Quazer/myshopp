<%@ page import="com.nghia.shop.CommonUtils" %>
		<div id="base">
			<div class="grid-c2-s6f">
				<div class="col-main" itemscope=""
					itemtype="http://schema.org/Product">
					<div class="main-wrap">

						<div class="info-box">
							<div id="sc-coupon-wrap"></div>
							<div class="inner clearfix">
								<div id="inf">
									<div class="inf-inner">
										<!--real-time-->
										<h1 id="product-name" class="fn" itemprop="name">
										  ${productInstance.name }
										</h1>

										<form action="http://shoppingcart.aliexpress.com/order/confirm_order.htm"
											class="buy-now-form" id="buy-now-form" name="buyNowForm">
											<input type="hidden" name="objectId" value="688800292">
											<input type="hidden" value="wholesaleProduct"> 
											<input type="hidden" name="from" value="aliexpress"> 
											<input type="hidden" name="countryCode" value="VN" id="inf-hid-country-code"> 
											<input type="hidden" name="shippingCompany" value="EMS" id="inf-hid-shipping-company">
											<input type="hidden" name="" id="objectStockpile" value=""> 
											<input type="hidden" name="wsOrderFrom" value="product_detail">

											<input type="hidden" id="hid-product-id" value="688800292">
											<input type="hidden" name="ws_score_session_id" value="">
											<input type="hidden" id="inf-sel-standard" name="standard">
											<div class="inf-pnl-price-detail">
												<dl>
													<input type="hidden" id="sku-price-store" value="105.00">
													<input type="hidden" id="bulk-order-store" value="4">
													<input type="hidden" id="act-sku-bulk-price-store" value="100.80">

													<dt><g:message code="cat.filter.price.label"/>:</dt>
													<dd>
														<div class="price price-highlight" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
														    <%-- 
															<span class="currency notranslate" itemprop="priceCurrency" content="AUD">US $</span>
															--%>
															<span class="value" id="sku-price" itemprop="price">
															     ${CommonUtils.showPriceWithCurrency(productInstance.purchargePrice) }</span>
															<span class="separator">/</span> 
														    <span class="unit">
															     <g:message code="${productInstance.unit }"/> 
															</span>
														</div>

														<span class="unit-disc">${productInstance.note }
														</span>
													</dd>

												</dl>
												<dl>
													<dt>
														<span>
														  <g:message code="product.bulkprice.label"/>:
														 </span>
													</dt>
													<dd>
														<div style="display: none">
															<strong class="cost cost-m">US $ 105.00</strong> <span
																class="separator">/</span> <span class="unit">piece
															</span>
														</div>
														<span id="sku-bulk-price">${CommonUtils.bulkPriceWithCurrency(productInstance) } / <g:message code="${productInstance.unit }"/>  </span>
														(${productInstance.bulkItem } <g:message code="${productInstance.unit }"/>(s) <g:message code="product.bulkquantity.label"/>)

													</dd>
												</dl>
											</div>
											<dl class="sku-row">
												<dt class="pp-dt-ln sku-color-title">Color:</dt>
												<dd>
													<ul id="sku-color" class="sku-attr sku-color clearfix">
														<g:render template="ajax/product_color"/>
													</ul>
													<div id="inf-msg-color" class="msg-selected sku-msg" style="display: none;">
													   Please select a Color
													</div>
												</dd>
											</dl>

											<g:render template="ajax/product_size"/>


											<dl>
												<dt>Quantity:</dt>
												<dd>
													<div id="inf-pnl-quantity" class="pnl-quantity">
														<div id="inf-msg-quantity" class="msg-quantity" style="visibility: hidden;"></div>

														<input type="text" name="quantity" id="inf-txt-quantity" class="txt-quantity" maxlength="5" value="1"> 
														<span id="inf-lbl-unit" class="lbl-unit">lot</span> 
														<input type="hidden" id="oddUnitName_id" value="lot"> 
														<input type="hidden" id="multiUnitName_id" value="lots">
														<img id="inf-bnt-quantity-calculate" src="${resource(dir: 'images/product', file: 'calculate.gif')}" alt="" style="visibility: visible;">


														<p id="inf-msg-stockpile"
															class="msg-stockpile msg-selected">
															Purchases are limited to <span id="sku-active-no">9999</span>
															lots
														</p>
													</div>
												</dd>
											</dl>

											<dl>
												<dt>Shipping Cost:</dt>
												<dd>
													<div id="inf-pnl-shipping" class="clearfix" style="visibility: visible;">
														<span id="inf-pnl-shipping-cost" class="shipping-cost">
															<span class="free">Free Shipping</span>
														</span> 
														
														<%--
														<span class="shipping-to">to</span> 
														<a id="inf-lnk-shipping"
															class="shipping-link" rel="nofollow"
															href="javascript:void(0);">
														<span id="shipping-country-name">Vietnam</span> 
														<span class="shipping-via">Via</span> EMS</a>
														 --%>
													</div>
												</dd>
											</dl>
											<dl>
												<dt>Delivery Time:</dt>
												<dd>
													<span id="inf-pnl-delivery-time" class="delivery-time">4-10 days</span>
												</dd>
											</dl>


											<dl>
												<dt>Processing Time:</dt>
												<dd class="proce-time">Ships out within 7 days</dd>
											</dl>

											<dl>
												<dt>Total Price:</dt>
												<dd>
													<span class="sku-totle-price-tip" style="display: none;">Depends
														on the product properties you select</span> <input type="hidden"
														id="hid-freight" value="0.00">
													<div id="inf-pnl-total-price" class="clearfix"
														style="visibility: visible;">
														<strong style="display:none;">$105.00 x 1 + $0.00 = </strong><span class="price price-highlight"><span class="currency notranslate">US $</span><span class="value">105.00</span></span></div>

	</dd>
</dl>

<dl>
	<dt></dt>
	<dd>
		<div class="pnl-buy-now">
			<input type="submit" id="inf-btn-buy-now" class="btn-buy-now" title="" value="Buy Now!">
			<a href="javascript:void(0);" rel="nofollow" id="inf-add-to-cart" class="notranslate">Add to Cart</a>
		</div>
	</dd>
</dl>

<dl>
        <dt></dt>

        <dd>
                <div id="add-to-wishlist">
                        <a href="javascript:;" id="wishlist-btn-a">+Add to Wish List</a>
                        <span id="wl-collect">(<span class="wl-collect-num">1</span> Adds)</span>
                </div>
        </dd>

</dl>

<div id="atc-box" style="display:none;z-index:99;">
	<div class="atc-inner">
		<a id="atc-close-btn" class="atc-close" href="javascript:void(0);"></a>
		<div id="atc-notice"></div>
                <div id="magnet-shopcart">
                </div>
	</div>
</div>

<div id="inf-escrow">

</div>


<input id="skuAttr" name="skuAttr" type="hidden" value="14:193">

</form>

<div id="seller-promise-main" class="sp-none">
    <span class="sp-title">Seller Promise:</span>
    <div id="seller-promise-list">
          </div>
</div>

<!-- wish list args -->
<input id="_csrf_token" name="_csrf_token" type="hidden" value="">
<input id="usaeServer" name="usaeServer" type="hidden" value="http://us.ae.alibaba.com">
<input id="transactionbp" name="transactionbp" type="hidden" value="">

<script type="text/javascript">
		if(!window.runParams) {
		window.runParams = {};
		}
		window.runParams.productId="688800292";
		window.runParams.categoryId="380230";
		window.runParams.userType="cnfm";
		window.runParams.userCountry="VN";
		window.runParams.userCountryName="VIETNAM";
		window.runParams.productTradeCount="2";
		window.runParams.startValidDate="";
                window.runParams.sessionId="b91a558d5ea4483facbd87502093a1ef";
	var skuProducts=[{"skuAttr":"14:193","skuPropIds":"193","skuVal":{"bulkOrder":4,"inventory":1,"isActivity":false,"skuBulkPrice":"100.80","skuPerPiecePrice":"1.05","skuPrice":"105.00"}},{"skuAttr":"14:100018786","skuPropIds":"100018786","skuVal":{"bulkOrder":4,"inventory":1,"isActivity":false,"skuBulkPrice":"100.80","skuPerPiecePrice":"1.05","skuPrice":"105.00"}},{"skuAttr":"14:691","skuPropIds":"691","skuVal":{"bulkOrder":4,"inventory":1,"isActivity":false,"skuBulkPrice":"100.80","skuPerPiecePrice":"1.05","skuPrice":"105.00"}}] ;
			var skuAttrIds=[[193,100018786,691]];
	            window.runParams.quantityHTML = '(<span id="quantity-no">{{quantity}}</span> pieces available)';
        window.runParams.buyLimitHTML = '(<span id="quantity-no">{{quantity}}</span> pieces at most per customer)';

</script>

<!--real-time-->
							</div>
						</div>
<!--real-time-->
<div id="img" style="position:relative;z-index:120;">
						<div itemprop="image" class="image-item"><a style="margin-top: 45px; display: inline-block; text-decoration: initial; position: relative;" href="http://www.aliexpress.com/item-img/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping/688800292.html" target="_blank"><img style="margin-top: 0pt; display: block;" src="http://i00.i.aliimg.com/wsphoto/v0/688800292/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping.jpg" height="159" width="250"><iframe src="http://style.alibaba.com/js/blank.html" style="display: none; visibility: hidden;"></iframe><div class="viewport" style="display: none; visibility: hidden;"><div class="visible" style="border: 5px solid rgb(204, 204, 204); width: 320px; height: 240px; overflow: hidden;"><img src="http://i00.i.aliimg.com/wsphoto/v0/688800292/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping.jpg" alt=""></div></div><span class="glass" style="display: none; visibility: hidden; width: 140px; height: 105px; background-color: rgb(255, 255, 255); border: 1px solid rgb(153, 153, 153); margin-left: -1px; margin-top: -1px; position: absolute; left: 0px; top: 0px; cursor: move; opacity: 0.5; background-position: initial initial; background-repeat: initial initial;"></span></a></div>
									<div class="img-zoom-in"><span>See Larger Image:</span> <a href="http://www.aliexpress.com/item-img/New-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping/688800292.html" id="lnk-enlarge-image" target="_blank" title="New Style Clear Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping">New Style Clear Soft TPU Gel Case for LG Nexus 4 E960 Free Shipping Picture</a></div>
								
	
	<div class="prod-id">Product ID: 688800292</div>

	<div class="sns-tool">		
	  <div class="fb-like" id="fb-like" style="overflow: visible;">
	    <div id="fb-root" style="display: block;" class=" fb_reset fb_reset"><fb:like show_faces="false" width="240" height="60" fb-xfbml-state="rendered" class="fb_edge_widget_with_comment fb_iframe_widget"><span style="height: 28px; width: 240px;"><iframe id="f2b8429124" name="f2779bce5c" scrolling="no" style="border: none; overflow: hidden; height: 28px; width: 240px;" title="Like this content on Facebook." class="fb_ltr" src="./product detail_files/like.htm"></iframe></span></fb:like><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div><iframe id="fb_xdm_frame_http" name="fb_xdm_frame_http" src="./product detail_files/xd_arbiter.htm"></iframe><iframe id="fb_xdm_frame_https" name="fb_xdm_frame_https" src="./product detail_files/xd_arbiter(1).htm"></iframe></div></div><div style="position: absolute; top: -10000px; height: 0px; width: 0px;"><div></div></div></div>
	    <img id="like-loading" src="./product detail_files/fb-loading.gif" style="display: none;">
	  </div>
          <div id="divShareURL" coupon_status="login">
            <a href="javascript:void(0)" share_url="http://www.facebook.com/sharer/sharer.php?u=http%3A%2F%2Fwww.aliexpress.com%2Fitem%2FNew-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping%2F688800292.html%3Fsrc%3Dsns%26cn%3Dfeedback_coupon%26isdl%3Dy%26af%3DedddPNqAm3Y%253D"><span id="divShareURLfb"></span></a>
            <a href="javascript:void(0)" share_url="http://twitter.com/home?status=http%3A%2F%2Fwww.aliexpress.com%2Fitem%2F%2F688800292.html%3Fsrc%3Dsns%26cn%3Dfeedback_coupon%26isdl%3Dy%26af%3DedddPNqAm3Y%253D%2B-%2Bfor+LG+Nexus+4+case+on+AliExpress.com.+%24105.00"><span id="divShareURLtwitter"></span></a>
            <a href="javascript:void(0)" share_url="http://vk.com/share.php?url=http%3A%2F%2Fwww.aliexpress.com%2Fitem%2FNew-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping%2F688800292.html%3Fsrc%3Dsns%26cn%3Dfeedback_coupon%26isdl%3Dy%26af%3DedddPNqAm3Y%253D"><span id="divShareURLvk"></span></a>
            <a href="javascript:void(0)" share_url="http://pinterest.com/pin/create/button/?url=http%3A%2F%2Fwww.aliexpress.com%2Fitem%2FNew-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping%2F688800292.html%3Fsrc%3Dsns%26cn%3Dfeedback_coupon%26isdl%3Dy%26af%3DedddPNqAm3Y%253D&amp;media=http%3A%2F%2Fimg.alibaba.com%2Fwsphoto%2Fv0%2F688800292%2FNew-Style-Clear-Soft-TPU-Gel-Case-for-LG-Nexus-4-E960-Free-Shipping.jpg&amp;description=New+Style+Clear+Soft+TPU+Gel+Case+for+LG+Nexus+4+E960+Free+Shipping+on+AliExpress.com.+%24105.00"><span id="divShareURLpinit"></span></a>
          </div>
                    <p style="margin:5px 0 0 0;font-family:Arial;">Share this with your friends, get a $5 coupon!</p>
                  </div>
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