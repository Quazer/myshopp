	<g:if test="${sizeOfProd && sizeOfProd?.size > 0 }">
           <dl class="sku-row">
               <dt class="pp-dt-ln sku-title">
                   Shoe US Size:
               </dt>
               <dd>
                   <ul id="sku-sku2" class="sku-attr sku-checkbox clearfix">
                   
                   <g:each in="${sizeOfProd }" var="productExtend" >
                   		<g:if test="${params?.productSize?.matches('\\d{1,12}') }">
                   			<g:if test="${productExtend.id == params.productSize || productExtend.isSelected}">
			                    <li class="active" id="${productExtend.productSize }">
			                    	<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
			                    	<span>${productExtend.productSize }</span></a><i>selected</i>
			                    </li>
                   			</g:if>
                   			<g:elseif test="${!productExtend.enableSize4Buyer}">
                   				<li class="disabled">
                   					<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
                   					<span>${productExtend.productSize }</span></a>
                   				</li>
                   			</g:elseif>
                   			<g:else>
                   				<li>
                   					<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
                   					<span>${productExtend.productSize }</span></a>
                   				</li>
                   			</g:else>
                   		</g:if>
	                   <g:else>
                   			<g:if test="${productExtend.isSizeSelected}">
			                    <li class="active" id="${productExtend.productSize }">
			                    	<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
			                    	<span>${productExtend.productSize }</span></a><i>selected</i>
			                    </li>
                   			</g:if>
                   			<g:elseif test="${!productExtend.enableSize4Buyer}">
                   				<li class="disabled">
                   					<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
                   					<span>${productExtend.productSize }</span></a>
                   				</li>
                   			</g:elseif>
                   			<g:else>
                   				<li>
                   					<a class="sku-value attr-checkbox" id="sku-2-${productInstance.sku }" title="${productExtend.productSize }" href="javascript:void(0)">
                   					<span>${productExtend.productSize }</span></a>
                   				</li>
                   			</g:else>
	                   </g:else>
                   </g:each>

                   
                    
                   </ul>
                   <div id="inf-msg-size" class="msg-selected sku-msg" style="display: none;">
                       Please select a Shoe US Size
                   </div>
               </dd>
           </dl>
	</g:if>
