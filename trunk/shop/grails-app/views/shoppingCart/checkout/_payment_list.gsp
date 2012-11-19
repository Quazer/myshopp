<div class="paymethod-inner">
	<h2>Choose your payment method</h2>

	<ul id="paymethod-list">

		<li><input type="radio" id="channel-western-union"
			name="channel-token" data-token="WUR" data-paymethod="western-union"
			value="wu"> <label for="channel-western-union"
			hidefocus="true">  <span>Paypal</span>
		</label></li>
		<li class="current"><input type="radio"
			id="channel-bank-transfer" name="channel-token" data-token="BWI"
			data-paymethod="bank-transfer" value="tt" checked> <label
			for="channel-bank-transfer" hidefocus="true"> <span
				class="BWI" title="Bank Transfer">${message(code: 'payment.banktransfer.name')}</span>
		</label></li>

	</ul>

	<div id="checkbox">

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
							charges incurred (if any). 
						</li>
					</ul>
				</div>
			</form>
		</div>

		<div id="paypal" class="clearfix" style="display: none;">
			<h2>
				Pay with <span >Paypal</span>
			</h2>
			<button id="paypal-button" class="ui-btn-medium">Pay My
				Order</button>
		</div>

		<div id="western-union" class="clearfix" style="display: none;"
			_originaldisplay="block">
            <h2>Pay With Paypal</h2>
            <button id="paypal-button" class="ui-btn-medium">Pay My
                Order</button>
                <form action="https://www.paypal.com/cgi-bin/webscr" method="post">
<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="89RU6GJBE32CG">
<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1">
</form>
                
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

		<div id="bank-transfer" class="clearfix" style="display: block;"
			_originaldisplay="block">
			<h2>Pay With Bank Transfer</h2>
			<h5 class="separator">${message(code: 'payment.banktransfer.title')}</h5>
			<div class="account-detail">
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryName.title')}</dt>
					<dd>
						${message(code: 'payment.banktransfer.beneficiaryName')}
					</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryBank.title')}</dt>
					<dd>${message(code: 'payment.banktransfer.beneficiaryBank')}</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryAccNo.title')}</dt>
					<dd>
						<span id="tt-virtual-account">${message(code: 'payment.banktransfer.beneficiaryAccNo')}</span>
						<div class="tip-notice">
							<div class="arrow arrow-top"></div>
							<div class="text">${message(code: 'payment.banktransfer.beneficiaryAccNo.notice')}</div>
						</div>
					</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryBankAddr.title')}</dt>
					<dd>${message(code: 'payment.banktransfer.beneficiaryBankAddr')}</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryBankSwiffCode.title')}</dt>
					<dd>${message(code: 'payment.banktransfer.beneficiaryBankSwiffCode')}</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryBankFoneNo.title')}</dt>
					<dd>${message(code: 'payment.banktransfer.beneficiaryBankFoneNo')}</dd>
				</dl>
				<dl>
					<dt>${message(code: 'payment.banktransfer.beneficiaryBankEmail.title')}</dt>
					<dd>${message(code: 'payment.banktransfer.beneficiaryBankEmail')}</dd>
				</dl>
			</div>
			<div class="note-box">
				<span class="note-title">${message(code: 'payment.banktransfer.note.title')}</span>
				<ul>
					<li>${message(code: 'payment.banktransfer.note1')}</li>
					<li>${message(code: 'payment.banktransfer.note2')}</li>
					<li>${message(code: 'payment.banktransfer.note3')}</li>
					<li>${message(code: 'payment.banktransfer.note4')}</li>
					<li>${message(code: 'payment.banktransfer.note5')}</li>
					<li>${message(code: 'payment.banktransfer.note6')}</li>
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