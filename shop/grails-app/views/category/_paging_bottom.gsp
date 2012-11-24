<div id="pagination-bottom" class="pagination ws-page clearfix">
                        <div class="pos-right">
                            <g:paging total="${productTotalCount}" params="[id: categoryId, sortBy : params.sortBy, orderby : params.orderby, SearchText : params?.SearchText, 
                                       maxPrice: params?.maxPrice, minPrice:params.minPrice, maxQuantity: params?.maxQuantity, 
                                       minQuantity: params?.minQuantity]"/>
                                 
                            <%--
                            <span id="pagination-max"
                                style="display: none">262</span> <span class="page-skip">
                                Go to Page <input id="pagination-bottom-input"
                                class="pagination-input" type="text" value=""> <input
                                id="pagination-bottom-goto" class="pagination-goto go-btn"
                                type="button" value="Go">
                            </span>
                             --%>
                        </div>
                    </div>