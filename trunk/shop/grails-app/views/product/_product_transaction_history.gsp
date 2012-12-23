	<<g:if test="${transactionHistoryList?.size() > 0 }">
	
	<div id="transaction-history">
		<div id="transaction-top" class="clearfix">
			<p>Transaction History &amp; Feedback</p>
			<div id="transaction-filter" class="clearfix">
				<strong>2</strong> transactions in last 6 months.<a
					id="transaction-sort" class="transaction-sort-inactive">Sort by
					latest</a>
			</div>
		</div>
		<div id="transaction-list">
			<table>
				<thead>
					<tr>
						<th width="" class="transaction-buyer">Buyer</th>
						<th width="" class="transaction-infomation">Transaction
							Information</th>
						<th width="" class="transaction-feedback">Feedback</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><div class="vip-level" memberid="132406430">
								<span class="vip-user-name">R***e L.</span><a
									href="http://help.aliexpress.com/vip_club.html" target="_blank"
									title="VIP Silver"><img
									src="./product detail_files/vip_silver_11x11.png"
									alt="VIP Silver"></a>
							</div>
							<img class="transaction-user-level" alt=""
							src="./product detail_files/11-b.gif"></td>
						<td><div class="transaction-price">
								<span class="cost"><b>US $105.00</b></span> x 1 Lot
							</div>
							<div class="transaction-option"></div>
							<div class="transaction-date">19 Nov 2012 06:43</div></td>
						<td><div class="transaction-ratings">
								<div class="star star-m">
									<span style="width: NaN%"></span>
								</div>
							</div>
							<div class="transaction-description" itemprop="description">No
								feedback yet</div></td>
					</tr>
					<tr>
						<td><div class="vip-level" memberid="134363262">
								<span class="vip-user-name">H***h B.</span>
							</div>
							<img class="transaction-country" alt="United States"
							src="./product detail_files/us.gif" title="United States"></td>
						<td><div class="transaction-price">
								<span class="cost"><b>US $105.00</b></span> x 1 Lot
							</div>
							<div class="transaction-option"></div>
							<div class="transaction-date">17 Nov 2012 00:34</div></td>
						<td><div class="transaction-ratings">
								<div class="star star-m">
									<span style="width: NaN%"></span>
								</div>
							</div>
							<div class="transaction-description" itemprop="description">No
								feedback yet</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="transaction-bottom" class="clearfix">
			<div id="transaction-complain">
				Think there are problems with this Transaction History? <a
					rel="nofollow"
					href="http://channel.alibaba.com/complaint/postComplaint.htm?type=product_suspected_credit_hype">Report
					to AliExpress</a>.
			</div>
			<div id="transaction-pagination" class="pagination clearfix">
				<div class="pos-right">
					<span class="page-start">Previous</span><span class="page-cur">1</span><span
						class="page-end">Next</span>
				</div>
			</div>
		</div>
	</div>
	</g:if>