<%@ page import="org.codehaus.groovy.grails.web.servlet.mvc.SynchronizerTokensHolder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'beacon_ws.js')}"></script>
<script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'ae.js')}"></script>

                                
                
<title>Please Confirm Your Order - AliExpress</title>
<link href="${resource(dir: 'css/shoppingcart', file: 'place-order-v070310-MODERN_BROWSER-v_3238fc12a0262_0.css')}" rel="stylesheet" type="text/css" media="all">

<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'slidebox_gofirst-MODERN_BROWSER-v_1ec13981fed88_0.js')}"></script>



</head>

<body>
<%
def tokenKey = SynchronizerTokensHolder.store(session).generateToken(request.forwardURI)
 %>
 
<div id="header">
    <div class="clearfix" id="header-inner">
        <div class="ali-logo">
            <a href="http://www.aliexpress.com/">
                <img border="0" src="${resource(dir: 'images/shoppingcart', file: 'logo_stable_buyer.gif')}" alt="${message(code: 'default.shop.name')}">
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
     <!--  order info [start]  -->
            
    <div id="order-false-warn">
        <div id="wishington-error-box" class="message-box error-box-b hide">We are sorry, but due to legal restrictions, AliExpress is unable to provide escrow services to residents located in Washington State.</div>
            
            
    </div>
    <g:form name="place-order-form"  id="place-order-form" method="post" action="actionConfirmOrder">
        <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" id="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" value="${tokenKey}">
        <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_URI" id="org.codehaus.groovy.grails.SYNCHRONIZER_URI" value="${request.forwardURI }">

	    <input type="hidden" id="place-order-action" name="action" value="/order_action">
	    <input type="hidden" id="place-order-method" name="event_submit_do_create_order" value="anything">  
	    <input id="place-order-change-address" type="hidden" name="changeAddressPage" value="false">
	    <input name="_csrf_token_" type="hidden" value="4a36nltiesee">
	    
	        
	    <input type="hidden" id="edit-address-id" name="modifyId" value="">
	    <input type="hidden" id="edit-address-statue" name="addressOperateFlag" value="info">
	    <input type="hidden" id="transactionbp" name="transactionbp" value="">  
	        
	        <!--  PAGE PARAMETER DEFINE [start]
	          isFirst: for the user who have no address.
	          defaultCountryCode: the country selected in shopcart.
	          selectedAddressCountryCode: the country which is used caculate freight of orders.
	    -->
	             
	    
	                
	    <!--   Page parameter define [end]  --> 
	     
	    <div id="address">
	        <a name="anchor-address"></a>
	
	
		<!-- Add New Address -->
		<div class="order-address hide" id="edit-address">
		    <!-- Selected Country Ship Not Support -->
		    <div class="board errorA hide">
		         <ul class="error-list">
		             <li>
		                 <strong>This supplier does not currently ship items to your country/region. Please select another address or contact the supplier for more details.</strong>
		                 <p>Wholesale- Hot best Christmas Gift!! 5pcs/lot New Shuffle 3rd Generation 4GB MP3 MP4 Player (N/A)</p>
		             </li>
		         </ul>
		    </div>
		
		    <div class="order-title">
		        <h2 id="edit-address-title">
		                            Please enter a new shipping address. Don't forget to save!
		                    </h2>
		    </div>
		
		    <!--Address Edit Form -->
		    <g:render template="edit_address_form" model="[tokenKey:tokenKey]"/>
		</div>
	
	    <!-- Adddress List -->
	    <g:render template="address_list_form" model="[tokenKey:tokenKey]"/>
	
	
	    </div>
	    
        <!--  order info [start]  -->
	        
        <!-- Order Container -->
        <g:render template="order_form" model="[tokenKey:tokenKey]"/>
       <!-- order info  [end]-->
    </g:form>

        
        
                

    <script type="text/javascript">
    window.PLACEORDER = {
        addressManagerAction:'/mailing_address_action',
        orderAction:'/order_action',
        addressManagerMethod:'event_submit_do_save_or_update_mailing_address',
        orderMethod:'event_submit_do_create_order',
        defaultCountryCode: '',
        selectedAddressCountryCode:'VN',
        couponServer: 'http://escrow.alibaba.com',
        isFirst:false
    }
    </script>
    
    
    <!-- edit quantity dialog START -->
    <g:form action="updateQuantity" method="POST" name="dlg-edit-quantity" style="display: none; z-index: 99; left: 508px; top: 328px;">
        <div class="inner clearfix">
		    <script type="text/javascript">
		    $(function() {
			    alert('here')
			    document.write('<a>cecececec</a>')
		        alert($('#org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN').val())
		    });
		    </script>
            <input type="hidden" name="productId" id="hid-product-id-quantity" value="608514088">
            <a id="quantity-minus" class="quantity-minus" href="javascript:void(0);">minus</a>
            <input name="update_quantity" id="txt-editable-quantity" class="layout-input" autocomplete="off">
            <a id="quantity-add" class="quantity-add" href="javascript:void(0);">plus</a>
            <span id="dlg-unit-quantity">piece</span>
            <input type="hidden" name="shopcartId" id="hid-shopcart-id-quantity" value="950551662">
            
           
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" id="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" value="${tokenKey}">
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_URI" id="org.codehaus.groovy.grails.SYNCHRONIZER_URI" value="${request.forwardURI }">
            
            <input type="hidden" name="action" value="ConfirmOrderAction">
            <input type="hidden" name="event_submit_do_update_quantity" value="anything">
            <input type="button" id="btn-ok-quantity" value="OK">
            <a id="btn-cancel-quantity">Cancel</a>
            <div class="inventory-wrapper" style="display: block;">Maximum:<span id="inventory-value">72</span></div>
        </div>
    </g:form>
    <!-- edit quantity dialog END -->
    
    <!-- edit shipping form START -->
    <form action="updateShippingMethod" method="POST" name="shippingEditForm" id="shipping-edit-form" style="display:none;z-index:99;">
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" id="org.codehaus.groovy.grails.SYNCHRONIZER_TOKEN" value="${tokenKey}">
            <input type="hidden" name="org.codehaus.groovy.grails.SYNCHRONIZER_URI" id="org.codehaus.groovy.grails.SYNCHRONIZER_URI" value="${request.forwardURI }">

    </form>
    <!-- edit shipping form END -->
