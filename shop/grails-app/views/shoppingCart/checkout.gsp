<%@ page import="com.nghia.shop.CommonUtils" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Checkout</title>
        <link type="text/css" rel="stylesheet" href="${resource(dir: 'css/shoppingcart/checkout', file: 'checkout.css')}">
        <script type="text/javascript" async="" src="${resource(dir: 'js/shoppingcart', file: 'base-mod.js')}"></script>


    
    </head>
    <body><script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'beacon_en.js')}"></script>             
             

        
<div id="header" style="height:100px">
    <div id="logo">
                <a href="/" title="${message(code: 'default.shop.name')}">
                <img border="0" src="${resource(dir: 'images/shoppingcart', file: 'logo_stable_buyer.gif')}" alt="${message(code: 'default.shop.name')}">
        </a>
            </div>
    <ul id="secure-help">
        <li class="help">
            Need help? <a href="http://help.aliexpress.com/categories_Payment.html" target="new">Click here now</a>
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
                    <span class="price">${CommonUtils.totalPriceOfShopCart(orderStatusTracking?.shoppingCart) }</span> 
                    <span style="color: #CB1F16;font-weight: bold;">${CommonUtils.showCurrency()}</span>
                </dd>
            </dl>
            <dl>
                <dt>Date:</dt>
                <dd><g:formatDate date="${orderStatusTracking?.date}" formatName="product.label.date" /></dd>
            </dl>
        </div>
    </div>
    
    <div id="cko-pay-order">
        <g:render template="checkout/order_item"/>
    </div>
        
    <div id="cko-pay-method">
        <g:render template="checkout/payment_list"/>    
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
        orderAmount: "total_prices",
        payableCurrency: "total_prices_currency",
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

                checkCodeURL:"",

                countdown: {
            show: true,
            endTime: ${(orderStatusTracking.date + 7).time},
            intervalTime: ${orderStatusTracking.date.time}
        },

                paymentConfirmBox: {
            show :  false ,
            title : 'Price Adjustment from the Supplier',
            container : "new-pay-confirm-window",
            submitClass: "normal-btn"
        },

                        coremetricsParams: {
            tradeID         : '',
            tradeGMV        : '',
            sellerID        : '',
            buyerID         : '',
            buyerCity       : '',
            buyerState      : '',
            buyerCountry    : ''
        },
        
                dmtrackConfig: {
            url  : "",
            payOrder :  {orderId:"",tradeId:"",type:"payMyOrder"} , 
            paypal :  {orderId:"",tradeId:"",type:"paypal"} 
        }

    }; 

</script>

<script type="text/javascript" src="${resource(dir: 'js/shoppingcart', file: 'checkout.js')}"></script>

<img src="${resource(dir: 'images/shoppingcart', file: 'clear.png')}" alt="">

<g:render template="/category/footer"/>


    
</body><span id="skype_highlighting_settings" display="none" autoextractnumbers="1"></span><object id="skype_plugin_object" location.href="https://alipay.alibaba.com/checkout.htm?contractId=2012111746552553&amp;showTips=true&amp;wsOrderFrom=product_detail&amp;wsOrderId=1019626884" location.hostname="alipay.alibaba.com" style="position: absolute; visibility: hidden; left: -100px; top: -100px;" width="0" height="0" type="application/x-vnd.skype.click2call.chrome.5.7.0"></object></html>