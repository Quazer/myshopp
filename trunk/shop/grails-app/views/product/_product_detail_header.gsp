<%@ page import="com.nghia.shop.CommonUtils" %>
    <script type="text/javascript"
        src="${resource(dir: 'js/product', file: 'n_product.js')}"></script>
									<div class="inf-inner">
										<!--real-time-->
										<h1 id="product-name" class="fn" itemprop="name">
										  ${productInstance?.name }
										</h1>

										<g:form controller="shoppingCart" action="add" useToken="true" class="buy-now-form" id="buy-now-form" name="buy-now-form">
										
											
											<input type="hidden" name="objectId" id="objectId" value="${productInstance.sku }">
											
											<%-- 
											<input type="hidden" value="wholesaleProduct"> 
											<input type="hidden" name="from" value="aliexpress">
											<input type="hidden" name="" id="objectStockpile" value=""> 
											<input type="hidden" name="wsOrderFrom" value="product_detail">
											<input type="hidden" id="hid-product-id" value="688800292">
											<input type="hidden" name="ws_score_session_id" value="">
											<input type="hidden" id="inf-sel-standard" name="standard">
											--%>
											
											<%-- TEST ONLY --%>
 											<g:hiddenField name="shipMethod" value="shipping method name 0"/>
 											
											<input type="hidden" name="countryCode" value="VN" id="inf-hid-country-code"> 
											<input type="hidden" name="shippingCompany" value="EMS" id="inf-hid-shipping-company">

											
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
															<strong class="cost cost-m">US $ 103.00</strong> <span
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
														<g:render template="/product/ajax/product_color"/>
													</ul>
													<div id="inf-msg-color" class="msg-selected sku-msg" style="display: none;">
													   Please select a Color
													</div>
												</dd>
											</dl>

											<g:render template="/product/ajax/product_size"/>
									
									       <g:render template="/product/ajax/select_product_quantity"/>

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
											
										</g:form>

										<div id="seller-promise-main" class="sp-none">
										    <span class="sp-title">Seller Promise:</span>
										    <div id="seller-promise-list"></div>
										</div>

										<!-- wish list args -->
										<input id="_csrf_token" name="_csrf_token" type="hidden" value="">
										<input id="usaeServer" name="usaeServer" type="hidden" value="http://us.ae.alibaba.com">
										<input id="transactionbp" name="transactionbp" type="hidden" value="">
										
										
										
										<!--real-time-->
																	</div>
