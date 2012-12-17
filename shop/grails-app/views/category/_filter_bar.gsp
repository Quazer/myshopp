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
							
                            
                                <span class="narrow-price" id="price_lowest_1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                ${message(code: 'cat.filter.price.label')}</span>
                        </div>

                        <div class="narrow-down-bg" style="left: 290px;">

							<g:form name="filter-form">
								<input type="hidden" name="id" id="id" value="${categoryId }">
                                <span id="filter-price"><span>${message(code: 'cat.filter.price.label')}:</span> 
                                	<input
	                                    tabindex="20" name="minPrice" id="filter-price-from"
	                                    autocomplete="off" value="${params.minPrice }"> <span>-</span> 
	                                <input
	                                    tabindex="20" name="maxPrice" id="filter-price-to"
	                                    autocomplete="off" value="${params.maxPrice }"> 
                                </span> <span class="narrow-go" id="filter-submit" style="display: none"></span> 
                                <a
                                    href="javascript:void(0)" class="narrow-go-cancel"
                                    id="narrow-go-cancel" style="display: none">Cancel</a> 
                                    
                                 <input type="hidden" name="SearchText" value="${params.SearchText }">
                                <input value="${params.minQuantity }" name="minQuantity" type="hidden">  
                                <input value="${params.maxQuantity }" name="maxQuantity" type="hidden">
                                
                                <input value="${params.sortBy }" name="sortBy" type="hidden">
                                <input value="${params.orderby }" name="orderby" type="hidden">
                            </g:form>



                        </div>
                        <div class="narrow-down-bg">
                            <g:form name="quantity-form">
                                <span id="filter-quantity-c">
                                <span>Quantity:</span> 
                                <input type="hidden" name="id" id="id" value="${categoryId }">
                                <input
                                    value="${params.minQuantity }" autocomplete="off" id="filter-quantity-from"
                                    name="minQuantity" tabindex="22"> <span>-</span> 
                                <input
                                    value="${params.maxQuantity }" autocomplete="off" id="filter-quantity-to"
                                    name="maxQuantity" tabindex="23"> 
                                 </span> 
                                 <span
                                    style="display: none" id="quantity-submit" class="narrow-go"></span>
                                <a style="display: none" id="quantity-cancel"
                                    class="narrow-go-cancel" href="javascript:void(0)">Cancel</a> 
                                <input type="hidden" name="SearchText" value="${params.SearchText }">
                                <input value="${params.minPrice }" name="minPrice" type="hidden">
                                <input value="${params.maxPrice }" name="maxPrice" type="hidden">
                                
                                <input value="${params.sortBy }" name="sortBy" type="hidden">
                                <input value="${params.orderby }" name="orderby" type="hidden">


                            </g:form>
                        </div>
                        <div id="sort-by-container" style="display: none; z-index: 99;">
                            <a
                                href="${createLink(controller : 'category',action: 'show', 
									params: [id: categoryId, sortBy : 'price', orderby : 'asc', SearchText : params?.SearchText, 
                                       maxPrice: params?.maxPrice, minPrice:params.minPrice, maxQuantity: params?.maxQuantity, 
                                       minQuantity: params?.minQuantity])}"
                                rel="nofollow" class="sort_price_asc">Price (Lowest first)</a> 
                            <a
                                href="${createLink(controller : 'category',action: 'show', params: 
									[id: categoryId, sortBy : 'price', orderby : 'desc', SearchText : params?.SearchText, 
									   maxPrice: params?.maxPrice, minPrice:params.minPrice, maxQuantity: params?.maxQuantity, 
									   minQuantity: params?.minQuantity])}"
                                rel="nofollow" class="sort_price_desc">Price (Highest first)</a>
                            <a
                                href="${createLink(controller : 'category',action: 'show', 
									params: [id: categoryId, sortBy : 'date', orderby : 'desc', SearchText : params?.SearchText, 
                                       maxPrice: params?.maxPrice, minPrice:params.minPrice, maxQuantity: params?.maxQuantity, 
                                       minQuantity: params?.minQuantity])}"
                                rel="nofollow" class="sort_create_desc">Newest Products</a> 
                        </div>

                    </div>
