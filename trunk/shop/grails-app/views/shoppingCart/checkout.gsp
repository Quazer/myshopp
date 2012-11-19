
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Checkout</title>
        <link type="text/css" rel="stylesheet" href="${resource(dir: 'css/shoppingcart/checkout', file: 'checkout.css')}">
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>


    
    </head>
    <body><script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'beacon_en.js')}"></script>             
             

        
<div id="header">
    <div id="logo">
                <a href="http://www.aliexpress.com/" title="AliExpress">
                <img border="0" src="${resource(dir: 'images/shoppingcart', file: 'logo_stable_buyer.gif')}" alt="${message(code: 'default.shop.name')}">
        </a>
            </div>
    <ul id="secure-help">
        <li class="help">
            Need help? <a href="http://help.aliexpress.com/categories_Payment.html" target="new">Click here now</a>
        </li>
        <li class="secure-logo">
            <a href="https://seal.verisign.com/splash?form_file=fdf/splash.fdf&dn=ALIPAY.ALIBABA.COM&lang=en" target="new">
                <img src="./Checkout_files/icon-other.jpg" width="80" height="30" alt="Verisign.com">
            </a>
            <span>You are securely signed in</span>
        </li>
    </ul>
</div>

<div id="page">
                <div class="ui-step">
            <ul>
                <li class="ui-before">Review product details</li>
                <li class="ui-prev">Confirm order</li>
                <li class="ui-current">Check out</li>
                <li class="ui-last">Wait for delivery</li>
            </ul>
        </div>
        
            
        <div id="cko-pay-detail">
        <h2>Checkout</h2>
                <div class="payment-detail">
            <dl>
                <dt>Status:</dt>
                <dd class="status">Please complete payment for your order(s).</dd>
            </dl>
                        <dl>
                <dt>Reminder:</dt>
                <dd class="remind">
                    Without payment, this order will be cancelled after:
                    <span class="time">
                        <strong id="RemainD">7</strong>&nbsp;days&nbsp;
                        <strong id="RemainH">24</strong>&nbsp;hours&nbsp;
                        <strong id="RemainM">59</strong>&nbsp;minutes&nbsp;
                        <strong id="RemainS">59</strong>&nbsp;seconds
                    </span>
                </dd>
            </dl>
                        <dl>
                <dt>Payable Total:</dt>
                <dd>
                    <span class="price">US $680.00</span>
                                        <span id="special-coupon-payable-tips" class="save" _originaldisplay="inline" style="display: inline;">
                                                Save <span class="price">US $5.00</span> on this order by paying with <a href="https://alipay.alibaba.com/checkout.htm?contractId=2012111746552553&showTips=true&wsOrderFrom=product_detail&wsOrderId=1019626884#" class="channel-master">MasterCard</a>!
                                            </span>
                                                                            </dd>
            </dl>
            <dl>
                <dt>Date:</dt>
                <dd>17 Nov 2012 19:02</dd>
            </dl>
        </div>
    </div>
    
    <div id="cko-pay-order">
        <g:render template="checkout/order_item"/>
    </div>
        
    <div id="cko-pay-method">
        <g:render template="checkout/payment_list"/>    
    </div>
    
            
        <div class="security-identity">
        <div class="bp-banner">
            <a rel="nofollow" href="http://www.aliexpress.com/buyerprotection/index.html" target="_blank">
                <img src="${resource(dir: 'images/shoppingcart', file: 'bp-banner-987x75.png')}">
            </a>
        </div>
        <span class="SSL"></span>
        <span class="TRW"></span>
    </div>
    </div>

<script type="text/javascript">
        var LANGUAGE_PACKAGE = {
        emptyCheckCode: 'Enter the characters',
        errorCardNumber: 'The card number you have entered is empty or invalid.',
        errorSecurityCode: 'The card security code is empty or invalid.',
        emptyCardholderName: 'Please enter your Cardholder Name.',
        errorCardholderName: 'Please enter English characters only.',
        errorQWalletAccount: 'Введите верный номер телефона, прикрепленный к аккаунту QIWI Кошелек.',
        systemInvalid: 'Извините, система временно недоступна, попробуйте позже.'
    };

        var G_FIELD = {
        contractId: "_fmh.c._0.c",
        orderAmount: "_fmh.c._0.p",
        payableCurrency: "_fmh.c._0.pa",
        paymentMethod: "_fmh.c._0.m",
        cardNumber: "_fmh.c._0.car",
        firstName: "_fmh.c._0.f",
        lastName: "_fmh.c._0.l",
        expDateMonth: "_fmh.c._0.e",
        expDateYear: "_fmh.c._0.ex",
        securityCode: "_fmh.c._0.cv",
        checkCode: "_fmh.c._0.ch"
    };


        var G_PARAM = {
                wuAccountNumber: "",

                contractId: "2012111746552553",

        relativePath: "https://alipay.alibaba.com",
        sessionId: "614da46046bc437783a406b0557fa91e",
        moneybookersAccount: "",

                firstPaymentFlag: "",
        specialCouponFlag: "true",
        specialCouponTokens: "MRC",
        newPayableAmount: "675.00",

                        defaultPaymentMethod: "" || "",

                checkCodeURL:"https://ushermes.alibaba.com/omeo/service/checkcode?sessionID=614da46046bc437783a406b0557fa91e&type=mark",

                countdown: {
            show: true,
            endTime: ${endDateOfOrder},
            intervalTime: ${orderStatusTracking.date.time}
        },

                paymentConfirmBox: {
            show :  false ,
            title : 'Price Adjustment from the Supplier',
            container : "new-pay-confirm-window",
            submitClass: "normal-btn"
        },

                        coremetricsParams: {
            tradeID         : '16748157',
            tradeGMV        : '680.00',
            sellerID        : '200037156',
            buyerID         : '131688756',
            buyerCity       : 'Da nang',
            buyerState      : 'Da nang',
            buyerCountry    : 'VN'
        },
        
                dmtrackConfig: {
            url  : "https://stat.alibaba.com/escrow/pay.html",
            payOrder :  {orderId:"",tradeId:"",type:"payMyOrder"} , 
            paypal :  {orderId:"",tradeId:"",type:"paypal"} 
        }

    }; 

