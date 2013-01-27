
                                             

                                            <dl>
                                                <dt>Quantity:</dt>
                                                <dd>
                                                    <div id="inf-pnl-quantity" class="pnl-quantity">
                                                        <div id="inf-msg-quantity" class="msg-quantity" style="visibility: hidden;"></div>

														<g:if test="${selectedQuantity }">
															<input type="text" name="quantity" id="inf-txt-quantity" class="txt-quantity" maxlength="5" value="${selectedQuantity }">	
														</g:if>
                                                        <g:else>
                                                        	<input type="text" name="quantity" id="inf-txt-quantity" class="txt-quantity" maxlength="5" value="1">
                                                        </g:else>
                                                        
                                                        <span id="inf-lbl-unit" class="lbl-unit">lot</span> 
                                                        <input type="hidden" id="oddUnitName_id" value="lot"> 
                                                        <input type="hidden" id="multiUnitName_id" value="lots">
                                                        <img id="inf-bnt-quantity-calculate" src="${resource(dir: 'images/product', file: 'calculate.gif')}" alt="" style="visibility: visible;">


                                                        <p id="inf-msg-stockpile" class="msg-stockpile msg-selected">
                                                            Purchases are limited to <span id="sku-active-no">9999</span> lots
                                                        </p>
                                                    </div>
                                                </dd>
                                            </dl>