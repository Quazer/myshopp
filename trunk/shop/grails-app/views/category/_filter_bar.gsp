                    <div class="view-filter" id="view-filter"
                        style="position: relative; top: 0px;">
                        <span class="view-btn"> <span>View</span> <a id="view-thum"
                            rel="nofollow" title="Gallery"
                            href=""></a>
                            <a id="view-list" rel="nofollow" title="List"
                            href="javascript:void(0);"></a>
                        </span>
                        <div class="narrow-down-bg">
                            <div id="sort-by-selector" class="link-fake-selector">
                                <div class="list-title">Best Match</div>
                            </div>
                        </div>
                       
                        <div class="narrow-down-bg" >
                            <a rel="nofollow"
                                href="http://www.aliexpress.com/wholesale/wholesale-choker-necklace.html?needQuery=n&amp;SearchText=choker%2Bnecklace&amp;CatId=0&amp;SortType=price_asc&amp;filterCat=200000111,200004077,200000114">
                                <span class="narrow-price" id="price_lowest_1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                ${message(code: 'cat.filter.price.label')}</span></a>
                        </div>

                        <div class="narrow-down-bg" style="left: 290px;">

							<g:form name="filter-form">
								<input type="hidden" name="id" id="id" value="${params.id }">
                                <span id="filter-price"><span>${message(code: 'cat.filter.price.label')}:</span> 
                                	<input
	                                    tabindex="20" name="minPrice" id="filter-price-from"
	                                    autocomplete="off" value=""> <span>-</span> 
	                                <input
	                                    tabindex="20" name="maxPrice" id="filter-price-to"
	                                    autocomplete="off" value=""> 
                                </span> <span class="narrow-go" id="filter-submit" style="display: none"></span> 
                                <a
                                    href="javascript:void(0)" class="narrow-go-cancel"
                                    id="narrow-go-cancel" style="display: none">Cancel</a> 
                                    
                                 <input
                                    type="hidden" name="SearchText" value="${params.SearchText }">
                                	<input type="hidden" name="shipCountry" value=""> 
                                 <input
                                    type="hidden" name="isRtl" value="all"> <input
                                    type="hidden" name="isOnSale" value="all"> <input
                                    id="narrowDownCate" type="hidden" name="CatId" value="0">




                            </g:form>



                        </div>
                        <div class="narrow-down-bg">
                            <form method="get" id="quantity-form"
                                action="http://www.aliexpress.com/wholesale">
                                <span id="filter-quantity-c"><span>Quantity:</span> <input
                                    value="" autocomplete="off" id="filter-quantity-from"
                                    name="minQuantity" tabindex="22"> <span>-</span> <input
                                    value="" autocomplete="off" id="filter-quantity-to"
                                    name="maxQuantity" tabindex="23"> </span> <span
                                    style="display: none" id="quantity-submit" class="narrow-go"></span>
                                <a style="display: none" id="quantity-cancel"
                                    class="narrow-go-cancel" href="javascript:void(0)">Cancel</a> <input
                                    type="hidden" name="SearchText" value="choker necklace">
                                <input type="hidden" name="shipCountry" value="vn"> <input
                                    type="hidden" name="isRtl" value="all"> <input
                                    type="hidden" name="isOnSale" value="all"> <input
                                    id="narrowDownCate" type="hidden" name="CatId" value="0">
                                <input type="hidden" name="filterCat"
                                    value="200000111,200004077,200000114"> <input
                                    type="hidden" name="needQuery" value="n">



                            </form>
                        </div>
                        <div id="sort-by-container" style="display: none; z-index: 99;">
                            <a
                                href="${createLink(controller : 'category',action: 'show', params: [id: categoryId, sortBy : 'price', orderby : 'asc'])}"
                                rel="nofollow" class="sort_price_asc">Price (Lowest first)</a> 
                            <a
                                href="${createLink(controller : 'category',action: 'show', params: [id: categoryId, sortBy : 'price', orderby : 'desc'])}"
                                rel="nofollow" class="sort_price_desc">Price (Highest first)</a>
                            <a
                                href="${createLink(controller : 'category',action: 'show', params: [id: categoryId, sortBy : 'date', orderby : 'desc'])}"
                                rel="nofollow" class="sort_create_desc">Newest Products</a> 
                        </div>

                        <a href="javascript:void(0)" class="narrow-close-btn"
                            id="narrow-down-close" style="display: none;"></a>
                        <iframe class="maskIframe"
                            style="display: none; z-index: 98; top: 0px; left: 0px;"
                            frameborder="0"></iframe>
                        <iframe class="maskIframe"
                            style="display: none; z-index: 98; top: 0px; left: 0px;"
                            frameborder="0"></iframe>
                    </div>
