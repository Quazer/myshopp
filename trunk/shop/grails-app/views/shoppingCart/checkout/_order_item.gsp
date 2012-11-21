<%@ page import="com.nghia.shop.CommonUtils" %>
<div id="order-list">
	<table cellspacing="0" cellpadding="0" width="100%">
		<thead>
			<tr>
				<th width="10%">Order Number</th>
				<th width="13%">Order Create Date</th>
				<th width="10%">Subtotal</th>
				<th width="20%">Shipping Cost</th>
				<th width="15%">Discount/Coupon</th>
				<th width="10%">Order Total</th>
			</tr>
		</thead>
		<tbody>
		  <g:each in="${orderStatusTracking.shoppingCart }" var="shoppingCart">
	            <tr>
	                <td>${shoppingCart.orderNumber }</td>
	                <td>${shoppingCart.dateAdded }</td>
	                <td>${CommonUtils.subTotalPerOrder(shoppingCart.product) }</td>
	                <td>${shoppingCart.shippingMethodPrice }&nbsp;&nbsp;</td>
	                <td>${CommonUtils.discountOrCoupon(shoppingCart) }</td>
	                <td>${CommonUtils.totalPerOrder(orderItem) }</td>
	            </tr>
		  </g:each>
		</tbody>
	</table>
	<div class="sum">
		<p id="special-coupon-amount" style="display: none;"
			_originaldisplay="block">Save: US $5.00</p>
		<p>
			Sum: <span id="sum-payable-amount">${CommonUtils.totalPriceOfShopCart(orderStatusTracking.shoppingCart) }</span> 
		</p>
	</div>
</div>