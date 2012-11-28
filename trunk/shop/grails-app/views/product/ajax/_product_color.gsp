
		<g:each in="${productColors }" var="productExtend" status="i">
			<%-- Color selected by BUYER --%>
			<g:if test="${params?.productColorId?.matches('\\d{1,12}') }">
				<g:if test="${productExtend.id == params.productColorId}">
					<li class="active">
						<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="Clear" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
				  		<i>selected</i>
					</li>
				</g:if>
				<g:else>
					<li>
						<a class="sku-value attr-sku1" id="sku-1-100018786" title="Clear" href="javascript:void(0)">
				      		<span class="color ${productExtend.productColor }" title="Clear"></span>
				  		</a>
					</li>
				</g:else>
			</g:if>
			<g:elseif test="${i == 0 }">
				<li class="active">
					<a class="sku-value attr-sku1" id="sku-1-${productInstance.sku }" title="Clear" href="javascript:void(0)">
			      		<span class="color ${productExtend.productColor }" title="Clear"></span>
			  		</a>
			  		<i>selected</i>
				</li>
			</g:elseif>
			<g:else>
				<li>
					<a class="sku-value attr-sku1" id="sku-1-100018786" title="Clear" href="javascript:void(0)">
			      		<span class="color ${productExtend.productColor }" title="Clear"></span>
			  		</a>
				</li>
			</g:else>

		</g:each>
