<div class="order-address " id="all-address-list">
     <!-- Add New Order Address -->
     <div class="order-title"><h2>Please confirm your shipping address:</h2></div>

     <!--Address Item -->
     <div class="order-address-item">
          <ul class="order-address-list" id="order-address-list">

              <!-- The first address is default selected. and others is hidden. -->
              <%
			  def mainShippingAddress = currentuserLogin.shippingDetail
			  %>
              <li class="single-address order-address-selected">
                  <div class="order-address-name">
                  		<%--
                  		<input type="radio" checked name="addressId" class="rdo-address address-item-id" value="${mainShippingAddress.id }">
                  		<label class="the-reciver contact-name-text" for="">${mainShippingAddress.name }</label>
                  		 --%>
                       <input type="radio" checked name="addressId" class="rdo-address address-item-id" value="${mainShippingAddress.id }">
                       <label class="the-reciver contact-name-text" for="">${mainShippingAddress.name }</label>
                  </div>
                  <div class="order-address-main">
                       <div class="address-info">
                            <p class="street-address-text-one">${mainShippingAddress.street1 }
                            ${mainShippingAddress.street2 ? "," + mainShippingAddress.street2 : ""}</p>
                            <p><span class="city-text">${mainShippingAddress.city }</span>
                            <g:if test="${mainShippingAddress.state }">
                            , <span class="province-text">${mainShippingAddress.state }</span>
                            </g:if>
                            <g:if test="${mainShippingAddress.state }">
                            , <span class="zip-code-text">${mainShippingAddress.zip }</span>
                            </g:if>
                            </p>
                            <p class="country-region-text">${mainShippingAddress.country }
                            </p>
                            
                            <g:if test="${mainShippingAddress.mobilePhone }">
	                            <p>
	                                <span class="address-list-key">Mobile Number:</span>
	                                <span class="mobile-number-text">${mainShippingAddress.mobilePhone }</span>
	                            </p>
                            </g:if>
                            <g:if test="${mainShippingAddress.homePhone }">
                                <p>
                                    <span class="address-list-key">Home Number:</span>
                                    <span class="mobile-number-text">${mainShippingAddress.homePhone }</span>
                                </p>
                            </g:if>
                            
                            <p><a href="javascript:void(0)" class="lnk-opt lnk-edit">Edit this address</a></p>
                       </div>
                  </div>
              </li>
              
              <g:each in="${currentuserLogin.shippingAddress }" var="shippingAddress">
	              <li class="single-address order-address">
                  <div class="order-address-name">
                  	<%--
					   <input type="radio" name="addressId" class="rdo-address address-item-id" value="${shippingAddress.id }">
                       <label class="the-reciver contact-name-text" for="">${shippingAddress.name }</label>
                  	 --%>
                       <input type="radio" name="addressId" class="rdo-address address-item-id" value="${shippingAddress.id }">
                       <label class="the-reciver contact-name-text" for="">${shippingAddress.name }</label>
                  </div>
                  <div class="order-address-main">
                       <div class="address-info">
                            <p class="street-address-text-one">${shippingAddress.street1 }
                            ${shippingAddress.street2 ? "," + shippingAddress.street2 : ""}</p>
                            <p><span class="city-text">${shippingAddress.city }</span>
                            <g:if test="${shippingAddress.state }">
                            , <span class="province-text">${shippingAddress.state }</span>
                            </g:if>
                            <g:if test="${shippingAddress.state }">
                            , <span class="zip-code-text">${shippingAddress.zip }</span>
                            </g:if>
                            </p>
                            <p class="country-region-text">${shippingAddress.country }
                            </p>
                            
                            <g:if test="${shippingAddress.mobilePhone }">
                                <p>
                                    <span class="address-list-key">Mobile Number:</span>
                                    <span class="mobile-number-text">${shippingAddress.mobilePhone }</span>
                                </p>
                            </g:if>
                            <g:if test="${shippingAddress.homePhone }">
                                <p>
                                    <span class="address-list-key">Home Number:</span>
                                    <span class="mobile-number-text">${mainShippingAddress.homePhone }</span>
                                </p>
                            </g:if>
                            
                            <p><a href="javascript:void(0)" class="lnk-opt lnk-edit">Edit this address</a></p>
                       </div>
                  </div>
	              </li>
              </g:each>
              

                      </ul>
    </div>

    <div class="address-show-tab show-rest">
              <a href="javascript:void(0);" id="lnk-add-new-address">Add a new address</a>
              <span><a id="lnk-address-tab" href="javascript:void(0);">Revise or select other addresses</a></span>
    </div>
</div>