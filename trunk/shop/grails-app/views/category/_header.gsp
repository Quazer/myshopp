

  <div class="logo"><a href="${createLink(url:'/')}" title="Online Shopping">/</a></div>
        <div class="welcome">
    ${message(code: 'header.label')} <a rel="nofollow" href="${createLink(controller : 'login',action: 'register')}">${message(code: 'joinfree.label')}</a> | <span><a rel="nofollow" href="${createLink(controller : 'login',action: 'auth')}">${message(code: 'signin.label')}</a></span>
    </div>
        <ul class="site-nav" id="site-nav" style="width: auto;">
            <li class="site-subnav site-nav-me"><span><a
                    rel="nofollow"
                    href="http://us.ae.alibaba.com/index.htm?tracelog=ws_topbar"
                    id="h-my-aliexpress">My AliExpress</a></span>
                <ul>
                    <li class="myaliexpress-gap" style="display: none;"><a
                        class="myaliexpress-strong" id="h-unread-messages"
                        href="http://us.ae.alibaba.com/message/message_list.htm"><b
                            id="my-messages"><b style="color: #f7941d;">(0)</b></b> Unread
                            Messages</a></li>
                    <li><a rel="nofollow"
                        href="http://escrow.alibaba.com/order/business_order_buyer_list.htm?ctmenu=current_orders"
                        id="h-my-orders">My Orders <b id="my-orders"
                            style="display: none"></b></a></li>
                    <li><a rel="nofollow"
                        href="http://us.ae.alibaba.com/message/message_list.htm"
                        id="h-my-messages">Message Center</a></li>
                    <li><a rel="nofollow"
                        href="http://us.ae.alibaba.com/wishlist/wish_list_product_list.htm"
                        id="h-my-list">My Lists</a></li>
                    <li><a rel="nofollow"
                        href="http://escrow.alibaba.com/coupon/buyerCouponList.htm?sortBy=2"
                        id="h-my-coupons">My Coupons <b id="my-coupons"
                            style="display: none"></b></a></li>
                </ul></li>

            <li class="site-subnav site-nav-help"><span><a
                    rel="nofollow"
                    href="http://www.aliexpress.com/help/home.html#center" id="h-help">Help</a></span>
                <ul>
                    <li><a rel="nofollow"
                        href="http://www.aliexpress.com/help/home.html#center"
                        id="h-help-center">Help Center</a></li>
                    <li><a rel="nofollow"
                        href="https://login.aliexpress.com/buyer.htm?return_url=http://channel.alibaba.com/complaint/home.htm"
                        id="h-submit-complaint">Submit a Complaint</a></li>
                </ul></li>
            <li class="site-subnav site-nav-bbs"><span><a
                    rel="nofollow"
                    href="http://community.aliexpress.com/forum.php?tracelog=ws_topbar"
                    id="h-community">Community</a></span>
                <ul>
                    <li><a rel="nofollow"
                        href="http://community.aliexpress.com/forum.php" id="h-buy-forum">Buyer
                            Forum</a></li>
                    <li><a rel="nofollow" href="http://blog.aliexpress.com/"
                        id="h-aliexpress-blog">AliExpress Blog</a></li>
                    <li><a rel="nofollow"
                        href="http://www.facebook.com/shopaliexpress"
                        id="h-aliexpress-facebook">AliExpress Facebook</a></li>
                </ul></li>
            <li class="site-nav-alibaba">Go to<a rel="nofollow"
                href="http://www.alibaba.com/" id="h-alibaba">alibaba.com</a></li>
           
        </ul>

<div id="channel-wrap" class="channel-wrap cw-intl clearfix">
    <div id="categories-title" class="cate-box">
    <script type="text/javascript" src="${resource(dir: 'js', file: 'jquery-1.8.1.js')}"></script>
      <script type="text/javascript">
      
      	var hideListFlag = 0
		function showList(flg) {
      		hideListFlag = flg
			document.getElementById("categoriesLst").style.display = "block";
		}

		
		function hideCatList(flg) {
			hideListFlag = flg
			hideCatListWithTime()
		}

		function hideCatListWithTime() {
			if (hideListFlag == 2 || hideListFlag == 3) {
				document.getElementById("categoriesLst").style.display = "none";
			}
			
		}
      </script>
      <div class="categories-main" onmousemove="showList(1)" onmouseout="hideCatList(1)">CATEGORIES</div>
      <g:render template="/api/listCategory"/>
    </div>
              
                                        
                        
               
    <div id="search-bar" class="search">

        <ul id="searchTabsBox">

          <li class="current"><a id="product" href="javascript:void(0);" rel="nofollow" hint="Search Products">Products</a></li>

        </ul>

        <div id="search-panel">
          <form id="searchForm" name="searchForm" method="get" >
            <label class="search-key" id="searchIntelligent">
              <input id="SearchTextIdx" name="SearchText" type="text" value="${params.SearchText }" autocomplete="off" maxlength="50">
            </label>
            <input id="searchSubmit" type="submit" hidefocus="true" value="" class="search-btn">
            <input type="hidden" id="catId" name="catId" value="0">
            <input type="hidden" id="historyTab">
            <input type="hidden" id="historySearchInput">
            <input type="hidden" id="historySearchCountry">
          </form>
          
          <g:link class="cart-lnk" controller="shoppingCart" action="myCart"><b id="my-shopcarts">0</b>Cart</g:link>
          <a id="wish-lnk" class="wish-lnk" >Wish <b>List</b></a>
       </div>
 </div>

    
  </div>
  