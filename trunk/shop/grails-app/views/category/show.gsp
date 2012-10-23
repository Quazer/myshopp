
<%@ page import="com.nghia.shop.Category" %>
<%@ page import="com.nghia.shop.CommonUtils" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
	<h1>${categoryInstance?.name}</h1>
	
	<!-- recommended products -->
	<div class="filter_result">
		<g:if test="${productTotalCount}">
			<div class="whole_result">
				<g:paginate total="${productTotalCount}" />
			</div>
		</g:if>

		<div class="page_wrapper">
			<div class="leftbox">
				<span class="view"><strong>View</strong></span> <span
					class="nor"><a id="showNor" class="list_row hovered"
					href="javascript:void(0)" rel="nofollow"> </a></span><span class="spe"><a
					id="showSpe" class="list_column" href="javascript:void(0)"
					rel="nofollow"> </a></span>
				<div class="showPdNum">
					<span class="view"><strong>Show</strong></span>
					<ul class="numlist">
						<li><a class="cur"
							href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&pageSize=40">40</a></li>
						<li><a
							href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&pageSize=100">100</a></li>
						<li><a
							href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&pageSize=200">200</a></li>
					</ul>
				</div>
			</div>
			<div class="rightbox">
				<strong>Sort by</strong>
				<div class="sortby dropdown">
					<a class="sb" href="javascript:void(0)" rel="nofollow">Popularity</a>
					<ul style="display: none;">
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=price&amp;sortType=asc">Price(Low
							to High)</li>
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=price&amp;sortType=desc">Price(High
							to Low)</li>
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=discount&amp;sortType=desc">Discount
							(High to Low)</li>
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=discount&amp;sortType=asc">Discount
							(Low to High)</li>
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=addDate&amp;sortType=desc">Release
							Date</li>
						<li
							url="/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&amp;utm_sid=1&amp;utm_source=affiliate&amp;utm_medium=dealextreme&amp;sort=rating&amp;sortType=desc">Avg.
							Review</li>
					</ul>
				</div>
				<a class="pc active desc" href="javascript:void(0)"
					rel="nofollow">Popularity</a> <a class="pc  desc"
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&sort=price&sortType=asc"
					rel="nofollow">Price</a>
			</div>
			<div class="clear"></div>
			
		</div>
		<div id="proList" class="pro_nor">
			<ul class="productList subList">
				<g:each in="${categoryInstance?.products}" status="i" var="productInstance">
					<li>
						<div class="photo">
							<g:link controller="product" action="detail" id="${productInstance.id }" rel="nofollow">
								<img class="lazy" title="${productInstance.name }"
								data-src="${createLink(controller :'productimages', id: '${productInstance.mainImage?.id }')}"
								style="display: block;">
							</g:link>
							
						</div>
						<div class="pi">
							<p class="title">
								<g:link controller="product" action="detail" id="${productInstance.id }">
									${productInstance.name }
								</g:link>
							</p>
							<p class="des">${productInstance.name }</p>
							<p class="price">${CommonUtils.productPrice(productInstance) }</p>
							<span class="f_shipping">${CommonUtils.isFreeShipping(productInstance) ? 'Free Shipping' : ''}</span>
							
							<%--
							<p class="review">
								<a href="http://club.dx.com/reviews/text/81064"
									title="4 out of 5 starts" target="_blank" rel="nofollow">
									<b class="starts"><span style="width: 80%"></span></b>(<span>1
										Reviews</span>)
								</a>
							</p>
							 --%>
						</div>
						<div class="po">
							<p class="sku">SKU : ${productInstance.SKU }</p>
							<p class="np">
								Price :<span>${CommonUtils.productPrice(productInstance) }</span>
							</p>
							<p>
								<a class="btn_addcart"
									href="http://cart.dx.com/shoppingcart.dx/add.81064"
									target="_blank"> Add To Cart</a>
							</p>
							<p>
								<a href="javascript:void(0);" class="btn_wishlist add-wish"
									sku="81064" title="Add To Wish List"> Add To Wish List</a>
							</p>
						</div>
					</li>
				</g:each>
		
			</ul>
		</div>
		<div class="page_wrapper">
			<div class="page_range">
				Page <span class="pageNumber">1</span> of <span
					class="pageCount">5</span>
			</div>
			<div class="goto">Go to Page:</div>
			<div class="page_numb">
				<form
					action="./Apple Iphone Ipad Ipod Stickers - Free Shipping - DX_files/Apple Iphone Ipad Ipod Stickers - Free Shipping - DX.htm"
					method="get">
					<input type="hidden" name="utm_rid" value="/shoppingcart.dx"><input
						type="hidden" name="utm_sid" value="1"><input
						type="hidden" name="utm_source" value="affiliate"><input
						type="hidden" name="utm_medium" value="dealextreme"> <input
						type="text" class="put_page" name="page"> <input
						class="go_page" type="submit" value="go">
				</form>
			</div>
			<ul class="page">
				<li><span class="pre">Prev</span></li>
				<li><span class="cur">1</span></li>
				<li><a
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=2">2</a></li>
				<li><a
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=3">3</a></li>
				<li><a
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=4">4</a></li>
				<li><a
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=5">5</a></li>
				<li><a
					href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=2"
					class="next">Next</a></li>
			</ul>
<script type="text/javascript">
    Pattaya.Mall.Pagination.init();
    </script>
						</div>

					</div>
					<script type="text/javascript">
    (function () {
        Pattaya.Mall.lazyLoadPic();

        Pattaya.Account.Wish.init('http://ad.com');
    } ());
</script>
	</body>
</html>
