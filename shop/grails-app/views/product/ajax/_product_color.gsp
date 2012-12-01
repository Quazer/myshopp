
		<g:each in="${productColors }" var="productExtend" status="i">
			<%-- Color selected by BUYER --%>
			<g:if test="${params?.productColor?.matches('\\d{1,12}') }">
				<g:if test="${productExtend.id == params.productColor || productExtend.productExtend}">
					<li class="active" id="${productExtend.productColor }">
						<a class="sku-value attr-sku1" id="sku-1-${i }" title="${productExtend.productColor }" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
				  		<i>selected</i>
					</li>
				</g:if>
				<g:elseif test="${!productExtend.enableColor4Buyer}">
					<li class="disabled">
						<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="${productExtend.productColor }" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
					</li>
				</g:elseif>
				<g:else>
					<li>
						<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="${productExtend.productColor }" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
					</li>
				</g:else>
			</g:if>
			<g:elseif test="${((isAjaxColor && productExtend.isColorSelected) || (!isAjaxColor && i == 0)) }">
				<li class="active" id="${productExtend.productColor }">
					<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="${productExtend.productColor }" href="javascript:void(0)">
			      		<span class="color ${productExtend.productColor }" title="Clear"></span>
			  		</a>
			  		<i>selected</i>
				</li>
			</g:elseif>
				<g:elseif test="${!productExtend.enableColor4Buyer}">
					<li class="disabled">
						<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="${productExtend.productColor }" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
					</li>
				</g:elseif>
			<g:else>
				<li>
					<a class="sku-value attr-sku1" id="sku-1-100018786" title="${productExtend.productColor }" href="javascript:void(0)">
			      		<span class="color ${productExtend.productColor }" title="Clear"></span>
			  		</a>
				</li>
			</g:else>

		</g:each>
