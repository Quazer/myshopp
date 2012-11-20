<%@ page import="com.nghia.shop.CommonUtils" %>
    <div class="order-container" id="orders-main">
        <div class="order-container-mask hide" id="orders-mask"><iframe class="hack-iframe" src="about:blank" frameborder="no"></iframe></div>
        <!-- Order Title -->
        <div class="order-title">
             <h2>${message(code: 'shoppingcart.confirmorder.label')} (${cartList.size} <g:if test="${cartList.size > 1 }">${message(code: 'shoppingcart.items.label')}</g:if><g:else>${message(code: 'shoppingcart.item.label')}</g:else>):</h2>
        </div>
        <g:form action="placeOrder" method="POST">
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" id="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" value="${tokenKey}">
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_URI" id="org.codehaus.groovy.grails.SYNCHRONIZER_URI" value="${request.forwardURI }">
    <!-- Form for place an order - start -->
                <!-- Order Item -->
                <g:each in="${cartList }" var="orderItem">
	                <table class="order-table">
	                     <thead>
	                        <tr>
	                            <th width="740">SKU: ${orderItem.product.sku }</th>
	                            <th></th>
	                        </tr>
	                     </thead>
	                     
	                    <!-- order foreach -->
	                     <tbody>
	                        <!--  product foreach -->
	                        <tr class="item-product" productid="${orderItem.product.sku }">
	                            <td width="740" class="order-product-info">
	                                <ul class="item-details-list">
	                                    <input name="purchaseId" type="hidden" value="${orderItem.product.id }">   
	                                    <li>
	                                        <!--product item start-->
	                                        <div class="item-details clearfix">
	                                            <a name="anchor-${orderItem.product.sku }"></a>
	                                            <div class="pimg">
	                                               <g:link controller="product" action="show" params="[id:orderItem.product.id ]" target="_blank">
	                                                   <img src="${createLink(controller : 'imageStore',action: 'productImages', id: orderItem.product.productImage?.id)}" alt="${orderItem.product.name.encodeAsHTML() }">
	                                               </g:link>
	                                                
                                            </div>
                                            <div class="p-info">
                                                <input type="hidden" class="ae-product-id" value="${orderItem.product.id }">
                                                <div class="p-title">
                                                    <g:link controller="product" action="show" params="[id:orderItem.product.id ]" target="_blank">
                                                        ${orderItem.product.name.encodeAsHTML() }
                                                    </g:link>
                                                </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
                                            </div>
                                            <div class="p-extra">                                                       
                                                <div class="p-price">
                                                    <input class="product-quantity-input" readonly="readonly" value="${orderItem.quantity}"> 
                                                    <span class="txt-unit-quantity"><g:message code="${orderItem.product.unit }"/></span> 
                                                    <span class="txt-multiply">×</span>
                                                    <span>${CommonUtils.productPrice(orderItem.product) }</span>
                                                    <input class="hid-shopcart-id" type="hidden" value="${orderItem.product.sku }" name="shopcartId">
                                                    <!--Only the promotion product need inventory, the default is 9999-->
                                                    <input class="hid-inventory" type="hidden" value="${orderItem.product.inventory }">
                                                    <g:if test="${orderItem.product.inventory < 9999 }">
                                                        <div class="product-quantity-comment"><g:message code="shoppingcart.maximumitem.label"/>: ${orderItem.product.inventory }</div>
                                                    </g:if>
                                                    
                                                </div>
                                                
                                            </div>
	                                        </div>
	                                        <div class="p-message">
	                                            <div><g:message code="shoppingcart.msgaboutitem.label"/></div>
	                                            <textarea name="messageToShop-${orderItem.product.id }" id="messageToShop-${orderItem.product.id }" cols="100" rows="1" class="message-text no-hit">
	                                            ${orderItem.messageToShop} asdsad
	                                            </textarea>
	                                            <p class="message-text-tip"><g:message code="shoppingcart.msgaboutitem.detail.label"/></p>
	                                        </div>
	                                        <!-- product item end-->
	                                    </li>
	                                </ul>
	                            </td>
	                            <!-- shipping start -->
	                            <td class="order-shipment-info">
	                                <div class="product-shipping-select">${orderItem.shippingMethod.name }</div>
	                                <p><span class="order-target">${CommonUtils.shippingMethodPrice(orderItem.shippingMethodPrice) }</span></p> 
	                                <p class="ship-info">Delivery Time:<span class="ship-value">${CommonUtils.shippingMethodTimeOfDeliver(orderItem.shippingMethod.timeOfDeliver)}</span></p>
	                                <p class="ship-info">Processing Time:<span class="ship-value">${CommonUtils.shippingMethodTimeOfVerify(orderItem.shippingMethod.timeOfVerify)}</span></p>
	                                                                
	                                <div class="pnl-shipping" style="z-index: 99; visibility: visible; left: 526px; top: 117px; display: none;">
	                                    <div class="inner">
	                                        <ul>
	                                           <%
											     def shipMethodItem
												 def methodName
											     for (int i = 1; i <= 8; i++) {
													 methodName = "shippingMethod" + i
													 shipMethodItem = orderItem.product."${methodName}"
													 if (shipMethodItem) {
														 methodName = "shippingMethodPrice" + i
											    %>
												
	                                            <li>
	                                                <label class="shipping-label clearfix" for="shipping-select-${orderItem.product.sku }-${shipMethodItem.id}">
	                                                    <span class="lbl-shipping-remaining">${CommonUtils.shippingMethodTimeOfDeliver(shipMethodItem.timeOfDeliver)} </span>
	                                                    <span class="price lbl-shipping-price">
	                                                        <span class="value">${CommonUtils.shippingMethodPrice(orderItem.product."${methodName}") } <br></span>
	                                                    </span>
	                                                    <input type="hidden" value="ConfirmOrderAction" name="action">
	                                                    <input type="hidden" value="anything" name="event_submit_do_update_logistics_service">
	                                                    <input type="hidden" value="${orderItem.product.sku }" name="shopcartId">
	                                                    <input type="radio" id="shipping-select-${orderItem.product.sku }-${shipMethodItem.id}" value="${shipMethodItem.name}"
														     <g:if test="${orderItem.shippingMethod == shipMethodItem}">
															 checked="true"
															 </g:if>
                                                             name="serviceName-${orderItem.product.sku }-1">
	                                                    ${shipMethodItem.name}
	                                                </label>
	                                            </li>
	                                            <!-- end if service level is the default, then ignore-->
                                                <%
													 } // endif
                                                 }
                                                %>
	                                                                                                                                                                                                                            
	                                        </ul>
	                                        <div class="pnl-shipping-action clearfix">
	                                            <input type="hidden" name="product-id" value="${orderItem.product.id }">
	                                            <input type="button" class="btn-ok" value=""><a class="btn-cancel">Cancel</a>
	                                        </div>
	                                    </div>
	                                </div>
	                                
	                            <iframe class="maskIframe" style="z-index: 98; top: 117px; left: 526px; width: 302px; height: 176px; visibility: visible; display: none;" frameborder="0"></iframe></td>
	                            <!-- shipping end -->                           
	                        </tr>
	                                             </tbody>
	                    <tfoot>
	                        <tr>
	                            <td colspan="2" class="order-price">
	                                <input type="hidden" name="coupon-item-201013235" class="coupon-id-input" value="">
	                                <input type="hidden" name="coupon-code-item-201013235" class="coupon-code-input" value="">
	                                <input type="hidden" class="son-order-price" value="41.74">
	                                <p>
	                                   <span>Subtotal:</span><span class="value">${CommonUtils.subTotalPerOrder(orderItem.product) }</span>
	                                   <span class="ship-text">Shipping:</span> <span class="value">${CommonUtils.shippingMethodPrice(orderItem.shippingMethodPrice) }</span>
	                                                                  </p>
	                                                              <!--coupon start -->
	                                                           <!-- 
	                                <p class="use-coupon-box">   
	                                    <a class="use-coupon-btn" href="javascript:void(0)">Use Coupon(or Coupon code)</a>
	                                </p>
	                                <p class="change-coupon-box hide">
	                                    Coupon(<a class="change-coupon-btn" href="javascript:void(0)">Change Coupon</a>): <span class="coupon-price"></span>
	                                </p>
	                                                           -->
	                                                                <!-- coupon end-->
	                                <p class="whole-coupon-box hide">Coupon:<span class="whole-coupon-price"></span></p>
	                                <p>Total:<span class="whole-price">${CommonUtils.totalPerOrder(orderItem) }</span></p>
	                            </td>
	                        </tr>
	                    </tfoot>
	                                        <!-- order foreach end-->
	                </table>
                </g:each>
        
        <!-- All Total Price -->
        <div class="all-total-price">
            <a name="anchor-code"></a>
                        <a href="http://shoppingcart.aliexpress.com/shopcart/shopcartDetail.htm">&lt; Return to Shopping Cart</a> 
                        <span><em>All Total:</em><strong><span id="all-totalfee">${CommonUtils.totalPriceOfShopCart(cartList) }</span></strong></span>
        </div>
        <!-- -->
        <div class="foot-info-wrap clearfix">
            
            <div class="order-submit-info">


                <!-- Place Order Button -->
                <div class="placeOrder-button">
                    <g:hiddenField name="purchaseId" value="0"/>
                   <g:submitButton class="buttonRadiusB placeOrder-btn" action="checkout" value="Place Order" name="placeOrder-btn"/>
                </div>
                
                </g:form>
                <!-- Form for place an order - end -->
                
                <!-- 
                <p id="place-order-num-error" class="message-box  hide "></p>
        
                
                                <!-- Buyer Provide Email -->
                <div class="buyer-provide-email">
                     <input type="checkbox" checked="checked" id="cb-buyer-provide-email" name="agree-disclose-email">
                     <input type="hidden" name="need-build-relation" value="true">
                     <label for="cb-buyer-provide-email">I agree to disclose my email address to this member.</label>
                </div>
                                
                <!-- Agreement -->
                <ul class="agreement">
                    <li>Upon clicking 'Place Order', I acknowledge I have read and agreed to:</li>
                    <li>- <a target="_blank" href="http://news.alibaba.com/article/detail/help/100454419-1-alibaba.com-transaction-services-agreement-international.html">Alibaba.com Transaction Services Agreement</a></li>
                    <li>- <a target="_blank" href="http://news.alibaba.com/article/detail/help/100454412-1-alipay-escrow-services-agreement.html">Escrow Services Agreement</a></li>
                    <li>- <a target="_blank" href="http://news.alibaba.com/article/detail/product-listing-policy-for-transaction-services/100130971-1-product-listing-policy-transaction-services.html">Product Listing Policy for Transaction Services</a></li>
                    <li><a target="_blank" href="http://escrow.aliexpress.com/buyerprotection/index.html">Click here</a> to learn more about online transactions with Escrow</li>
                </ul
                >
                 -->
            </div>
            <div class="payment-method">
                <div id="inf-bp"><div class="bp-banner"><a href="http://www.aliexpress.com/buyerprotection/index.html" rel="nofollow"><img class="banner-img" src="${resource(dir: 'images/shoppingcart', file: 'bp_banner_975x75.png')}"></a></div></div>
                <span class="payment-method-title">Payment Methods:</span>
                <ul><li class="pm-type-visa-s"></li><li class="pm-type-mastercard-s"></li><li class="pm-type-westernUnion-s"></li><li class="pm-type-moneybookers-s"></li><li class="pm-type-maestro-s"></li><li class="pm-type-solo-s"></li><li class="pm-type-cartebleue-s"></li><li class="pm-type-4b-s"></li><li class="pm-type-euro6000-s"></li><li class="pm-type-cartasi-s"></li><li class="pm-type-postepay-s"></li><li class="pm-type-banktransfer-s"><strong>Bank Transfer</strong></li></ul>
            </div>
        </div>
     </div>