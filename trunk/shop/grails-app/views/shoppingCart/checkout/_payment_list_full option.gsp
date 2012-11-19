<div class="paymethod-inner">
	<h2>Choose your payment method</h2>

	<div id="special-coupon-tips" class="ui-tip-prompt save"
		_originaldisplay="block" style="display: block;">
		Save <span class="price">US $5.00</span> on this order by paying with
		<a
			href="https://alipay.alibaba.com/checkout.htm?contractId=2012111746552553&showTips=true&wsOrderFrom=product_detail&wsOrderId=1019626884#"
			class="channel-master">MasterCard</a>!
	</div>

	<div id="special-coupon-success-tips" class="ui-tip-success save"
		style="display: none;" _originaldisplay="block">
		By paying with MasterCard, your Payable Total is reduced to <span
			class="price">US $680.00</span>.
	</div>

	<ul id="paymethod-list">
		<li><input type="radio" id="channel-master" name="channel-token"
			data-token="MRC" data-paymethod="credit-card" value="mastercard">
			<label for="channel-master" hidefocus="true"> <span
				class="channel-logo MRC" title="MasterCard"></span> <span>MasterCard</span>
				<span style="color: #F00; font-size: 11px;">(Save More!)</span>
		</label></li>
		<li><input type="radio" id="channel-visa" name="channel-token"
			data-token="VSG" data-paymethod="credit-card" value="visa"> <label
			for="channel-visa" hidefocus="true"> <span
				class="channel-logo VSG" title="Visa"></span> <span>Visa</span>
		</label></li>
		<li><input type="radio" id="channel-western-union"
			name="channel-token" data-token="WUR" data-paymethod="western-union"
			value="wu"> <label for="channel-western-union"
			hidefocus="true"> <span class="channel-logo WUR"
				title="Western Union"></span> <span>Western Union<sup>®</sup></span>
		</label></li>


		<li><input type="radio" id="channel-moneybookers"
			name="channel-token" data-token="MYB" data-paymethod="money-bookers"
			value="mb_wlt"> <label for="channel-moneybookers"
			hidefocus="true"> <span class="channel-logo MYB"
				title="Moneybookers"></span> <span>Moneybookers</span>
		</label></li>

		<!-- TT支付 -->
		<li class="current"><input type="radio"
			id="channel-bank-transfer" name="channel-token" data-token="BWI"
			data-paymethod="bank-transfer" value="tt"> <label
			for="channel-bank-transfer" hidefocus="true"> <span
				class="BWI" title="Bank Transfer">Bank Transfer</span>
		</label></li>
		<li><input type="radio" id="channel-other" name="channel-token"
			data-token="OPC" data-paymethod="other-channel" value="other">
			<label for="channel-other" hidefocus="true"> <span
				class="OPC" title="other">other</span>
		</label></li>
	</ul>

	<div id="checkbox">
		<div id="buyer-protection-important" _originaldisplay="block"
			style="display: none;">
			<div class="ui-tip-prompt">Your transaction is only protected
				with AliExpress Buyer Protection when using one of the payment
				methods on the left.</div>
			<div class="ui-tip-protect-medium nbox">
				<h3>Why is AliExpress Buyer Protection important?</h3>
				<ul>
					<li>Your payment is only released to the supplier after you
						confirm delivery</li>
					<li>Refunds are available if you're not satisfied with your
						purchase</li>
					<li>We make the payment on your behalf so your credit card
						details are never exposed</li>
				</ul>
			</div>
		</div>


		<div id="ttWrongAlert" style="display: none;">
			<div class="ui-tip-error-medium">
				<strong class="important-words">Bank transfer service is
					currently unavailable. Please try again later.</strong>
			</div>
		</div>
		<div id="credit-card" class="clearfix" style="display: none;"
			_originaldisplay="block">
			<h2>
				Pay with <span id="credit-card-description" class="channel-logo MRC"></span>
			</h2>
			<form name="checkoutForm" id="payment-order-form" action=""
				method="post" autocomplete="off">
				<input name="_csrf_token_" type="hidden" value="obwpb4sh5jcz">
				<input type="hidden" name="action" value="checkoutAction"> <input
					type="hidden" name="event_submit_do_Perform" value="anything">
				<input type="hidden" id="_fmh.c._0.m" name="_fmh.c._0.m" value="tt">
				<input type="hidden" id="_fmh.c._0.c" name="_fmh.c._0.c"
					value="2012111746552553"> <input type="hidden"
					id="_fmh.c._0.p" name="_fmh.c._0.p" value="680.00"> <input
					type="hidden" id="_fmh.c._0.pa" name="_fmh.c._0.pa" value="USD">
				<input type="hidden" id="_fmh.c._0.is" name="_fmh.c._0.is"
					value="true"> <input type="hidden"
					name="deviceFingerprintID"
					value="4c6b644f6544394951437454557a394b5056527653565244545777775a7a30391353207729402">
				<dl>
					<dt>
						<label id="cardholder-name-label" class="required"
							for="_fmh.c._0.f"> Cardholder Name: </label>
					</dt>
					<dd>
						<div id="cardHolderName">
							<input type="text" id="_fmh.c._0.f" name="_fmh.c._0.f"
								maxlength="30" style="width: 100px;" value=""
								placeholder="First Name" class="placeholder"
								data-placeholder="true"> <input type="text"
								id="_fmh.c._0.l" name="_fmh.c._0.l" maxlength="30"
								style="width: 100px;" value="" placeholder="Last Name"
								class="placeholder" data-placeholder="true">
							<div id="cardholder-name-error" class="ui-tip-error"
								style="display: none;">Please enter English characters
								only.</div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label id="card-number-label" class="required" for="_fmh.c._0.car">
							Card No: </label>
					</dt>
					<dd>
						<input type="text" id="_fmh.c._0.car" name="_fmh.c._0.car"
							size="23" maxlength="19" value="">
						<div id="credit-card-tip" class="tip-icon">&nbsp;</div>
						<div id="credit-card-tip-content" class="tip-popup left"
							style="display: none;">
							<div class="arrow"></div>
							<a href="javascript:void(0);" class="close-button"></a>
							<div class="content">
								<div>If you’re not sure whether or not your credit card
									supports online payments, please contact your issuer to find
									out.</div>
							</div>
						</div>
						<div id="submitMsgBox" class="remark">We currently cannot
							process business/commercial cards or charge cards.</div>
						<div id="card-number-error" class="ui-tip-error"
							style="display: none">$group.cardNumber.message</div>
						<iframe class="maskIframe"
							style="display: none; z-index: 9; top: 0px; left: 0px;"
							frameborder="0"></iframe>
					</dd>
				</dl>
				<dl>
					<dt>
						<label id="expiration-date-label" class="required"
							for="_fmh.c._0.e"> Expiration date: </label>
					</dt>
					<dd>
						<div id="expDate">
							<input type="text" id="_fmh.c._0.e" name="_fmh.c._0.e"
								maxlength="2" style="width: 35px;" value="" placeholder="MM"
								class="placeholder" data-placeholder="true"> / <input
								type="text" id="_fmh.c._0.ex" name="_fmh.c._0.ex" maxlength="2"
								style="width: 35px;" value="" placeholder="YY"
								class="placeholder" data-placeholder="true">
							<div id="expiration-date-error" class="ui-tip-error"
								style="display: none;">The card expiration date is empty
								or invalid.</div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>
						<label id="security-code-label" class="required"
							for="_fmh.c._0.cv"> Security code: </label>
					</dt>
					<dd>
						<input type="text" id="_fmh.c._0.cv" name="_fmh.c._0.cv" size="3"
							maxlength="3" value=""> <span class="channel-logo CVV"></span>
						<div class="remark">The 3 digits after the card number on
							the signature panel of your card.</div>
						<div id="security-code-error" class="ui-tip-error"
							style="display: none">$group.cvv2.message</div>
					</dd>
				</dl>
				<dl>
					<dt>&nbsp;</dt>
					<dd>
						<button id="payment-order-button" class="ui-btn-medium">Pay
							My Order</button>
					</dd>
				</dl>
				<div class="note-box">
					<span class="note-title">Note:</span>
					<ul>
						<li>Your payment is secured with VeriSign SSL encryption, the
							highest commercially available encryption technology. Please be
							assured that your credit card details will not be exposed</li>
						<li>Your payment will be kept secure and will only be
							released to the supplier when you confirm satisfactory receipt of
							your order</li>
						<li>Import duties, taxes and other customs related charges
							are not included. Buyers bear all responsibility for all extra
							charges incurred (if any). <a
							href="http://www.alibaba.com/help/express/customs_related_issues.html"
							target="new">Learn more</a>
						</li>
					</ul>
				</div>
			</form>
		</div>

		<div id="paypal" style="display: none;">
			<h2>
				Pay with <span class="channel-logo PPL"></span>
			</h2>
			<button id="paypal-button" class="ui-btn-medium">Pay My
				Order</button>
		</div>

		<div id="western-union" class="clearfix" style="display: none;"
			_originaldisplay="block">
			<h2>
				Pay with <span class="channel-logo WUR"></span>
			</h2>
			<h5 class="separator">
				Go to your local Western Union<sup>®</sup> agent and complete a <strong>"QUICK
					PAY" (Person to Company, not Person to Person)</strong> payment using a BLUE
				Western Union<sup>®</sup> Payment Services form with following
				information. You will incur a fee for the money transfer.
			</h5>
			<div id="wu-generate-tip" class="ui-tip-prompt">
				<p>Generate an Account Number and Use the following information
					to complete a QuickPay at your preferred Western Union Location.</p>
			</div>
			<div class="account-detail">
				<dl>
					<dt>Company Name:</dt>
					<dd>
						Alipay Singapore E Commerce
						<div id="western-union-tip" class="tip-icon">&nbsp;</div>
						<div id="western-union-tip-content" class="tip-popup left"
							style="display: none;">
							<div class="arrow"></div>
							<a class="close-button" href="javascript:void(0);">close</a>
							<div class="content">
								<p>Alipay Singapore E-Commerce Pte. Ltd. is the authorized
									Escrow account name for AliExpress. Please make sure you ONLY
									transfer money to this account.</p>
							</div>
						</div>
						<iframe class="maskIframe"
							style="display: none; z-index: 9; top: 0px; left: 0px;"
							frameborder="0"></iframe>
					</dd>
				</dl>
				<dl>
					<dt>Company Code:</dt>
					<dd>Alipay SG</dd>
				</dl>
				<dl>
					<dt>Country:</dt>
					<dd>Singapore</dd>
				</dl>
				<dl>
					<dt>Account Number:</dt>
					<dd id="wu-account-number">
						<button class="ui-btn-medium" id="wu-generate-button">Generate</button>
					</dd>
				</dl>
			</div>
			<div class="note-text">
				To find your nearest Western Union<sup>®</sup> agent location that
				offers <strong>"QUICK PAY"</strong> (country, city), <a
					href="http://www.payment-solutions.com/agent.asp" target="new">click
					here.</a>
			</div>
			<div class="note-box">
				<span class="note-title">Note:</span>
				<ul>
					<li><a
						href="http://help.aliexpress.com/ipay/wu_quickpay_sample.html"
						target="new">Click here</a> to refer to the sample Western Union<sup>®</sup>
						<strong>QUICK PAY</strong> form.</li>
					<li><a
						href="http://help.aliexpress.com/ipay/wu_quickpay_fee_table.html"
						target="new">Click here</a> for the Western Union<sup>®</sup> fee
						table.</li>
					<li>Payment to be made to: <strong>"Alipay Singapore
							E Commerce"</strong> and NOT to the supplier.
					</li>
					<li>On completion of <strong>"QUICK PAY"</strong> payment,
						please keep the MTCN code in a secure place. Please do not share
						the MTCN code with anyone.
					</li>
					<li>Please contact the Alibaba Customer Service Team if the
						status of your order has not changed to "Buyer has paid the order"
						3 working days after making payment.</li>
				</ul>
			</div>
			<div class="note-refer">
				<a
					href="http://escrow.aliexpress.com/escrow-faq/payment/how-do-i-pay-with-wu.html"
					target="new">Learn more about paying via Western Union.</a>
			</div>
		</div>

		<div id="qiwi-wallet" style="display: none;" _originaldisplay="block">
			<h2>
				Используйте следующие способы платежа <span class="channel-logo QWI"></span>
			</h2>
			<div class="account-check">
				<p>Пожалуйста, введите Ваш аккаунт QIWI Кошелек.</p>
				<dl>
					<dt>
						<span class="required">Аккаунт QIWI Кошелек:</span>
					</dt>
					<dd>
						<div class="account-section">
							<div class="section">
								<span>+7</span> <input type="text" id="qiwi-wallet-account"
									name="phone" value="">
								<button id="qiwi-wallet-account-button" class="ui-btn-medium">Введите
									номер</button>
							</div>
							<div id="qiwi-wallet-spinner" class="spinner"></div>
						</div>
						<div id="qiwi-wallet-account-error" class="ui-tip-error"
							style="display: none;">Введите верный номер телефона,
							прикрепленный к аккаунту QIWI Кошелек.</div>
					</dd>
				</dl>
			</div>
			<div id="qiwi-wallet-mask" class="ui-mask"></div>
			<div id="qiwi-wallet-dialog" class="ui-dialog" style="display: none;">
				<div class="ui-dialog-title">В связи с нижеследующими
					причинами оплата не произошла</div>
				<div class="ui-dialog-content">
					<div class="ui-tip-error-medium nbox">Извините, система
						временно недоступна, попробуйте позже.</div>
				</div>
				<div class="ui-dialog-button">
					<button class="ui-btn-medium">Вернуться</button>
				</div>
				<div class="ui-dialog-close" title="закрыть">закрыть</div>
			</div>
		</div>

		<div id="money-bookers" style="display: none;"
			_originaldisplay="block">
			<div class="board alertA-naked" id="ie6-msg"
				style="display: none; background-color: #F8F9FB !important;">
				<strong class="important-words">Your current internet
					browser does not support this payment method. In order to proceed:</strong><span
					class="time-left"></span>
				<ul style="list-style: disc inside none">
					<li>Update your internet browser to <span class="time-left">Internet
							Explorer 7</span>, <span class="time-left">Internet Explorer 8 </span>.<br>or
					</li>
					<li>Pay for this order via Visa, MasterCard.</li>
				</ul>
			</div>
			<h2>
				<div class="left">
					Pay with <span id="money-bookers-description"
						class="channel-logo MYB"></span>
				</div>
				<a id="other-channel-back" style="display: none;">Click here to
					select a payment method in your location.</a>
			</h2>
			<iframe id="money-bookers-channel"
				src="./Checkout_files/mbLoading.htm" width="598" height="520"
				frameborder="no" border="0" marginwidth="0" marginheight="0"
				scrolling="no"></iframe>
		</div>
		<div id="money-bookers-account" style="display: none;"
			_originaldisplay="block">
			<h2>
				Pay with <span class="channel-logo MYB"></span>
			</h2>
			<div class="ui-tip-prompt">
				<p>Your Alibaba registered email address does not match a valid
					Moneybookers account.</p>
			</div>
			<br>
			<h5>Please enter the email for your Moneybookers account:</h5>
			<div class="account-check">
				<dl>
					<dt>
						<span class="required">Moneybookers account:</span>
					</dt>
					<dd>
						<input type="text" id="money-bookers-email" name="email" size="22"
							value="">
						<button id="money-bookers-account-button" class="ui-btn-medium">check
							My Email</button>
					</dd>
				</dl>
			</div>
		</div>
		<div id="bank-transfer" class="clearfix" style="display: block;"
			_originaldisplay="block">
			<h2>Pay With Bank Transfer</h2>
			<h5 class="separator">Bank Transfer Account Details:</h5>
			<div class="account-detail">
				<dl>
					<dt>Beneficiary Name:</dt>
					<dd>
						Alipay Singapore E-Commerce Pte Ltd
						<div id="bank-transfer-tip" class="tip-icon">&nbsp;</div>
						<div id="bank-transfer-tip-content" class="tip-popup left"
							style="display: none;">
							<div class="arrow"></div>
							<a class="close-button" href="javascript:void(0);">close</a>
							<div class="content">
								<p>Alipay Singapore E-Commerce Pte. Ltd. is the authorized
									Escrow account name for AliExpress. Please make sure you ONLY
									transfer money to this account.</p>
							</div>
						</div>
						<iframe class="maskIframe"
							style="display: none; z-index: 9; top: 0px; left: 0px;"
							frameborder="0"></iframe>
					</dd>
				</dl>
				<dl>
					<dt>Beneficiary Bank:</dt>
					<dd>CITIBANK N.A., SINGAPORE BRANCH</dd>
				</dl>
				<dl>
					<dt>Beneficiary Account Number:</dt>
					<dd>
						<span id="tt-virtual-account">026010105683964</span>
						<div class="tip-notice">
							<div class="arrow arrow-top"></div>
							<div class="text">Every order has a unique Beneficiary
								Account Number. Please do not combine all your orders into one
								payment.</div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>Beneficiary Bank Address:</dt>
					<dd>3 Temasek Avenue, #11-00 Centennial Tower, Singapore
						039190</dd>
				</dl>
				<dl>
					<dt>Beneficiary Bank SWIFT Code:</dt>
					<dd>CITISGSG</dd>
				</dl>
				<dl>
					<dt>Beneficiary Bank Phone Number:</dt>
					<dd>+65-6224-2622</dd>
				</dl>
				<dl>
					<dt>Beneficiary Bank Email Address:</dt>
					<dd>singapore.citiservice@citi.com</dd>
				</dl>
			</div>
			<div class="note-box">
				<span class="note-title">Note:</span>
				<ul>
					<li>Only transfer payment to the Beneficiary Name as listed
						above. Please do not transfer payment to the supplier directly.</li>
					<li>Transfer the full amount in one payment; do not divide a
						payment into more than one transfer; Please do not combine all
						your orders into one payment.</li>
					<li>Keep your bank remittance slip for future reference.</li>
					<li>Do not transfer payment in currencies other than USD.</li>
					<li>Please contact the Alibaba Customer Service Team if the
						order status has not changed to "buyer has paid the order" <strong>7
							working days</strong> after you transfer.
					</li>
					<li>When using bank transfers, please transfer enough money to
						cover all banks` service fee. This will ensure that the supplier
						receives your full payment and will help you avoid monetary loss
						caused by refunds or disputes.</li>
				</ul>
			</div>
		</div>
		<!-- other -->
		<div id="other-channel" style="display: none;"
			_originaldisplay="block">
			<h2>Please select a local payment method:</h2>
			<ul class="channel-list">
				<li><input type="radio" id="other-channel-carte-bleue"
					name="other-channel-token" data-token="GCB" value="mb_gcb">
					<label for="other-channel-carte-bleue" hidefocus="true"> <span
						class="channelm-logo mGCB" title="Carte Bleue"></span>
				</label></li>

				<li><input type="radio" id="other-channel-maestro"
					name="other-channel-token" data-token="SWI" value="mb_mae">
					<label for="other-channel-maestro" hidefocus="true"> <span
						class="channelm-logo mSWI" title="Maestro"></span>
				</label></li>

				<li><input type="radio" id="other-channel-solo"
					name="other-channel-token" data-token="SO2" value="mb_slo">
					<label for="other-channel-solo" hidefocus="true"> <span
						class="channelm-logo mSO2" title="Solo"></span>
				</label></li>

				<li><input type="radio" id="other-channel-cartasi"
					name="other-channel-token" data-token="CTS" value="mb_csi">
					<label for="other-channel-cartasi" hidefocus="true"> <span
						class="channelm-logo mCTS" title="CartaSi"></span>
				</label></li>
				<li><input type="radio" id="other-channel-postepay"
					name="other-channel-token" data-token="PTY" value="mb_psp">
					<label for="other-channel-postepay" hidefocus="true"> <span
						class="channelm-logo mPTY" title="Postepay"></span>
				</label></li>

				<li><input type="radio" id="other-channel-4b-card"
					name="other-channel-token" data-token="FBC" value="mb_4b">
					<label for="other-channel-4b-card" hidefocus="true"> <span
						class="channelm-logo mFBC" title="4B"></span>
				</label></li>
				<li><input type="radio" id="other-channel-euro6000"
					name="other-channel-token" data-token="E6K" value="mb_euro6000">
					<label for="other-channel-euro6000" hidefocus="true"> <span
						class="channelm-logo mE6K" title="Euro 6000"></span>
				</label></li>
			</ul>
		</div>
		<!-- end other -->
	</div>
	<!-- end checkbox -->   
            <!-- end contents -->
            
     <div class="clearfix">
         <a href="javascript:print();" class="print">Print this page.</a>
     </div>
 </div>