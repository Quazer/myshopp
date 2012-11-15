<%@ page import="com.nghia.shop.CommonUtils" %>
    <div class="order-container" id="orders-main">
        <div class="order-container-mask hide" id="orders-mask"><iframe class="hack-iframe" src="about:blank" frameborder="no"></iframe></div>
        <!-- Order Title -->
        <div class="order-title">
             <h2>${message(code: 'shoppingcart.confirmorder.label')} (${cartList.size} <g:if test="${cartList.size > 1 }">${message(code: 'shoppingcart.items.label')}</g:if><g:else>${message(code: 'shoppingcart.item.label')}</g:else>):</h2>
        </div>

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
                                                <input type="hidden" class="ae-product-id" value="608514088">
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
                                                    <div class="product-quantity-comment"><g:message code="shoppingcart.maximumitem.label"/>: ${orderItem.product.inventory }</div>
                                                </div>
                                                
                                            </div>
	                                        </div>
	                                        <div class="p-message">
	                                            <div><g:message code="shoppingcart.msgaboutitem.label"/></div>
	                                            <textarea name="messageToSupplier-item-${orderItem.product.sku }" id="" cols="100" rows="1" class="message-text no-hit"></textarea>
	                                            <p class="message-text-tip"><g:message code="shoppingcart.msgaboutitem.detail.label"/></p>
	                                        </div>
	                                        <!-- product item end-->
	                                    </li>
	                                </ul>
	                            </td>
	                            <!-- shipping start -->
	                            <td class="order-shipment-info">
	                                <div class="product-shipping-select">FEDEX</div>
	                                <p><span class="order-target">US $33.77</span></p> 
	                                <p class="ship-info">Delivery Time:<span class="ship-value">3-7 Days</span></p>
	                                <p class="ship-info">Processing Time:<span class="ship-value">3 Days</span></p>
	                                                                
	                                <div class="pnl-shipping" style="z-index: 99; visibility: visible; left: 526px; top: 117px; display: none;">
	                                    <div class="inner">
	                                        <ul>
	                                            <!-- start if service level is the default, then ignore-->
	                                            <li>
	                                                <label class="shipping-label clearfix" for="shipping-select-${orderItem.product.sku }-1">
	                                                    <span class="lbl-shipping-remaining">3-7 Days </span>
	                                                    <span class="price lbl-shipping-price">
	                                                        <span class="currency">$</span>
	                                                        <span class="value">33.77 <br></span>
	                                                    </span>
	                                                    <input type="hidden" value="ConfirmOrderAction" name="action">
	                                                    <input type="hidden" value="anything" name="event_submit_do_update_logistics_service">
	                                                    <input type="hidden" value="${orderItem.product.sku }" name="shopcartId">
	                                                    <input type="radio" id="shipping-select-${orderItem.product.sku }-1" value="FEDEX" checked="true" name="serviceName-${orderItem.product.sku }-1">
	                                                    FEDEX
	                                                </label>
	                                            </li>
	                                            <!-- end if service level is the default, then ignore-->
	                                            
	                                                                                                                                    <!-- start loop service level-->
	                                            <li>
	                                                <label class="shipping-label clearfix" for="shipping-select-${orderItem.product.sku }-EMS">
	                                                    <span class="lbl-shipping-remaining">4 -10 Days </span>
	                                                        <span class="price lbl-shipping-price">
	                                                            <span class="currency">$</span>
	                                                            <span class="value">15.91<br></span>
	                                                        </span>
	                                                    <input type="radio" value="EMS" id="shipping-select-${orderItem.product.sku }-EMS" name="serviceName-${orderItem.product.sku }-1">
	                                                        EMS
	                                                </label>
	                                            </li>
	                                            <!-- end loop service level-->
	                                                                                                                                                                                <!-- start loop service level-->
	                                            <li>
	                                                <label class="shipping-label clearfix" for="shipping-select-${orderItem.product.sku }-DHL">
	                                                    <span class="lbl-shipping-remaining">3 -7 Days </span>
	                                                        <span class="price lbl-shipping-price">
	                                                            <span class="currency">$</span>
	                                                            <span class="value">33.73<br></span>
	                                                        </span>
	                                                    <input type="radio" value="DHL" id="shipping-select-${orderItem.product.sku }-DHL" name="serviceName-${orderItem.product.sku }-1">
	                                                        DHL
	                                                </label>
	                                            </li>
	                                            <!-- end loop service level-->
	                                                                                                                                                                                                                            
	                                        </ul>
	                                        <div class="pnl-shipping-action clearfix">
	                                            <input type="hidden" name="product-id" value="product-id-001">
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
	                                   <span>Subtotal:</span><span class="value">US $7.97</span>
	                                   <span class="ship-text">Shipping:</span> <span class="value">US $33.77</span>
	                                                                  </p>
	                                                              <!--coupon start -->
	                                <p class="use-coupon-box">   
	                                    <a class="use-coupon-btn" href="javascript:void(0)">Use Coupon(or Coupon code)</a>
	                                </p>
	                                <p class="change-coupon-box hide">
	                                    Coupon(<a class="change-coupon-btn" href="javascript:void(0)">Change Coupon</a>): <span class="coupon-price"></span>
	                                </p>
	                                                                <!-- coupon end-->
	                                <p class="whole-coupon-box hide">Coupon:<span class="whole-coupon-price"></span></p>
	                                <p>Total:<span class="whole-price">US $41.74</span></p>
	                            </td>
	                        </tr>
	                    </tfoot>
	                                        <!-- order foreach end-->
	                </table>
                </g:each>

                            <!-- Order Item -->
                <table class="order-table">
                     <thead>
                        <tr>
                            <th width="740">Seller: Utopia</th>
                            <th></th>
                        </tr>
                     </thead>
                     
                    <!-- order foreach -->
                                         <tbody>
                        <!--  product foreach -->
                                                <tr class="item-product" productid="580797773">
                            <td width="740" class="order-product-info">
                                <ul class="item-details-list">
                                    <input name="purchaseId" type="hidden" value="950551478">   
                                    <li>
                                        <!--product item start-->
                                        <div class="item-details clearfix">
                                                <a name="anchor-950551478"></a>
                                                    <div class="pimg">
                                                        <a href="http://www.aliexpress.com/item/Crystal-Jewelry-Set-Make-With-Swarovski-Elements-Earrings-Necklace-89458/580797773.html" target="_blank">
                                                            <img src="${resource(dir: 'images/shoppingcart', file: 'Great-Promotion-Elegant-Butterfly-Jewelry-Set-Make-With-Swarovski-Shining-Rhinestone-5-Colors-For-Choose-89458.jpg_80x80.jpg')}" alt="Great Promotion Elegant Butterfly Jewelry Set Make With Swarovski Shining Rhinestone 5 Colors For Choose  #89458">
                                                        </a>
                                                    </div>
                                                    <div class="p-info">
                                                        <input type="hidden" class="ae-product-id" value="580797773">
                                                        <div class="p-title">
                                                            <a href="http://www.aliexpress.com/item/Crystal-Jewelry-Set-Make-With-Swarovski-Elements-Earrings-Necklace-89458/580797773.html" target="_blank">Great Promotion Elegant Butterfly Jewelry Set Make With Swarovski Shining Rhinestone 5 Colors For Choose  #89458</a>
                                                        </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                                                    </div>
                                                    <div class="p-extra">                                                       
                                                        <div class="p-price">
                                                            <input class="product-quantity-input" readonly="readonly" value="1"> 
                                                            <span class="txt-unit-quantity">set</span> 
                                                            <span class="txt-multiply">×</span>
                                                            <span>US $9.30</span>
                                                            <input class="hid-shopcart-id" type="hidden" value="950551478" name="shopcartId">
                                                            <!--Only the promotion product need inventory, the default is 9999-->
                                                                                                                                <input class="hid-inventory" type="hidden" value="9999">
                                                                                                                                                                                                                                                                                                            </div>
                                                        
                                                                                                            </div>
                                        </div>
                                        <div class="p-message">
                                            <div>Leave a message for this seller:</div>
                                            <textarea name="messageToSupplier-item-950551478" id="" cols="100" rows="1" class="message-text no-hit"></textarea>
                                            <p class="message-text-tip">Max. 1,500 English characters or Arabic numerals only. No HTML codes.</p>
                                        </div>
                                        <!-- product item end-->
                                    </li>
                                </ul>
                            </td>
                            <!-- shipping start -->
                            <td class="order-shipment-info">
                                <div class="product-shipping-select">China Post Air Mail</div>
                                
                                                                  <p class="free-shipping">Free Shipping</p>
                                                                <p class="ship-info">Delivery Time:<span class="ship-value">15-60 Days</span></p>
                                <p class="ship-info">Processing Time:<span class="ship-value">5 Days</span></p>
                                                                
                                <div class="pnl-shipping" style="display:none;z-index:99;">
                                    <div class="inner">
                                        <ul>
                                            <!-- start if service level is the default, then ignore-->
                                            <li>
                                                <label class="shipping-label clearfix" for="shipping-select-950551478-1">
                                                    <span class="lbl-shipping-remaining">15-60 Days </span>
                                                    <span class="price lbl-shipping-price">
                                                        <span class="currency">$</span>
                                                        <span class="value">0.00 <br></span>
                                                    </span>
                                                    <input type="hidden" value="ConfirmOrderAction" name="action">
                                                    <input type="hidden" value="anything" name="event_submit_do_update_logistics_service">
                                                    <input type="hidden" value="950551478" name="shopcartId">
                                                    <input type="radio" id="shipping-select-950551478-1" value="CPAM" checked="true" name="serviceName-950551478-1">
                                                    China Post Air Mail
                                                </label>
                                            </li>
                                            <!-- end if service level is the default, then ignore-->
                                            
                                                                                                                                    <!-- start loop service level-->
                                            <li>
                                                <label class="shipping-label clearfix" for="shipping-select-950551478-DHL">
                                                    <span class="lbl-shipping-remaining">3 -7 Days </span>
                                                        <span class="price lbl-shipping-price">
                                                            <span class="currency">$</span>
                                                            <span class="value">19.00<br></span>
                                                        </span>
                                                    <input type="radio" value="DHL" id="shipping-select-950551478-DHL" name="serviceName-950551478-1">
                                                        DHL
                                                </label>
                                            </li>
                                            <!-- end loop service level-->
                                                                                                                                                                                                                                                                        <!-- start loop service level-->
                                            <li>
                                                <label class="shipping-label clearfix" for="shipping-select-950551478-HKPAM">
                                                    <span class="lbl-shipping-remaining">15 -60 Days </span>
                                                        <span class="price lbl-shipping-price">
                                                            <span class="currency">$</span>
                                                            <span class="value">0.00<br></span>
                                                        </span>
                                                    <input type="radio" value="HKPAM" id="shipping-select-950551478-HKPAM" name="serviceName-950551478-1">
                                                        HongKong Post Air Mail
                                                </label>
                                            </li>
                                            <!-- end loop service level-->
                                                                                                                                    
                                        </ul>
                                        <div class="pnl-shipping-action clearfix">
                                            <input type="hidden" name="product-id" value="product-id-001">
                                            <input type="button" class="btn-ok" value=""><a class="btn-cancel">Cancel</a>
                                        </div>
                                    </div>
                                </div>
                                
                            <iframe class="maskIframe" style="display: none; z-index: 98; top: 0px; left: 0px;" frameborder="0"></iframe></td>
                            <!-- shipping end -->                           
                        </tr>
                                             </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="2" class="order-price">
                                <input type="hidden" name="coupon-item-116193999" class="coupon-id-input" value="">
                                <input type="hidden" name="coupon-code-item-116193999" class="coupon-code-input" value="">
                                <input type="hidden" class="son-order-price" value="9.30">
                                <p>
                                   <span>Subtotal:</span><span class="value">US $9.30</span>
                                   <span class="ship-text">Shipping:</span> <span class="value">US $0.00</span>
                                                                  </p>
                                                              <!--coupon start -->
                                <p class="use-coupon-box">   
                                    <a class="use-coupon-btn" href="javascript:void(0)">Use Coupon(or Coupon code)</a>
                                </p>
                                <p class="change-coupon-box hide">
                                    Coupon(<a class="change-coupon-btn" href="javascript:void(0)">Change Coupon</a>): <span class="coupon-price"></span>
                                </p>
                                                                <!-- coupon end-->
                                <p class="whole-coupon-box hide">Coupon:<span class="whole-coupon-price"></span></p>
                                <p>Total:<span class="whole-price">US $9.30</span></p>
                            </td>
                        </tr>
                    </tfoot>
                <!-- order foreach end-->
                </table>
                       
        
        <!-- All Total Price -->
        <div class="all-total-price">
            <a name="anchor-code"></a>
                        <a href="http://shoppingcart.aliexpress.com/shopcart/shopcartDetail.htm">&lt; Return to Shopping Cart</a> 
                        <span><em>All Total:</em><strong><span id="all-totalfee">US $51.04</span></strong></span>
        </div>
        <!-- -->
        <div class="foot-info-wrap clearfix">
            
            <div class="order-submit-info">
                                
                <!-- Place Order Button -->
                <div class="place-order-button">
                                            <button class="buttonRadiusB place-order-btn" id="place-order-btn" type="submit">Place Order</button>
                                    </div>
                
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
                </ul>
            </div>
            <div class="payment-method">
                <div id="inf-bp"><div class="bp-banner"><a href="http://www.aliexpress.com/buyerprotection/index.html" rel="nofollow"><img class="banner-img" src="${resource(dir: 'images/shoppingcart', file: 'bp_banner_975x75.png')}"></a></div></div>
                <span class="payment-method-title">Payment Methods:</span>
                <ul><li class="pm-type-visa-s"></li><li class="pm-type-mastercard-s"></li><li class="pm-type-westernUnion-s"></li><li class="pm-type-moneybookers-s"></li><li class="pm-type-maestro-s"></li><li class="pm-type-solo-s"></li><li class="pm-type-cartebleue-s"></li><li class="pm-type-4b-s"></li><li class="pm-type-euro6000-s"></li><li class="pm-type-cartasi-s"></li><li class="pm-type-postepay-s"></li><li class="pm-type-banktransfer-s"><strong>Bank Transfer</strong></li></ul>
            </div>
        </div>
     </div>