</div>

    <!-- Coupon start -->
        <g:render template="coupon_form"/>
    <!-- Coupon end -->


<div id="order-full-mask" style="display: none;"><iframe class="hack-iframe" src="about:blank" frameborder="no"></iframe></div>



<div class="footer" id="footer">
    <a rel="nofollow" href="http://www.alibaba.com/aboutalibaba/index.html"><strong>Company Info</strong></a> - <a rel="nofollow" href="http://www.alibaba.com/aboutalibaba/partnership_with_alibaba.html"><strong>Partnerships</strong></a><br>
    <a href="http://www.aliexpress.com/">Wholesale</a> - <a rel="nofollow" href="http://www.aliexpress.com/all-wholesale-products.html">Buy</a> - <a rel="nofollow" href="http://seller.aliexpress.com/">Sell</a> - <a href="http://www.aliexpress.com/activities/prmotions/index.html">All Promotions</a> - <a rel="nofollow" href="http://escrow.alibaba.com/?tracelog=ws_topbar">My Orders</a> - <a rel="nofollow" href="http://help.aliexpress.com/?tracelog=ws_topbar">Help</a> - <a href="http://www.aliexpress.com/sitemap.html">Site Map</a> - <a rel="nofollow" href="http://www.aliexpress.com/help/contactus.htm">Customer Service</a>
    <p>
    Browse Alphabetically:
    <a href="http://www.aliexpress.com/product.html">All Products</a>,
    <a href="http://www.aliexpress.com/free-shipping.html">Free Shipping</a>,
    <a href="http://www.aliexpress.com/wholesale.html">Wholesale Product</a>,
    <a href="http://www.aliexpress.com/promotion.html">Promotion</a>
    <br><br>
    <a rel="nofollow" href="http://www.alibaba.com/aboutalibaba/aligroup/index.html">Alibaba Group</a>:
    Alibaba.com: <a rel="nofollow" href="http://china.alibaba.com/" target="_blank">Alibaba China</a>
    - <a href="http://www.alibaba.com/" target="_blank">Alibaba International</a>
    - <a href="http://www.aliexpress.com/" target="_blank">AliExpress</a>
    - <a rel="nofollow" href="http://www.alibaba.co.jp/" target="_blank">Alibaba Japan</a>
    | <a rel="nofollow" href="http://www.taobao.com/" target="_blank">Taobao</a>
    | <a rel="nofollow" href="http://www.alipay.com/" target="_blank">Alipay</a>
    | <a rel="nofollow" href="http://www.yahoo.com.cn/" target="_blank">Yahoo! China</a>
    | <a rel="nofollow" href="http://www.koubei.com/" target="_blank">Koubei.com</a>
    | <a rel="nofollow" href="http://www.alisoft.com/" target="_blank">Alisoft</a>
    </p>
    <a rel="nofollow" href="http://news.alibaba.com/article/detail/help/100105711-1-product-listing-policy.html">Product Listing Policy</a> - <a rel="nofollow" href="http://news.alibaba.com/article/detail/help/100104162-1-intellectual-property-protection-policy-infringement.html">Intellectual Property Policy and Infringement Claims</a> - <a rel="nofollow" href="http://news.alibaba.com/article/detail/help/100103729-1-privacy-policy.html">Privacy Policy</a> - <a rel="nofollow" href="http://news.alibaba.com/article/detail/help/100103727-1-terms-use.html">Terms of Use</a> - <a rel="nofollow" href="http://escrow.aliexpress.com/buyerprotection/index.html?tracelog=ws_topbar">Safe Trading Tips</a> - <a rel="nofollow" href="http://legal.alibaba.com/legal/site/login/login.htm?site_type=international&language_id=english">Report Intellectual Property Right Infringement</a>
    <br><a rel="nofollow" href="http://www.alibaba.com/trade/servlet/page/static/copyright_policy">Copyright Notice</a> © 1999-2011 Alibaba.com Hong Kong Limited and licensors. All rights reserved.
</div>


                                        
<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'page-timing-MODERN_BROWSER-v_42e38a62962e5_0.js')}"></script>



</body><span id="skype_highlighting_settings" display="none" autoextractnumbers="1"></span><object id="skype_plugin_object" location.href="http://shoppingcart.aliexpress.com/order/confirm_order.htm?affiliate=BBACDEA6E67C159F45EEB9F9022F00A2E7DB350F4C5BBA5AE5049C04F3B14F33D0FAA2B456E90C395DC02F7BC37A3BB74A7FDADFB18DB3E5AF5541DAD9F9214A7D08C4F6894B06ACA2D36965736A28F1C2336C9D1A64BAC95F1DB6F9CC3F5751&amp;wsOrderFrom=shopcart&amp;availableProductShopcartIds=950551662,950551478,&amp;ws_score_session_id=a9d145fa5244422f82425f942645daaf#anchor-950551662" location.hostname="shoppingcart.aliexpress.com" style="position: absolute; visibility: hidden; left: -100px; top: -100px;" width="0" height="0" type="application/x-vnd.skype.click2call.chrome.5.7.0"></object></html>