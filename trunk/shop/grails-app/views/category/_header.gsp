

  <div class="logo"><a href="${createLink(url:'/')}" title="Online Shopping">/</a></div>
        <div class="welcome">
    ${message(code: 'header.label')} <a rel="nofollow" href="${createLink(controller : 'login',action: 'register')}">${message(code: 'joinfree.label')}</a> | <span><a rel="nofollow" href="${createLink(controller : 'login',action: 'auth')}">${message(code: 'signin.label')}</a></span>
    </div>
        <ul class="site-nav" id="site-nav" style="width: auto;">
            <li class="site-subnav site-nav-me"><span>
            	<g:link controller="member" action="profile">My MaiKex</g:link>
            	</span>
                <ul>
                    <li>
                    	<g:link controller="member" action="myOrders">My Orders</g:link>
                    </li>
                </ul>
            </li>

            <li class="site-subnav site-nav-help"><span><a
                    rel="nofollow" id="h-help">Help</a></span>
                <ul>
                    <li><a rel="nofollow" 
                        id="h-help-center">Help Center</a></li>
                    <li><a rel="nofollow"
                        id="h-submit-complaint">Submit a Complaint</a></li>
                </ul></li>


           
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
		  <g:form id="${params.id?: session.categoryIdSelected }" name="searchForm" controller="category" action="show">
	          <input id="searchSubmit" type="submit" hidefocus="true" value="" class="search-btn">
	            <label class="search-key" id="searchIntelligent">
	              <input id="SearchTextIdx" name="SearchText" type="text" value="${params.SearchText }" autocomplete="off" maxlength="50">
	            </label>
	            <g:hiddenField name="id" value="${params.id }"/>
	            <input type="hidden" id="historyTab">
	            <input type="hidden" id="historySearchInput">
	            <input type="hidden" id="historySearchCountry">		  
		  </g:form>
          <form id="searchForm" name="searchForm" method="get" >

          </form>
          
          <g:link class="cart-lnk" controller="shoppingCart" action="myCart"><b id="my-shopcarts">0</b>Cart</g:link>
          <a id="wish-lnk" class="wish-lnk" >Wish <b>List</b></a>
       </div>
 </div>

    
  </div>
  