
<div id="pdt" class="tabbed-pane-panel clearfix" style="display: block;">
	<!--real-time-->

	<!--real-time-->
	<div class="params">

		<h2>${message(code: 'product.itemSpecifics.label')}</h2>

		${productInstance.specification }
	</div>

	<div id="custom-description" class="clearfix">


		<h2 class="description">${message(code: 'product.description.label')}</h2>


		<div>
	
			${productInstance.overview }
		</div>
	</div>

	<div id="pdt-pnl-packaging" class="pnl-packaging">

		<h2>Packaging Details</h2>
		<dl>
			<dt>Unit Type:</dt>
			<dd><g:message code="${productInstance.unit }"/>
				<g:if test="${productInstance.numberItemPerUnit > 1}">
				(${productInstance.numberItemPerUnit } <g:message code="${productInstance.itemUnit }"/>)
				</g:if>
			</dd>
		</dl>
		<dl>
			<dt>Package Weight:</dt>
			<dd>${productInstance.packageWeight }</dd>
		</dl>
		<dl>
			<dt>Package Size:</dt>
			<dd>${productInstance.packageSize }</dd>
		</dl>
	</div>


	<g:render template="product_transaction_history"/>

	<div id="pdt-pnl-escrow" class="pnl-escrow"></div>
	<div id="pdt-pnl-method" class="pnl-method"></div>

</div>