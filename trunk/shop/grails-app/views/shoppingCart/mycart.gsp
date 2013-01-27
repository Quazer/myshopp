<%@ page import="org.codehaus.groovy.grails.web.servlet.mvc.SynchronizerTokensHolder" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'beacon_ws.js')}"></script>
<script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'ae.js')}"></script>

                                
                
<title>Please Confirm Your Order</title>
<link href="${resource(dir: 'css/shoppingcart', file: 'place-order-v070310-MODERN_BROWSER-v_3238fc12a0262_0.css')}" rel="stylesheet" type="text/css" media="all">

<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'slidebox_gofirst-MODERN_BROWSER-v_1ec13981fed88_0.js')}"></script>



</head>

<body>
<%
def tokenKey = SynchronizerTokensHolder.store(session).generateToken(request.forwardURI)
 %>
 
<div id="header">
    <div class="clearfix" id="header-inner">
        <div class="logo" style="float:left">
            <a href="${createLink(url:'/')}">
                <img border="0" src="${resource(dir: 'images/shoppingcart', file: 'logo_stable_buyer.gif')}" alt="${message(code: 'default.shop.name')}">
            </a>
        </div>
        <ul class="help-secure">
            <li class="order-help">Need help? <a target="_blank" >Click here</a></li>
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
        <div id="wishington-error-box" class="message-box error-box-b hide">We are sorry, but due to legal restrictions, we are unable to provide services to residents located in Washington State.</div>
            
            
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
		                 <strong>We do not currently ship items to your country/region. Please select another address or contact us for more details.</strong>
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
        addressManagerAction:'',
        orderAction:'',
        addressManagerMethod:'',
        orderMethod:'',
        defaultCountryCode: '',
        selectedAddressCountryCode:'',
        couponServer: '',
        isFirst:false
    }
    </script>
    
    
    <!-- edit quantity dialog START -->
    <g:form action="updateQuantity" method="POST" name="dlg-edit-quantity" style="display: none; z-index: 99; left: 508px; top: 328px;">
        <div class="inner clearfix">
            <input type="hidden" name="productId" id="hid-product-id-quantity" value="">
            <a id="quantity-minus" class="quantity-minus" href="javascript:void(0);">minus</a>
            <input name="update_quantity" id="txt-editable-quantity" class="layout-input" autocomplete="off">
            <a id="quantity-add" class="quantity-add" href="javascript:void(0);">plus</a>
            <span id="dlg-unit-quantity">piece</span>
            <input type="hidden" name="shopcartId" id="hid-shopcart-id-quantity" value="">
            
           
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


<g:render template="/category/footer"></g:render>

                                        
<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'page-timing-MODERN_BROWSER-v_42e38a62962e5_0.js')}"></script>



</body>
</html>