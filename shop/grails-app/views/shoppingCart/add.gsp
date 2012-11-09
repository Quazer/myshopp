
<%@ page import="com.nghia.shop.ShoppingCart" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main_product_detail">
        <g:set var="entityName" value="${message(code: 'shoppingCart.label', default: 'ShoppingCart')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
<div class="text shopping_cart">
            <h1 class="sc_title">
                Shopping Cart</h1>
            <div class="saved_cart_t">
                
                <a href="https://cart.dx.com/shoppingcart.dx?save=items" id="ctl00_content_aSave" class="saved_c_save">
                    Save all items for later</a>
            </div>
            <script type="text/javascript">
                notifyDOMReady("SavedCart.runBindSavedEvents");
            </script>
            <div class="clear">
            </div>
            <input id="session_obj" name="session_obj" type="hidden" value="kjo0rsajv0o00usuvwowe1l2">
            
            
            
            
            <div id="ctl00_content_lblShoppingCartEmpty" style="display: none;" class="empty">
                <p id="empty_cart" style="color: #ff6600; height: 22px">
                    Shopping cart is empty.
                </p>
                <p>
                    <img src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/shopping-cart_06.gif">
                    <span style="width: 4px"></span>
                    <a id="ctl00_content_hlContinueShopping" href="http://dx.com/">Back to DX Home continue shopping</a>
                </p>
                
                <p class="text">
                    Quick Order:
                    <input type="text" id="cartEmptySku" class="sku_num" value="sku..." onfocus="javascript:_clearText(this);" onclick="javascript:_clearText(this);" onkeypress="_keyPress(this,event)">
                    <input type="button" value="Go!" onclick="javascript:_goClick('cartEmptySku');">
                </p>
            </div>
            
            
            
            
            
            <div id="ctl00_content_cartPanel">
                <div id="shoppingcart">
                            <table id="table2" cellpadding="5" cellspacing="1" class="cart clear_sc" style="line-height: 15px;
                                font-size: 12px;">
                                <tbody>
                                <tr>
                                    <th class="sku">
                                        SKU
                                    </th>
                                    <th class="name">
                                        Product Name
                                    </th>
                                    <th class="qty">
                                        Quantity
                                    </th>
                                    <th class="price">
                                        Price
                                    </th>
                                    <th class="total">
                                        Line Total
                                    </th>
                                    <th class="remove">
                                        Options
                                    </th>
                                </tr>
                            <g:each>
                            </g:each>
                            <tr class="item">
                                <td class="sku">
                                    164561
                                </td>
                                <td class="name">
                                    
                                    <a class="producttitlelink" href="http://dx.com//p/164561">
                                    MG705 7" Capacitive Screen Android 4.0 Tablet PC w/ Dual SIM / TF / Wi-Fi / HDMI / Camera - White 
                                    </a>
                                    
                                    <br>
                                    
                                </td>
                                <td class="quantity" align="center" id="">
                                    <a class="adjust" href="https://cart.dx.com/shoppingcart.dx/add.164561~quantity.1">-</a>
                                    <input type="hidden" value="164561">
                                    <input name="ctl00$content$listCart$ctl01$qty" type="text" id="ctl00_content_listCart_ctl01_qty" maxlength="5" class="qty" value="1">
                                    <a class="adjust" href="https://cart.dx.com/shoppingcart.dx/add.164561~quantity.2">+</a>
                                </td>
                                <td class="price">
                                    $163.90
                                </td>
                                <td class="total">
                                    $163.90
                                </td>
                                <td class="remove">
                                    <a title="remove" class="saved_c_remove" href="https://cart.dx.com/shoppingcart.dx/remove.164561">&nbsp;</a><a rel="164561" href="javascript:void(0)" title="add to wish list" class="saved_c_wishlist">&nbsp;</a>
                                </td>
                            </tr>
                        
                            
                        
                            </tbody>
                      </table>
                        
                </div>

                <div class="commonWrap clearfix" >
                    <div class="sum" id="sum" style="float:right">
                    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="priceBox">
                      <tbody><tr>
                        <th>Order Subtotal:</th>
                        <td><span id="ctl00_content_lblProducts" class="subtotal">$163.91</span></td>
                      </tr>
                      <tr class="lastTr">
                        <th><b>Shipping Method</b>:</th>
                        <td>
                            <div style="position: relative;">
                                <select name="ctl00$content$listShippingMethod" onchange="javascript:setTimeout('__doPostBack(\'ctl00$content$listShippingMethod\',\'\')', 0)" id="ctl00_content_listShippingMethod">
        <option selected="selected" value="0">Air Mail ($0.00)</option>
        <option value="2">EMS Express ($21.49)</option>

    </select>
                                <div id="selHover" style="display: none; position: absolute; width: 100%; height: 100%; top: 0px; left: 0px; "></div>
                            </div>
                        </td>
                      </tr>
                      <tr style="display: none; " id="tollTipsPanel">
                        <td colspan="2" class="clearfix">
                            <div class="toll_tips"><b>Tips:</b> All the products from AU Direct will be delivered by Toll Global Express,with free shipping.</div>
                        </td>
                      </tr>
                      <tr class="GrandTotal">
                        <th>Grand Total:</th>
                        <td><span id="ctl00_content_lblGrandTotal" class="grand_total">$163.91</span></td>
                      </tr>
                    </tbody></table>
                    <div id="ctl00_content_dxPoints" class="dx_points">
                        This order earned
                        <span id="ctl00_content_points">16</span>
                        points!
                        <a href="http://help.dealextreme.com/Frequently%20Asked%20Questions.ashx?NoRedirect=1#How_to_use_the_points_collected_in_my_DX_account_35" title="learn more" target="_blank">
                            <img src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/information.gif" alt="learn more" border="0">
                        </a>
                    </div>
                       
                    </div>
                    <div class="options" id="options">
                        <p>
                            Any Coupon?
                            <input name="ctl00$content$txtCoupon" type="text" maxlength="20" id="ctl00_content_txtCoupon" style="width:100px;">
                            <input type="submit" name="ctl00$content$btnApplyCoupon" value="Apply" id="ctl00_content_btnApplyCoupon" class="btn">
                            <br>
                            <br>
                            You can also:<br>
                            <a href="https://dx.com/">
                                continue shopping
                                »</a>
                            <br>
                            <a href="https://cart.dx.com/shoppingcart.dx/c.CLEAR">
                                empty your cart
                                »</a></p>
                    </div>
                </div>
                
                <%--
                <div class="commonWrap clearfix2">
                    <div id="ctl00_content_pCheckout" class="checkout">
                        <ul class="paymentWrap" id="">
                        <li id="ctl00_content_divCC" class="method3" style="display: block">
                                <span class="cc_btn_panel">
                                    <input type="submit" name="ctl00$content$lnkCreaditCardCheckOut" value="" id="ctl00_content_lnkCreaditCardCheckOut" class="CreditCard" alternatetext="Credit card checkout.">
                                    <div class="cc_safebox">
                                        <b class="lock"></b>
                                        <span class="safe">
                                            Shopping on DX is Safe and Secure!
                                        </span>
                                        <span class="notAccepted">Credit Cards are not accepted on orders over $3000.0!</span>
                                        <span class="m">The Credit Cards System is being maintained.</span>
                                        <i class="arrowhead_b"></i>
                                    </div>
                                </span>
                        </li>
                        <li id="ctl00_content_divPPSC" class="method1" style="display: block">
                                <input type="submit" name="ctl00$content$lnkPayPalExpressCheckout" value="" id="ctl00_content_lnkPayPalExpressCheckout" class="payPal" alternatetext="Checkout Securely via PayPal Express Checkout">
                        </li>
                        <li id="ctl00_content_div3D" class="method3 div3D" style="display: none">
                            <input type="submit" name="ctl00$content$lnk3DCheckout" value="" id="ctl00_content_lnk3DCheckout" class="secure3D" alternatetext="3D checkout.">
                            <input type="image" src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/3d_checkout.gif" id="btn3D" style="display: none">
                        </li>
                        
                        <li id="ctl00_content_divPO" class="method4" style="display: none">
                            <input type="submit" name="ctl00$content$lnkPOCheckout" value="" id="ctl00_content_lnkPOCheckout" class="placeYourOrder" alternatetext="Place your order.">
                        </li>
                            <!--<li id="ctl00_content_divWU" class="method5">
                                <input type="submit" name="ctl00$content$ibWUCheckout" value="" id="ctl00_content_ibWUCheckout" class="westernUnion" AlternateText="Western Union Money Transfer" />
                            </li>-->
                            <li style="display: none;" id="ecxHint" class="hint_dlg">
                            <div class="title">
                                Join our trial payment</div>
                            <img alt="icon" class="icon" src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/info.png">
                            <div class="msg">
                                Would you like to experience our newly designed PayPal Express Checkout?</div>
                        </li>

                        </ul>
                       
                        <div class="confidencebox">
                            <h3 class="title"><a target="_blank" href="http://help.dealextreme.com/Frequently%20Asked%20Questions.ashx#Is_it_safe_to_buy_from_DX_with_Credit_Card_15">Shop with Confidence</a></h3>
                            <ul class="safe_authe_list">
                                <li>
                                    <script src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/seal_js.php"></script><img id="trustwaveSealImage" src="https://sealserver.trustwave.com/seal_image.php?customerId=x4inNpZ9ZlKuQRKHKIaQ7ytnFoIWgo&amp;size=105x54&amp;style=normal" border="0" style="cursor:pointer;" onclick="javascript:window.open('https://sealserver.trustwave.com/cert.php?customerId=x4inNpZ9ZlKuQRKHKIaQ7ytnFoIWgo&amp;size=105x54&amp;style=normal', 'c_TW', 'location=no, toolbar=no, resizable=yes, scrollbars=yes, directories=no, status=no, width=615, height=720'); return false;" oncontextmenu="javascript:alert('Copying Prohibited by Law - Trusted Commerce is a Service Mark of TrustWave Holdings, Inc.'); return false;" alt="This site protected by Trustwave's Trusted Commerce program" title="This site protected by Trustwave's Trusted Commerce program"><img id="trustwaveSealImage" src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/seal_image.php" border="0" style="cursor:pointer;" onclick="javascript:window.open('https://sealserver.trustwave.com/cert.php?customerId=x4inNpZ9ZlKuQRKHKIaQ7ytnFoIWgo&amp;size=105x54&amp;style=normal', 'c_TW', 'location=no, toolbar=no, resizable=yes, scrollbars=yes, directories=no, status=no, width=615, height=720'); return false;" oncontextmenu="javascript:alert('Copying Prohibited by Law - Trusted Commerce is a Service Mark of TrustWave Holdings, Inc.'); return false;" alt="This site protected by Trustwave's Trusted Commerce program" title="This site protected by Trustwave's Trusted Commerce program">
                                    <noscript>
                                        &amp;lt;a href="https://sealserver.trustkeeper.net/compliance/cert.php?code=x4inNpZ9ZlKuQRKHKIaQ7ytnFoIWgo&amp;amp;style=normal&amp;amp;size=105x54&amp;amp;language=en" target="hATW"&amp;gt;
                                            &amp;lt;img src="//sealserver.trustkeeper.net/compliance/seal.php?code=x4inNpZ9ZlKuQRKHKIaQ7ytnFoIWgo&amp;amp;style=normal&amp;amp;size=105x54&amp;amp;language=en" border="0" alt="Trusted Commerce" /&amp;gt;
                                        &amp;lt;/a&amp;gt;
                                    </noscript>
                                </li>
                                <li>
                                    <a target="_blank" href="https://www.mcafeesecure.com/RatingVerify?ref=dx.com">
                                        <img width="115" height="32" border="0" src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/12.gif" alt="McAfee SECURE" oncontextmenu="alert('Copying Prohibited by Law - McAfee Secure is a Trademark of McAfee, Inc.'); return false;">
                                    </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;</li>
                                <li>
                                    <a href="http://dx.com/Page-Conditions#return_policy" rel="nofollow" target="_blank" title="Return policy">
        <img alt="Satisfaction Guaranteed - or your money back" src="./DX Shopping Cart - great design, price and selection on cool gadgets._files/PolicyLogo.png">
    </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;</li>
                            </ul>
                        </div>
                       
                        <!--<h2>
                            Terms and Policy</h2>
                        <a href="/Iframe/TermsAndPolicy.aspx" target="_blank" class="policy_label">
                            View in new window/printable version</a>
                        <div style="width:384px;height:105px;overflow:hidden">
                        <iframe class="policy" src="/Iframe/TermsAndPolicy.aspx"></iframe>
                        </div>-->
    
                        <div class="PolicyWrap">
                            <span class="policy_label" id=""><input id="ctl00_content_agree" type="checkbox" name="ctl00$content$agree" checked="checked"><label for="ctl00_content_agree">I agree to the DX.com Terms and Policy.</label></span> <a href="https://dx.com/Page-Conditions" target="_blank"> view detail </a>
                            <p class="errorTip" style="display: none; ">Please review the DX.com Terms and Conditions and by clicking on 'I agree to the DX.com Terms and Policy' to continue checkout. </p>
                        </div>
                    </div> <!--checkout end--> 
                    <!--<script type="text/javascript">
                        notifyDOMReady("runCart");
                        notifyDOMReady("processPayment");
                    </script>-->
                    <div class="recommendWrap">
                        <div class="icons"><!--put_icon_here--></div>
                        <div class="tt_gadgets" id="recommendProducts" style="display: none; "></div>
    
                        <script type="text/javascript" language="javascript">
                            notifyDOMReady("runCart");
                            notifyDOMReady("processPayment");
                        </script>                    
                        <div class="instructions">
                            <h3>Some friendly tips:</h3>
                            <div class="instructionsText">
                                <p>1.Please enter your correct shipping address in English while checking out with PayPal. If you would like to ship your order to another address than the one in paypal account, you may update address via your account.</p>
                                <p>2.Certain items (such as green lasers) are restricted in some countries. Please check your local regulations before purchasing these items.</p>
                                <p>3.EMS service is available for the below countries, if your region is not listed, please choose airmail service instead.</p>
                                Argentina, Australia, Austria, Bahrein...
                                <a href="https://cart.dx.com/shoppingcart.dx#view all countries" onclick="$('countries').toggle(); return false;" class="click">
                                    -
                                    View all countries
                                    -</a>
                                <p id="countries" style="display:none;">
                                    Argentina, Australia, Austria, Bahrain, Bangladash, Belarus, Belgium, Botswana, Brazil, Bulgaria, Burkina, Cambodia, Canada, Chad, Colombia, Congo, Cote D'ivoire, Croatia, Cuba, Cyprus, Czech, Denmark, Djibouti, Egypt, Estonia, Ethiopia, Faso, Finland, France, Gabon, Germany, Ghana, Greece, Guinea, Guyana, Hongkong, Hungary, India, Indonesia, Iran, Ireland, Israel, Italy, Japan, Jordan, Kazakhstan, Kenya, Korea, Kuwait, Laos, Latvia, Luxembourg, Macau, Madagascar, Malaysia, Mali, Malta, Mexico, Mongolia, Morocco, Mozambique, Nepal, New Zealand, Niger, Nigeria, Norway, Oman, Pakistan, Panama, Peru, Philippines, Poland, Portugal, Qatar Cayman, Romania, Russia, Rwanda, Senegal, Singapore, Spain, Sri Lanka, Sweden, Switzerland, Syria, Thailand, Tunisia, Turkey, Uae, Uganda, Ukraine, United Kingdom, United States, Viet Nam
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                 --%>
                 
                <input name="ctl00$content$txt_Params" type="hidden" id="ctl00_content_txt_Params">
                <script type="text/javascript" language="javascript">
                    var params = document.getElementById('ctl00_content_txt_Params').value;
                    if (params) {
                        params = eval(params);
                        notifyDOMReady("AddtoCartByRecommend");
                    }
                </script>

          
</div>
            
        </div>
    </body>
</html>
