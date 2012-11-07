<%@ page import="com.nghia.shop.CommonUtils" %>

<g:each in="${CommonUtils.otherProducts(productInstance)}" var="product" status="i">
	<g:if test="${i % 5 == 0 && i > 1}">
	<ul class="productList sublist" style="position: absolute; top: 0px; left: 894px; z-index: 0; display:none">
	</g:if>
	<g:if test="${i == 0}">
	   <ul class="productList sublist" style="position: absolute; top: 0px; left: 894px; z-index: 0; ">
	</g:if>
asdasd
                <li>
                    <div class="photo">
                        <a href="${createLink(controller : 'product',action: 'show', id: product?.id)}"><img alt="${product.name }" src="${product.productImage?.id }" title="${product.name }"></a>
                    </div>
                    <div class="pi">
                        <p class="title"><a href="${createLink(controller : 'product',action: 'show', id: product?.id)}" title="${product.name }">${product.name }</a></p>
                        <p class="price">${CommonUtils.productPrice(product) }</p>
                        <p class="noBFD pad_t5">
                            <a id="btn-add-to-cart" href="${createLink(controller : 'shoppingCart',action: 'add', id: product?.id)}" class="btn_addcart_cy" rel="nofollow"></a>
                        </p>
              </li>
      <g:if test="${i % 5 == 0 }">
      </ul>
      </g:if>
</g:each>
            