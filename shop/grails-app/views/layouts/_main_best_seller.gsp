<%@ page import="com.nghia.shop.CommonUtils" %>
					<div>
						<div class="cate_best">
							<h3>Best Seller</h3>
							<div class="border_tn">
								<ul class="productList small">
								    <g:each in="${CommonUtils.bestSellerOfCategory(categoryName) }" var="bestSellerProduct">
	                                    <li>
	                                        <div class="photo">
	                                            <a
	                                                href="${createLink(controller : 'product',action: 'show', params:[sku: bestSellerProduct?.sku])}">
	                                                <img
	                                                src="${createLink(controller : 'imageStore',action: 'productImages', id: bestSellerProduct?.productImage?.id)}"
	                                                alt="" title="${product.name }">
	                                            </a>
	                                        </div>
	                                        <div class="pi">
	                                            <p class="title">
	                                                <a
	                                                    href="${createLink(controller : 'product',action: 'show', params:[sku: bestSellerProduct?.sku])}"
	                                                    title="${product.name }">${product.name }</a>
	                                            </p>
	                                            <div class="price">${CommonUtils.productPrice(product) }</div>
	                                        </div>
	                                    </li>
								    </g:each>
									
								</ul>
								
								<!-- 
								<div class="more">
								    
									<a href="" class="btn_more"
										rel="nofollow">See More&nbsp;»</a>
								</div>
								
								 -->
							</div>
						</div>
					</div>

<!-- edit here -->
		<script type="text/javascript">
            Pattaya.Mall.initCategoryRP({
                "title": "Best Seller",
                "moreLink": "/top-sellers",
                "BI_RP": {
                    "rpUrl": "/Category/CategoryBestSeller",
                    "cate": 219
                },
                "BFD_ITEM_INFO": {
                    "cat_name": Pattaya.Global.Utils.decodeHtml("Stickers"),
                    "cat_parent": Pattaya.Global.Utils.decodeHtml("Cases &amp; Protectors")
                }
            });
        </script>