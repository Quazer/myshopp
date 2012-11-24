<%@ page import="com.nghia.shop.CommonUtils" %>
<%@ page import="com.nghia.shop.Feedback" %>
    <ul id="list-items" class="clearfix lazy-load">
                <g:each in="${productList }" var="productInstance">
                       <li class="list-item  clearfix"
                           qrdata="200000111|566388494|cn1000544887">

                           <div class="img">
                               <a id="limagebox_${productInstance.sku}" class="picRind history-item"
                                   href="${CommonUtils.urlWithProductName(productInstace)}"
                                   target="_blank">
                                   <img id="limage_${productInstance.sku}" class="picCore" src="${CommonUtils.urlWithProductNameForImage(productInstace)}"
                                   style="visibility: visible;"></a>
                               <g:if test="${productInstance.discount > 0 }">
	                               <div class="discount-rate">
	                                   <span class="rate">${productInstance.discount}</span>
	                               </div>
                               </g:if>

                           </div>


                           <div class="detail">
                               <h3 class="icon-hotproduct">
                                   <a class="history-item product"
                                       href="${CommonUtils.urlWithProductName(productInstace)}"
                                       title="${productInstance.name }"
                                       target="_blank">${productInstance.name }
                                       
                                   </a>
                               </h3>

                               <span class="brief"> </span>
								
                               <div class="rate-history">
                               		<%--
                                   <span class="star star-s" title="Star Rating: 0 out of 5">
                                       <span class="rate-percent" style="width: 0%;"></span>
                                   </span> 
                                    --%>
                                   <%--
                                   <a class="rate-num"
                                       href="http://www.aliexpress.com/item/New-style-Retro-hollow-flower-metal-Choker-necklaces-Simulated-collar-necklaces-Min-order-15-mix-order/566388494.html#feedback"
                                       rel="nofollow" target="_blank">
                                       <g:message code="default.feedback.name"/> (${Feedback.count{ 
										   eq ("product" : productInstance)
										   }
									   })</a> 
                                       
                                       <span
                                       class="rate-separator">|</span> <span rel="nofollow"
                                       class="order-num"> <a class="order-num-a"
                                       href="http://www.aliexpress.com/item/New-style-Retro-hollow-flower-metal-Choker-necklaces-Simulated-collar-necklaces-Min-order-15-mix-order/566388494.html#thf"
                                       rel="nofollow" target="_blank"><em title="Total Orders">
                                               Orders (247)</em></a></span>
                                    --%>
                               </div>

                               <div class="clearfix address-chat">
                                <%--
                                   <span class="address clearfix"> <a class="store"
                                       href="http://www.aliexpress.com/store/511512"
                                       title="1314 Jewelry Supermarket (Mini. order 15$,Mix order)"
                                       target="_blank">1314 Jewelry Supermarket (Mini. order
                                           15$,...</a> <a class="score-dot"
                                       href="http://www.aliexpress.com/store/feedback-score/511512.html"
                                       rel="nofollow" target="_blank"><img class="score-icon"
                                           id="score6"
                                           src="./Wholesale choker necklace - Buy Low Price choker necklace Lots on Aliexpress.com_files/21-s.gif"
                                           alt="" feedbackscore="783"
                                           sellerpositivefeedbackpercentage="94.8"></a>
                                   </span> <a id="talkId7" class="atm16" href="javascript:;"
                                       memberid="8pctgRBMALPU1ckH6EWH5V730RgXgE9G" id1="566388494"
                                       from="11" rel="nofollow" title="Chat with me now" online="1">Chat
                                       now!</a>
                                --%>
                               </div>
                               
                               <g:if test="${productInstance.discountPrice > 0.00}">
	                               <div id="discount7" discount="${productInstance.discountPrice}" fixed="${productInstance.discountPriceFixed}"
	                                   class="discount-info">
	                                   <span class="discount-info-content">${CommonUtils.showSaleOffWithFixedPrice(productInstance.discountPrice, productInstance.discountPriceFixed) }
	                                   </span> 
                                       <span class="discount-info-left"></span> <span
                                       class="discount-info-right"></span>
	                               </div>
                               </g:if>


                           </div>
                           <div class="info infoprice">
                               <span class="price price-m"> 
                               <%
									  def priceAfterDiscount 
									  if (productInstance.discount > 0) {
									       priceAfterDiscount = productInstance.purchargePrice - (productInstance.purchargePrice / 100 * productInstance.discount)
									  }
									  else {
									       priceAfterDiscount = productInstance.purchargePrice
									  }
									  
							    %>
                               <span class="value notranslate">${CommonUtils.showPriceWithCurrency(priceAfterDiscount) }</span> <span
                                   class="separator">/</span> 
                                   <span class="unit"><g:message code="${productInstance.unit }"/></span>
                               </span>
                               
                               <g:if test="${productInstance.discount > 0 }">
                                    <del class="original-price">${CommonUtils.showPriceWithCurrency(productInstance.purchargePrice) } / <g:message code="${productInstance.unit }"/></del>
                               </g:if>
                               
                               <strong class="free-s">Free Shipping </strong>

                               <p class="tip">
                                   <span class="min-order"> </span>
                               </p>
                               <div class="add-to-wishlist">
                                   <a class="atwl-button" href="javascript:;">+Add to Wish List</a>
                               </div>

                               <input class="atc-product-id" type="hidden" value="${productInstance.sku}">
                               <input class="atc-product-standard" type="hidden" value="">
                           </div>
                       </li>
                </g:each>
</ul>