</script>

<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'checkout.js')}"></script>

<img src="${resource(dir: 'images/shoppingcart', file: 'clear.png')}" alt="">

        <!--us-pci-ipay-web2 -->
<div id="footer">
<a href="http://www.alibaba.com/aboutalibaba/index.html"><strong>Company Info</strong></a> - <a href="http://www.alibaba.com/aboutalibaba/partnership_with_alibaba.html"><strong>Partnerships</strong></a><br>
    <a href="http://www.alibaba.com/">Manufacturers</a> - <a href="http://chinasuppliers.alibaba.com/">Gold Suppliers</a> - <a href="http://www.alibaba.com/catalogs/0/product.html">Buy</a> - <a href="http://importer.alibaba.com/">Sell</a> - <a href="http://tradeshow.alibaba.com/">Trade Shows</a> - <a href="http://us.my.alibaba.com/">My Alibaba</a> - <a href="http://exporter.alibaba.com/">China Export Services</a> - <a href="http://www.alibaba.com/trade/help/helpcenter">Help</a> - <a href="http://www.alibaba.com/sitemap.html">Site Map</a> - <a href="http://www.alibaba.com/trade/servlet/page/static/help/contact_us_answer">Customer Service</a>
    <p style="margin:0">
    Browse Alphabetically: 
    <a href="http://www.aliexpress.com/product.html">All Products</a>, 
        <a href="http://www.aliexpress.com/free-shipping.html">Free Shipping</a>, 
        <a href="http://www.aliexpress.com/wholesale.html">Wholesale Product</a>, 
        <a href="http://www.alibaba.com/countrysearch/continent.html">Countries</a><!-- - 
        <a href="http://www.alibaba.com/sitemap/archives.html">Archive</a>-->
        <br><br>
<a href="http://www.alibaba.com/aboutalibaba/aligroup/index.html">Alibaba Group</a>: 
Alibaba.com: <a href="http://china.alibaba.com/" target="_blank">Alibaba China</a>
- <a href="http://www.alibaba.com/" target="_blank">Alibaba International</a> 
- <a href="http://www.alibaba.co.jp/" target="_blank">Alibaba Japan</a> 
| <a href="http://www.taobao.com/" target="_blank">Taobao</a> 
| <a href="http://www.alipay.com/" target="_blank">Alipay</a>
| <a href="http://www.yahoo.com.cn/" target="_blank">Yahoo! China</a> 
| <a href="http://www.koubei.com/" target="_blank">Koubei.com</a> 
| <a href="http://www.alisoft.com/" target="_blank">Alisoft</a>
| <a href="http://www.alimama.com/" target="_blank">Alimama</a>
    </p>
    <a rel="nofollow" href="http://www.alibaba.com/trade/servlet/page/help/rules_and_policies/products_listing_policy">Product Listing Policy</a> - <a rel="nofollow" href="http://www.alibaba.com/trade/servlet/page/help/rules_and_policies/intellectual_property_policy">Intellectual Property Policy and Infringement Claims</a> - <a rel="nofollow" href="http://www.alibaba.com/trade/servlet/page/help/rules_and_policies/privacy_policy">Privacy Policy</a> - <a rel="nofollow" href="http://www.alibaba.com/trade/servlet/page/help/rules_and_policies/term_of_use">Terms of Use</a> - <a href="http://www.alibaba.com/trade/servlet/page/static/safetrade/index">Safe Trading Tips</a> - <a rel="nofollow" href="http://legal.alibaba.com/legal/site/login/login.htm?site_type=international&language_id=english">Report Intellectual Property Right Infringement</a>
<br><a href="http://www.alibaba.com/trade/servlet/page/static/copyright_policy">Copyright Notice</a> © 1999-2009  Alibaba.com Limited and/or its subsidiaries and licensors. All rights reserved.
</div>


    
</body><span id="skype_highlighting_settings" display="none" autoextractnumbers="1"></span><object id="skype_plugin_object" location.href="https://alipay.alibaba.com/checkout.htm?contractId=2012111746552553&amp;showTips=true&amp;wsOrderFrom=product_detail&amp;wsOrderId=1019626884" location.hostname="alipay.alibaba.com" style="position: absolute; visibility: hidden; left: -100px; top: -100px;" width="0" height="0" type="application/x-vnd.skype.click2call.chrome.5.7.0"></object></html>