<%@ page import="com.nghia.shop.CommonUtils" %>
<%@ page import="com.nghia.shop.Product" %>
<%@ page import="com.nghia.shop.ShippingMethod" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main_product_detail">
        <g:set var="entityName" value="${message(code: 'product.label')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="pdetail_wrapper">
	    <!-- product photo -->
	    <div class="product_photo">
	        <div id="midPicBox" class="photo_wrapper">
	            <a id="product-large-image" href="${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}" target="_blank" rel="nofollow">
	                <img src="${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}" alt="${productInstance?.name }" style=""></a>
	            <p class="viewMax hidden" style="display: none; ">
	            
	                <b></b><span>View Larger Image</span></p>
	                
	            <div class="showloader overlay hidden loadModal">
	            </div>
	        </div>
	        <div class="small_photo" style="overflow: hidden; position: relative; display: block; ">
	            <div class="slides_control" style="position: relative; width: 750px; height: 47px; left: -250px; ">
	                    <ul id="product-small-images" class="clearfix" style="position: absolute; top: 0px; left: 250px; z-index: 0; ">
	                            <li class="">
	                               <a href="${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}" rel="{&quot;sImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}&quot;, &quot;mImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}&quot;, &quot;bImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}&quot;}" target="_blank">
	                                   <img src="${createLink(controller : 'imageStore',action: 'productImages', id: productInstance?.productImage?.id)}">
	                               </a>
	                            </li>
                                <g:each in="${productInstance?.images}" var="imageStoreInstance">
	                                <li><a href="${createLink(controller : 'imageStore',action: 'productImages', id: imageStoreInstance?.id)}" rel="{&quot;sImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: imageStoreInstance?.id)}&quot;, &quot;mImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: imageStoreInstance?.id)}&quot;, &quot;bImg&quot;:&quot;${createLink(controller : 'imageStore',action: 'productImages', id: imageStoreInstance?.id)}&quot;}" target="_blank">
	                                    <img src="${createLink(controller : 'imageStore',action: 'productImages', id: imageStoreInstance?.id)}">
	                                    </a>
	                                </li>

                                </g:each>
	                    </ul> 
	                    <!-- 
	                    <ul id="product-small-images" class="clearfix" style="position: absolute; top: 0px; left: 250px; z-index: 0; display: none; ">
	                            <li><a href="http://img.dxcdn.com/productimages/sku_159612_6.jpg" rel="{&quot;sImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_6_small.jpg&quot;, &quot;mImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_6.jpg&quot;, &quot;bImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_6.jpg&quot;}" target="_blank">
	                               <img src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_159612_6_small.jpg"></a></li>
	                            <li><a href="http://img.dxcdn.com/productimages/sku_159612_7.jpg" rel="{&quot;sImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_7_small.jpg&quot;, &quot;mImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_7.jpg&quot;, &quot;bImg&quot;:&quot;//img.dxcdn.com/productimages/sku_159612_7.jpg&quot;}" target="_blank">
	                                <img src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_159612_7_small.jpg"></a></li>
	                    </ul>
	                    
	                     --> 
	            </div>
	        </div>
	        <s class="t_pre hidden" style="display: inline; "></s><s class="t_next hidden" style="display: inline; "></s>
	    </div>
	    <div class="pinfo_wrapper">
	        <h1>
	            ${productInstance?.name }
	        </h1>
	        
	        <div class="review_sku clearfix">
	        <!-- 
	            <div class="review_rate">
	                <b class="starts"><span style="width: 0%;">0</span></b>
	                (<a href="http://club.dx.com/reviews/159612" target="_blank" class="tu">0
	                    reviews</a>)
	            </div>
	             -->
	            <div class="fr">
	                <span class="product_sku">
	                    SKU: 
	                    <span id="sku">${productInstance?.sku }</span>
	                    
	                    <input id="productStatus" type="hidden" value="Normal">
	                </span><span class="product_date_added">(Added on <g:formatDate date="${productInstance?.dateAdded}" formatName="product.label.date" />) </span>
	            </div>
	        </div>
	        <div class="product_info">
	            <table class="product_detail">
	                <tbody>
	                    <tr>
	                        <td class="label">Price:
	                        </td>
	                        <td class="pc">
	                            
	                            <div id="price-selector" class="cybox dropdown">
	                                <a id="currencySymbol" class="cy hover"><span class="cur_cy">US$</span></a>
	                                <div class="currency panel hidden" style="display: none; ">
	                                    <ul>
	                                            <li data-currency-symbol="US$" data-currency-code="USD"><span class="cur_cy currency_icon USD">US Dollar</span></li>
	                                            <li data-currency-symbol="£" data-currency-code="GBP"><span class="cur_cy currency_icon GBP">Pound Sterling</span></li>
	                                            <li data-currency-symbol="CA$" data-currency-code="CAD"><span class="cur_cy currency_icon CAD">Canadian Dollar</span></li>
	                                            <li data-currency-symbol="€" data-currency-code="EUR"><span class="cur_cy currency_icon EUR">Euro</span></li>
	                                            <li data-currency-symbol="R$" data-currency-code="BRL"><span class="cur_cy currency_icon BRL">Brazilian Real</span></li>
	                                            <li data-currency-symbol="RUB" data-currency-code="RUB"><span class="cur_cy currency_icon RUB">Russian Ruble</span></li>
	                                            <li data-currency-symbol="AU$" data-currency-code="AUD"><span class="cur_cy currency_icon AUD">Australian Dollar</span></li>
	                                            <li data-currency-symbol="NOK" data-currency-code="NOK"><span class="cur_cy currency_icon NOK">Norwegian Krone</span></li>
	                                            <li data-currency-symbol="CZK" data-currency-code="CZK"><span class="cur_cy currency_icon CZK">Czech Koruna</span></li>
	                                            <li data-currency-symbol="CLP" data-currency-code="CLP"><span class="cur_cy currency_icon CLP">Chilean Peso</span></li>
	                                            <li data-currency-symbol="JPY" data-currency-code="JPY"><span class="cur_cy currency_icon JPY">Yen</span></li>
	                                    </ul>
	                                </div>
	                            </div>
	                            <span id="price" class="fl">${CommonUtils.productPrice(productInstance) }</span>
	                        </td>
	                    </tr>
	                    <tr>
                            <td class="label">
                                Shipping:
                            </td>
	                        <td class="sc">
	                                  <g:render template="/country/list_country"/>
	                                                            
                            </td>

	                    </tr>
	                    <tr>
	                        <td class="label">
	                            Delivery:
	                        </td>
	                        <td>
                               <div id="dDropPanel" class="dinfo dropdown">
                                ${message(code: 'product.freeshipment.time')}
                               </div>
	                        </td>
	                    </tr>
	                </tbody>
	            </table>
	            <g:form controller="shoppingCart" action="add" useToken="true">
	            <g:hiddenField name="sku" value="${productInstance?.sku }"/>
	            <div class="choose_quantity">
	                <div class="quantity clearfix">
	                    <span>Quantity:</span> <a id="qty-dec" href="javascript:void(0);" class="reduce" rel="nofollow"></a>
	                       <g:textField name="quantity" value="1" class="quantity"/>
	                    <a id="qty-inc" href="javascript:void(0);" class="add" rel="nofollow"></a>
	                </div>
	                <div class="btn_cartBox">
	                       <g:actionSubmit class="btn_atcart" action="add" id="btn-add-to-cart" rel="nofollow" value="${message(code: 'default.button.update.label')}" />
	                </div>
                    <div class="share">
                       <%
                         def shipMethodItem
                         def methodName
                         for (int i = 1; i <= 8; i++) {
                             methodName = "shippingMethod" + i
                             shipMethodItem = productInstance."${methodName}"
                             methodName = "shippingMethodPrice" + i
												
							// TODO: just show "free shipping" only
                             if (shipMethodItem && (int)productInstance."${methodName}" == 99999) {
                                
                        %>
                            <g:if test="${i == 1 }">
                                <input type="radio" name="shipMethod" value="${shipMethodItem.id }" checked="checked"/>
                            </g:if>
                            <g:else>
                                <input type="radio" name="shipMethod" value="${shipMethodItem.id }"/>
                            </g:else>
                            <span class="f_shipping">${shipMethodItem.name}</span>
                         <%
                             }
                         }
                         %>
                    </div>
                    <br>
	                <div class="share">
	                    <a id="btn-add-wishlist" href="javascript:void(0);" class="addlist add-wish" sku="159612" rel="nofollow">Add to wish list</a>
	                    <a id="btn-add-pricematch" href="javascript:void(0);" class="match">Price Match</a>
	                    <a id="btn-add-reportError" href="javascript:void(0);" class="report">Report Error</a>
	                </div>
	            </div>
	            </g:form>
	        </div>
	        <div class="product_otherinfo">
	           <!-- 
	            <div class="shadowbox">
	                <div class="norton">
	                    <a href="https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=dx.com&amp;lang=en" target="_blank">
	                        <img width="100" height="58" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/norton.png" onclick="javascript:window.open(&quot;https://trustsealinfo.verisign.com/splash?form_file=fdf/splash.fdf&amp;dn=dx.com&amp;lang=en&quot;,&quot;VRSN_Splash&quot;,&quot;location=yes,status=yes,resizable=yes,scrollbars=yes,width=560,height=500&quot;); return false;">
	                    </a>
	                </div>
	                <div class="mcafee">
	                    <a href="https://www.mcafeesecure.com/RatingVerify?ref=dx.com" target="_blank">
	                        <img width="115" height="32" oncontextmenu="alert('Copying Prohibited by Law - McAfee Secure is a Trademark of McAfee, Inc.'); return false;" alt="McAfee SECURE" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/12.gif">
	                    </a>
	                </div>
	                <div class="certificate">
	                    <a target="_blank" href="http://dx.com/page-Conditions#return_policy" rel="nofollow">
	                        <img width="149" height="40" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/returnPolicy.png"></a>
	                </div>
	                <div id="share" class="shareBox clearfix">
	                <div class="facebook"><div class="fb-like" data-send="false" data-layout="box_count" data-width="55" data-show-faces="true" data-font="verdana"></div></div><div class="google"><div style="height: 60px; width: 50px; display: inline-block; text-indent: 0px; margin: 0px; padding: 0px; background-color: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial; " id="___plusone_0"><iframe allowtransparency="true" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position: absolute; top: -10000px; width: 50px; margin: 0px; border-style: none; " tabindex="0" vspace="0" width="100%" id="I0_1352101885717" name="I0_1352101885717" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/fastbutton.htm" title="+1"></iframe></div></div><div class="digg"><span class="db-wrapper db-clear db-medium"><span><span class="db-container db-submit"><span class="db-body db-medium"><span class="db-count"></span><span class="db-copy"></span><a class="db-anchor">digg</a></span></span></span></span></div><div class="facebook"><div class="fb-like" data-send="false" data-layout="box_count" data-width="55" data-show-faces="true" data-font="verdana"></div></div><div class="google"><div style="height: 60px; width: 50px; display: inline-block; text-indent: 0px; margin: 0px; padding: 0px; background-color: transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline; background-position: initial initial; background-repeat: initial initial; " id="___plusone_0"><iframe allowtransparency="true" frameborder="0" hspace="0" marginheight="0" marginwidth="0" scrolling="no" style="position:absolute;top:-10000px;width:300px;margin:0px;borderStyle:none" tabindex="0" vspace="0" width="100%" id="I0_1352200042016" name="I0_1352200042016" src="https://plusone.google.com/_/+1/fastbutton?bsv=m&amp;size=tall&amp;hl=en-US&amp;origin=file%3A%2F%2F&amp;url=file%3A%2F%2F%2FC%3A%2FUsers%2Fntnghia%2FDesktop%2FDetachable%2520Clip-on%2520Fish-Eye%2520Lens%2520for%2520iPhone%2520%2520%2520iPad%2520-%2520Worldwide%2520Free%2520Shipping%2520-%2520DX_files%2FDetachable%2520Clip-on%2520Fish-Eye%2520Lens%2520for%2520iPhone%2520%2520%2520iPad%2520-%2520Worldwide%2520Free%2520Shipping%2520-%2520DX.htm&amp;ic=1&amp;jsh=m%3B%2F_%2Fapps-static%2F_%2Fjs%2Fgapi%2F__features__%2Frt%3Dj%2Fver%3DhsnXRwYihuI.vi.%2Fsv%3D1%2Fam%3D!5V4AwLTVPeWIaanGfQ%2Fd%3D1%2Frs%3DAItRSTOieLlPiEijxICXXxN-bmwNLtTd1A#_methods=onPlusOne%2C_ready%2C_close%2C_open%2C_resizeMe%2C_renderstart%2Concircled&amp;id=I0_1352200042016&amp;parent=file%3A%2F%2F"></iframe></div></div><div class="digg"><span class="db-wrapper db-clear db-medium"><span><span class="db-container db-submit"><span class="db-body db-medium"><span class="db-count"></span><span class="db-copy"></span><a class="db-anchor">digg</a></span></span></span></span></div></div>
	                <div class="shadow_left">
	                </div>
	                <div class="shadow_right">
	                </div>
	            </div>
	             -->
	        </div>
	    </div>
	    <div class="clear">
	    </div>
	    <!-- product detail info -->
	    <div id="tabProInfo" class="dxTab">
	        <div class="cate_tabwrap">
	            <ul>
	                <li class="active"><a href="http://localhost:8080/shop/product/show/2#overview" rel="nofollow">Overview</a>
	                    <div class="cate_tab_l">
	                    </div>
	                    <div class="cate_tab_r">
	                    </div>
	                </li>
	                <li class="active"><a href="http://localhost:8080/shop/product/show/2#specification" rel="nofollow">Specifications</a>
	                    <div class="cate_tab_l">
	                    </div>
	                    <div class="cate_tab_r">
	                    </div>
	                </li>

	            </ul>
	        </div>
	        <div class="tab_content pr">
	            <div id="overview" class="pinfobox" style="margin-top: 0">
	                <div class="pinfo_content">
	                ${productInstance?.overview }
					</div>
	            </div>
	            <!-- specification -->
	            <div id="specification" class="pinfobox active">
	                <div class="pinfo_content">
	                   ${productInstance?.specification }
	            </div>
	            <!-- end of specification -->
	            <!-- bulk rate -->
	            <div id="bulkrate" class="pinfobox">
	                <div class="pinfo_content">
	                    <p class="introduce">
	                        <span>To enable volume discounts on this site, use coupon code: BULKRATE during checkout.</span>
	                        You will see a discount applied at the bottom of the shopping cart. Competitive
	                        pricing is available. Contact us for details.</p>
	                    <table class="info_table">
	                        <tbody>
	                            <tr>
	                                <th>
	                                    Quantity
	                                </th>
	                                    <td>
	                                        3+ units
	                                    </td> 
	                                    <td>
	                                        5+ units
	                                    </td> 
	                                    <td>
	                                        10+ units
	                                    </td> 
	                            </tr>
	                            <tr>
	                                <th>
	                                    <span>Rate</span>
	                                </th>
	                                    <td>
	                                        <span>USD$ 10.40 shipped</span>
	                                    </td>
	                                    <td>
	                                        <span>USD$ 10.30 shipped</span>
	                                    </td>
	                                    <td>
	                                        <span>USD$ 10.20 shipped</span>
	                                    </td>
	                            </tr>
	                        </tbody>
	                    </table>
	                    <p class="introduce">
	                        <strong>What is Bulk Rate?</strong> BulkRate is a semi-wholesale system with items priced separately from retail. When you use bulk rates, a flat $1.70 registered air mail fee will automatically be added to your cart to ensure delivery of package. While BulkRate's intention is to offer cheaper prices when you buy in bulk, because  it is priced separately it on occassions show a higher than retail price. That's  why we ask you to enter BULKRATE as a coupon code to manually activate the rates.  You can always opt not to use the bulk rates. If you are looking for wholesale prices please feel free to <a href="http://tickets.volumerate.com/ticket/add/11" target="_blank" rel="nofollow">contact us</a>.
	<br><br>
	Looking to get even more?
	<br>
	<a id="ctl00_content_hlLookMore" rel="nofollow" href="http://www.volumerate.com/product/sku/159612" style="text-decoration: none;">Try <img src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/volumerate_logo.png" alt="VolumeRate - Gadgets Wholesale"></a> <a rel="nofollow" href="http://tickets.volumerate.com/ticket/add/11">Or Contact Us Directly</a>
	                    </p>
	                </div>
	            </div>
	            <!-- end of bulk rate -->
	        </div>
	    </div>
	    <!-- product recommended OverView -->
	    <div class="pimgbox pr hidden" id="proBoxByOverView" style="display: block; ">
	    <div class="titlebar">
	        <h2 id="ovTitle">Other products</h2>
	    </div>
	    <div class="page">
	        <span class="page_info">Page <b id="currentPage">1</b> of <b id="totalPage">10</b></span>
	    </div>
	    <div class="slides_container" style="overflow: hidden; position: relative; display: block; ">
	        <div id="carouselDivByOverView" class="slides_control" style="position: relative; width: 2682px; height: 268px; left: -894px; ">
	           <g:render template="other_products"/>
	        </div>
	        <script id="recommendProductItemByOverView" type="text/html">
            <li>
                <div class="photo">
                    <a href="_proLink_"><img alt="_imgAlt_" src="_imgSrc_" title="_title_" /></a>
                </div>
                <div class="pi">
                    <p class="title"><a href="_proLink_" title="_title_">_name_</a></p>
                    <p class="price">_price_</p>
                    <p class="review"><a href="_reviewUrl_" title="_avgRating_ out of 5 starts" target="_blank">
                        <b class="starts"><span style="width:_ratingPer_"></span></b>(<span>_reviewCount_ Reviews</span>)</a>
                    </p>
                    <p class="noBFD pad_t5">
                        <a id="btn-add-to-cart" href="_cartUrl_"  class="btn_addcart_cy" rel="nofollow"></a>
                    </p>
                </div>
            </li>
        </script>
  </div><a href="http://dx.com/p/detachable-clip-on-fish-eye-lens-for-iphone-ipad-159612#" class="prev">Prev</a><a href="http://dx.com/p/detachable-clip-on-fish-eye-lens-for-iphone-ipad-159612#" class="next">Next</a>
	</div>
	    
	    <!--customer video-->
	    <!-- 
	    <div class="pimgbox">
	        <div class="titlebar">
	            <h2>
	                Customer Videos</h2>
	            <div class="see_all">
	                </div>
	        </div>
	        <div id="customer-videos-containter"><p class="none_info">No Videos! Be the first to <a href="http://club.dx.com/reviews/videos/159612/add" target="_blank">Post a Video</a> of this product! and get DX points!</p></div>
	    </div>
	     -->
	     
	     
	    <!-- customer reviews -->
	    <!-- 
	    <div id="reviews" class="pimgbox">
	        <div class="titlebar">
	            <h2>
	                Customer Reviews</h2>
	            <div class="see_all">
	                <a href="http://club.dx.com/reviews/text/159612" rel="nofollow">View all  reviews</a>
	                »
	            </div>
	        </div>
	        <div class="customer_review" style="min-height: 135px;">
	            <h5 id="avg-rating">Average Customer Review (<a href="http://club.dx.com/reviews/text/159612" target="_blank" rel="nofollow">0 customer reviews</a>)<b class="starts"><span style="width: 0%;">0</span></b></h5>
	            <p id="rating-user-recommend-to-friend-stat" class="cr_info">
	                &nbsp; </p>
	            <ul id="rating-levels-container" class="star_wrapper">
	                <li><strong>5 star:</strong> <b class="obrate"><i style="width: 0px;">
	                    0</i></b><a href="javascript:void(0)">0</a>&nbsp;<span>(0%)</span></li>
	                <li><strong>4 star:</strong> <b class="obrate"><i style="width: 0px;">
	                    0</i></b><a href="javascript:void(0)">0</a>&nbsp;<span>(0%)</span></li>
	                <li><strong>3 star:</strong> <b class="obrate"><i style="width: 0px;">
	                    0</i></b><a href="javascript:void(0)">0</a>&nbsp;<span>(0%)</span></li>
	                <li><strong>2 star:</strong> <b class="obrate"><i style="width: 0px;">
	                    0</i></b><a href="javascript:void(0)">0</a>&nbsp;<span>(0%)</span></li>
	                <li><strong>1 star:</strong> <b class="obrate"><i style="width: 0px;">
	                    0</i></b><a href="javascript:void(0)">0</a>&nbsp;<span>(0%)</span></li>
	            </ul>
	            <div class="sharethought clearfix">
	                <p>
	                    <strong>Share your thoughts and get DX points!</strong></p>
	                <ul>
	                    <li class="wr"><a href="http://club.dx.com/reviews/text/159612/add" class="wr" target="_blank" rel="nofollow">Write a Review</a></li>
	                    <li><a href="http://club.dx.com/reviews/photos/159612/add" class="pp" target="_blank" rel="nofollow">Post Photos</a></li>
	                    <li><a href="http://club.dx.com/reviews/videos/159612/add" class="pv" target="_blank" rel="nofollow">Post Videos</a></li>
	                </ul>
	            </div>
	        </div>
	        <div id="review-lists-container" class="reviewsStar oneReviews"><ul class="ul_reviews"></ul></div>
	        
	        <div id="reviews-see-more" class="rv_bot_info hidden" style="display: block; ">showing latest 0 entries. &nbsp;<a href="http://club.dx.com/reviews/text/159612" rel="nofollow">Click here to read all  reviews.</a></div>
	    </div>
	    
	     -->
	     
	    <!-- product recommended Discussions -->
	    <!-- 
	    <div class="pimgbox pr hidden" id="proBoxByDiscussions" style="display: block; ">
	    <div class="titlebar">
	        <h2 id="dTitle">What Other Items Do Customers Buy After Viewing This Item</h2>
	    </div>
	    <div class="slides_container">
	        <div id="carouselDivByDiscussions" class="slides_control"><ul class="productList sublist">
	            <li>
	                <div class="photo">
	                    <a href="http://dx.com/p/180-degree-fish-eye-lens-for-iphone-4-4s-silver-158480?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=158480"><img alt="180 Degree Fish-Eye Lens for iPhone 4 / 4S - Silver" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_158480_1_small.jpg" title="180 Degree Fish-Eye Lens for iPhone 4 / 4S - Silver"></a>
	                </div>
	                <div class="pi">
	                    <p class="title"><a href="http://dx.com/p/180-degree-fish-eye-lens-for-iphone-4-4s-silver-158480?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=158480" title="180 Degree Fish-Eye Lens for iPhone 4 / 4S - Silver">180 Degree Fish-Eye Lens for iPh...</a></p>
	                    <p class="price">US$9.30</p>
	                    <p class="review"><a href="http://club.dx.com/reviews/text/158480" title="0 out of 5 starts" target="_blank">
	                        <b class="starts"><span style="width:0%"></span></b>(<span>0 Reviews</span>)</a>
	                    </p>
	                    <p class="noBFD pad_t5">
	                        <a id="btn-add-to-cart" href="http://cart.dx.com/shoppingcart.dx/add.158480~rt.1~p.2~m.3~r.2~k.1~t.3~s.159612~u.158480" class="btn_addcart_cy" rel="nofollow"></a>
	                    </p>
	                </div>
	            </li>
	        
	            <li>
	                <div class="photo">
	                    <a href="http://dx.com/p/lesung-clip-on-0-67x-magnification-lens-for-iphone-ipad-black-160318?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=160318"><img alt="Lesung Clip-on 0.67X Magnification Lens for iPhone / iPad - Black" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_160318_1_small.jpg" title="Lesung Clip-on 0.67X Magnification Lens for iPhone / iPad - Black"></a>
	                </div>
	                <div class="pi">
	                    <p class="title"><a href="http://dx.com/p/lesung-clip-on-0-67x-magnification-lens-for-iphone-ipad-black-160318?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=160318" title="Lesung Clip-on 0.67X Magnification Lens for iPhone / iPad - Black">Lesung Clip-on 0.67X Magnificati...</a></p>
	                    <p class="price">US$12.00</p>
	                    <p class="review"><a href="http://club.dx.com/reviews/text/160318" title="0 out of 5 starts" target="_blank">
	                        <b class="starts"><span style="width:0%"></span></b>(<span>0 Reviews</span>)</a>
	                    </p>
	                    <p class="noBFD pad_t5">
	                        <a id="btn-add-to-cart" href="http://cart.dx.com/shoppingcart.dx/add.160318~rt.1~p.2~m.3~r.2~k.1~t.3~s.159612~u.160318" class="btn_addcart_cy" rel="nofollow"></a>
	                    </p>
	                </div>
	            </li>
	        
	            <li>
	                <div class="photo">
	                    <a href="http://dx.com/p/6x-telephoto-lens-with-matte-back-case-for-iphone-5-black-159922?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=159922"><img alt="6X Telephoto Lens with Matte Back Case for iPhone 5 - Black" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_159922_1_small.jpg" title="6X Telephoto Lens with Matte Back Case for iPhone 5 - Black"></a>
	                </div>
	                <div class="pi">
	                    <p class="title"><a href="http://dx.com/p/6x-telephoto-lens-with-matte-back-case-for-iphone-5-black-159922?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=159922" title="6X Telephoto Lens with Matte Back Case for iPhone 5 - Black">6X Telephoto Lens with Matte Bac...</a></p>
	                    <p class="price">US$11.10</p>
	                    <p class="review"><a href="http://club.dx.com/reviews/text/159922" title="0 out of 5 starts" target="_blank">
	                        <b class="starts"><span style="width:0%"></span></b>(<span>0 Reviews</span>)</a>
	                    </p>
	                    <p class="noBFD pad_t5">
	                        <a id="btn-add-to-cart" href="http://cart.dx.com/shoppingcart.dx/add.159922~rt.1~p.2~m.3~r.2~k.1~t.3~s.159612~u.159922" class="btn_addcart_cy" rel="nofollow"></a>
	                    </p>
	                </div>
	            </li>
	        
	            <li>
	                <div class="photo">
	                    <a href="http://dx.com/p/spark-special-effects-external-clip-lens-for-iphone-ipod-ipad-159075?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=159075"><img alt="Spark Special Effects External Clip Lens for iPhone / iPod / iPad" src="./Detachable Clip-on Fish-Eye Lens for iPhone   iPad - Worldwide Free Shipping - DX_files/sku_159075_1_small.jpg" title="Spark Special Effects External Clip Lens for iPhone / iPod / iPad"></a>
	                </div>
	                <div class="pi">
	                    <p class="title"><a href="http://dx.com/p/spark-special-effects-external-clip-lens-for-iphone-ipod-ipad-159075?rt=1&amp;p=2&amp;m=3&amp;r=2&amp;k=1&amp;t=1&amp;s=159612&amp;u=159075" title="Spark Special Effects External Clip Lens for iPhone / iPod / iPad">Spark Special Effects External C...</a></p>
	                    <p class="price">US$11.60</p>
	                    <p class="review"><a href="http://club.dx.com/reviews/text/159075" title="0 out of 5 starts" target="_blank">
	                        <b class="starts"><span style="width:0%"></span></b>(<span>0 Reviews</span>)</a>
	                    </p>
	                    <p class="noBFD pad_t5">
	                        <a id="btn-add-to-cart" href="http://cart.dx.com/shoppingcart.dx/add.159075~rt.1~p.2~m.3~r.2~k.1~t.3~s.159612~u.159075" class="btn_addcart_cy" rel="nofollow"></a>
	                    </p>
	                </div>
	            </li>
	        </ul></div>
	        <script id="recommendProductItemByDiscussions" type="text/html">
            <li>
                <div class="photo">
                    <a href="_proLink_"><img alt="_imgAlt_" src="_imgSrc_" title="_title_" /></a>
                </div>
                <div class="pi">
                    <p class="title"><a href="_proLink_" title="_title_">_name_</a></p>
                    <p class="price">_price_</p>
                    <p class="review"><a href="_reviewUrl_" title="_avgRating_ out of 5 starts" target="_blank">
                        <b class="starts"><span style="width:_ratingPer_"></span></b>(<span>_reviewCount_ Reviews</span>)</a>
                    </p>
                    <p class="noBFD pad_t5">
                        <a id="btn-add-to-cart" href="_cartUrl_"  class="btn_addcart_cy" rel="nofollow"></a>
                    </p>
                </div>
            </li>
        </script>
	    </div>
	</div>
	 -->
	 
	    
	  
	</div>

</div>
    </body>
</html>
