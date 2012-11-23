
<%@ page import="com.nghia.shop.Category" %>
<%@ page import="com.nghia.shop.CommonUtils" %>
<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <g:set var="entityName" value="${message(code: 'category.label', default: 'Category')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
                    <h1>
                        ${categoryName}
                    </h1>
                    <!-- recommended products -->
                    <div class="filter_result">
                        <div class="whole_result">
                            <strong>${productTotalCount }</strong> Results for <strong>${categoryName}</strong>
                            <g:paging total="${productTotalCount}" />
                            
                            <div class="pagenumber">
                                <span>1</span> / 5
                            </div>
                            <div class="pageturn clearfix">
                                <a href="javascript:void(0)" class="prev default"></a> <a
                                    href="http://dx.com/c/iphone-ipad-ipod-299/cases-protectors-201/stickers-219?utm_rid=%2Fshoppingcart.dx&utm_sid=1&utm_source=affiliate&utm_medium=dealextreme&page=2"
                                    class="next"> </a>
                            </div>
                        </div>
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
                                <g:each in="${productList}" var="product">
                                    <li>
                                        <div class="photo">
                                            <a
                                                href="${createLink(controller : 'product',action: 'show', params:[sku: product?.sku])}"
                                                rel="nofollow"> <img class="lazy"
                                                title="${product.name }"
                                                data-src="${createLink(controller : 'imageStore',action: 'productImages', id: product?.productImage?.id)}"
                                                style="display: block;"
                                                ></a>
                                        </div>
                                        <div class="pi">
                                            <p class="title">
                                                <a href="${createLink(controller : 'product', action: 'show',params:[sku: product?.sku])}"
                                                    title="${product.name }">${product.name }</a>
                                            </p>
                                            <p class="des">${product.name }</p>
                                            <p class="price">${CommonUtils.productPrice(product) }</p>
                                            <span class="f_shipping">Free shipping</span>

                                        </div>
                                        <div class="po">
                                            <p class="sku">SKU : ${product.sku }</p>
                                            <p class="np">
                                                Price :<span>${CommonUtils.productPrice(product) }</span>
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
                            <g:paginate total="${productTotalCount}" />
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
                    /**
    (function () {
        Pattaya.Mall.lazyLoadPic();

        Pattaya.Account.Wish.init('http://ad.com');
    } ());
    **/
</script>
    </body>
</html>
