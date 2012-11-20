    
    <div class="order-address-item">

        <div class="order-address-name order-address-selected " id="buyer-name-sidebar">
            <input type="radio" name="address-edit-item-title" value="zhangsan" checked="checked">
            <label for="address-edit-item-title" id="address-item-title"></label>
        </div>
        
        <g:form method="POST" >
        
        <div class="order-address-manage">
            <!-- Address info [start] -->
            <div id="address-edit-box">

                <div class="address-field-item">
                     <h3>Contact Name:</h3>
                     <input type="text" class="contact-name" id="contact-name" name="_fmo.m._0.c" value="">
                     <p id="add-name-error" class="message-box hide"></p>
                </div>

                <div class="address-field-item">
                     <h3>Country/Region:</h3>
                     <select id="country-region" name="_fmo.m._0.co">
                         <option value="">--Please Select--</option>
                         <option value="RU" alt="7">Russian Federation</option>
                         <option value="US" alt="1">United States</option>
                         <option value="BR" alt="55">Brazil</option>
                         <option value="AU" alt="61">Australia</option>
                         <option value="UK" alt="44">United Kingdom</option>
                         <option value="ES" alt="34">Spain</option>
                         <option value="FR" alt="33">France</option>
                         <option value="CA" alt="1">Canada</option>
                         <option value="PL" alt="48">Poland</option>
                         <option value="TR" alt="90">Turkey</option>
                         <option value="SE" alt="46">Sweden</option>
                         <option value="IL" alt="972">Israel</option>
                         <option value="IT" alt="39">Italy</option>
                         <option value="NZ" alt="64">New Zealand</option>
                         <option value="DE" alt="49">Germany</option>
                         <option value="line" alt="line">-----------------Country &amp; Territories (A-Z)-----------------</option>

                         <option value="AF" alt="93">Afghanistan</option>
                         <option value="ALA" alt="358">Aland Islands</option>
                         <option value="AL" alt="355">Albania</option>
                         <option value="GBA" alt="493">Alderney</option>
                         <option value="DZ" alt="213">Algeria</option>
                         <option value="AS" alt="684">American Samoa</option>
                         <option value="AD" alt="376">Andorra</option>
                         <option value="AO" alt="244">Angola</option>
                         <option value="AI" alt="1-264">Anguilla</option>
                         <option value="AQ" alt="672">Antarctica</option>
                         <option value="AG" alt="1-268">Antigua and Barbuda</option>
                         <option value="AR" alt="54">Argentina</option>
                         <option value="AM" alt="374">Armenia</option>
                         <option value="AW" alt="297">Aruba</option>
                         <option value="ASC" alt="247">Ascension Island</option>
                         <option value="AU" alt="61">Australia</option>
                         <option value="AT" alt="43">Austria</option>
                         <option value="AZ" alt="994">Azerbaijan</option>
                         <option value="BS" alt="1-242">Bahamas</option>
                         <option value="BH" alt="973">Bahrain</option>
                         <option value="BD" alt="880">Bangladesh</option>
                         <option value="BB" alt="1-246">Barbados</option>
                         <option value="BY" alt="375">Belarus</option>
                         <option value="BE" alt="32">Belgium</option>
                         <option value="BZ" alt="501">Belize</option>
                         <option value="BJ" alt="229">Benin</option>
                         <option value="BM" alt="1-441">Bermuda</option>
                         <option value="BT" alt="975">Bhutan</option>
                         <option value="BO" alt="591">Bolivia</option>
                         <option value="BA" alt="387">Bosnia and Herzegovina</option>
                         <option value="BW" alt="267">Botswana</option>
                         <option value="BV" alt="47">Bouvet Island</option>
                         <option value="BR" alt="55">Brazil</option>
                         <option value="IO" alt="1-284">British Indian Ocean Territory</option>
                         <option value="BN" alt="673">Brunei Darussalam</option>
                         <option value="BG" alt="359">Bulgaria</option>
                         <option value="BF" alt="226">Burkina Faso</option>
                         <option value="BI" alt="257">Burundi</option>
                         <option value="KH" alt="855">Cambodia</option>
                         <option value="CM" alt="237">Cameroon</option>
                         <option value="CA" alt="1">Canada</option>
                         <option value="CV" alt="238">Cape Verde</option>
                         <option value="KY" alt="1-345">Cayman Islands</option>
                         <option value="CF" alt="236">Central African Republic</option>
                         <option value="TD" alt="235">Chad</option>
                         <option value="CL" alt="56">Chile</option>                                                                                  
                         <option value="CX" alt="61">Christmas Island</option>
                         <option value="CC" alt="61">Cocos (Keeling) Islands</option>
                         <option value="CO" alt="57">Colombia</option>
                         <option value="KM" alt="269">Comoros</option>
                         <option value="ZR" alt="243">Congo, The Democratic Republic Of The</option>
                         <option value="CG" alt="242">Congo, The Republic of Congo</option>
                         <option value="CK" alt="682">Cook Islands</option>
                         <option value="CR" alt="506">Costa Rica</option>
                         <option value="CI" alt="225">Cote D'Ivoire</option>
                         <option value="HR" alt="385">Croatia (local name: Hrvatska)</option>
                         <option value="CU" alt="53">Cuba</option>
                         <option value="CY" alt="357">Cyprus</option>
                         <option value="CZ" alt="420">Czech Republic</option>
                         <option value="DK" alt="45">Denmark</option>
                         <option value="DJ" alt="253">Djibouti</option>
                         <option value="DM" alt="1-767">Dominica</option>
                         <option value="DO" alt="1-809">Dominican Republic</option>
                         <option value="TP" alt="670">East Timor</option>
                         <option value="EC" alt="593">Ecuador</option>
                         <option value="EG" alt="20">Egypt</option>
                         <option value="SV" alt="503">El Salvador</option>
                         <option value="GQ" alt="240">Equatorial Guinea</option>
                         <option value="ER" alt="291">Eritrea</option>
                         <option value="EE" alt="372">Estonia</option>
                         <option value="ET" alt="251">Ethiopia</option>
                         <option value="FK" alt="500">Falkland Islands (Malvinas)</option>
                         <option value="FO" alt="298">Faroe Islands</option>
                         <option value="FJ" alt="679">Fiji</option>
                         <option value="FI" alt="358">Finland</option>
                         <option value="FR" alt="33">France</option>
                         <option value="FX" alt="33">France Metropolitan</option>
                         <option value="GF" alt="594">French Guiana</option>
                         <option value="PF" alt="689">French Polynesia</option>
                         <option value="TF" alt="33">French Southern Territories</option>
                         <option value="GA" alt="241">Gabon</option>
                         <option value="GM" alt="220">Gambia</option>
                         <option value="GE" alt="995">Georgia</option>
                         <option value="DE" alt="49">Germany</option>
                         <option value="GH" alt="233">Ghana</option>
                         <option value="GI" alt="350">Gibraltar</option>
                         <option value="GR" alt="30">Greece</option>
                         <option value="GL" alt="299">Greenland</option>
                         <option value="GD" alt="1-473">Grenada</option>
                         <option value="GP" alt="590">Guadeloupe</option>
                         <option value="GU" alt="1-671">Guam</option>
                         <option value="GT" alt="502">Guatemala</option>
                         <option value="GGY" alt="44">Guernsey</option>
                         <option value="GN" alt="224">Guinea</option>
                         <option value="GW" alt="245">Guinea-Bissau</option>
                         <option value="GY" alt="592">Guyana</option>
                         <option value="HT" alt="509">Haiti</option>
                         <option value="HM" alt="61">Heard and Mc Donald Islands</option>
                         <option value="HN" alt="504">Honduras</option>
                         <option value="HK" alt="852">Hong Kong</option>
                         <option value="HU" alt="36">Hungary</option>
                         <option value="IS" alt="354">Iceland</option>
                         <option value="IN" alt="91">India</option>
                         <option value="ID" alt="62">Indonesia</option>
                         <option value="IR" alt="98">Iran (Islamic Republic of)</option>
                         <option value="IQ" alt="964">Iraq</option>
                         <option value="IE" alt="353">Ireland</option>
                         <option value="IM" alt="44">Isle of Man</option>
                         <option value="IL" alt="972">Israel</option>
                         <option value="IT" alt="39">Italy</option>
                         <option value="JM" alt="1-876">Jamaica</option>
                         <option value="JP" alt="81">Japan</option>
                         <option value="JEY" alt="44">Jersey</option>
                         <option value="JO" alt="962">Jordan</option>
                         <option value="KZ" alt="7">Kazakhstan</option>
                         <option value="KE" alt="254">Kenya</option>
                         <option value="KI" alt="686">Kiribati</option>
                         <option value="KS" alt="381">Kosovo</option>
                         <option value="KW" alt="965">Kuwait</option>
                         <option value="KG" alt="996">Kyrgyzstan</option>
                         <option value="LA" alt="856">Lao People's Democratic Republic</option>
                         <option value="LV" alt="371">Latvia</option>
                         <option value="LB" alt="961">Lebanon</option>
                         <option value="LS" alt="266">Lesotho</option>
                         <option value="LR" alt="231">Liberia</option>
                         <option value="LY" alt="218">Libya</option>
                         <option value="LI" alt="423">Liechtenstein</option>
                         <option value="LT" alt="370">Lithuania</option>
                         <option value="LU" alt="352">Luxembourg</option>
                         <option value="MO" alt="853">Macau</option>
                         <option value="MK" alt="389">Macedonia</option>
                         <option value="MG" alt="261">Madagascar</option>
                         <option value="MW" alt="265">Malawi</option>
                         <option value="MY" alt="60">Malaysia</option>
                         <option value="MV" alt="960">Maldives</option>
                         <option value="ML" alt="223">Mali</option>
                         <option value="MT" alt="356">Malta</option>
                         <option value="MH" alt="692">Marshall Islands</option>
                         <option value="MQ" alt="596">Martinique</option>
                         <option value="MR" alt="222">Mauritania</option>
                         <option value="MU" alt="230">Mauritius</option>
                         <option value="YT" alt="269">Mayotte</option>
                         <option value="MX" alt="52">Mexico</option>
                         <option value="FM" alt="691">Micronesia</option>
                         <option value="MD" alt="373">Moldova</option>
                         <option value="MC" alt="377">Monaco</option>
                         <option value="MN" alt="976">Mongolia</option>
                         <option value="MNE" alt="382">Montenegro</option>
                         <option value="MS" alt="1-664">Montserrat</option>
                         <option value="MA" alt="212">Morocco</option>
                         <option value="MZ" alt="258">Mozambique</option>
                         <option value="MM" alt="95">Myanmar</option>
                         <option value="NA" alt="264">Namibia</option>
                         <option value="NR" alt="674">Nauru</option>
                         <option value="NP" alt="977">Nepal</option>
                         <option value="NL" alt="31">Netherlands</option>
                         <option value="AN" alt="599">Netherlands Antilles</option>
                         <option value="NC" alt="687">New Caledonia</option>
                         <option value="NZ" alt="64">New Zealand</option>
                         <option value="NI" alt="505">Nicaragua</option>
                         <option value="NE" alt="227">Niger</option>
                         <option value="NG" alt="234">Nigeria</option>
                         <option value="NU" alt="683">Niue</option>
                         <option value="NF" alt="672">Norfolk Island</option>
                         <option value="KP" alt="850">North Korea</option>
                         <option value="MP" alt="1670">Northern Mariana Islands</option>
                         <option value="NO" alt="47">Norway</option>
                         <option value="OM" alt="968">Oman</option>
                         <option value="Other" alt="$countryPhoneNum.get($item.value)">Other Country</option>
                         <option value="PK" alt="92">Pakistan</option>
                         <option value="PW" alt="680">Palau</option>
                         <option value="PS" alt="970">Palestine</option>
                         <option value="PA" alt="507">Panama</option>
                         <option value="PG" alt="675">Papua New Guinea</option>
                         <option value="PY" alt="595">Paraguay</option>
                         <option value="PE" alt="51">Peru</option>
                         <option value="PH" alt="63">Philippines</option>
                         <option value="PN" alt="872">Pitcairn</option>
                         <option value="PL" alt="48">Poland</option>
                         <option value="PT" alt="351">Portugal</option>
                         <option value="PR" alt="1-787">Puerto Rico</option>
                         <option value="QA" alt="974">Qatar</option>
                         <option value="RE" alt="262">Reunion</option>
                         <option value="RO" alt="40">Romania</option>
                         <option value="RU" alt="7">Russian Federation</option>
                         <option value="RW" alt="250">Rwanda</option>
                         <option value="BLM" alt="590">Saint Barthelemy</option>
                         <option value="KN" alt="1">Saint Kitts and Nevis</option>
                         <option value="LC" alt="1">Saint Lucia</option>
                         <option value="MAF" alt="590">Saint Martin</option>
                         <option value="VC" alt="1">Saint Vincent and the Grenadines</option>
                         <option value="WS" alt="685">Samoa</option>
                         <option value="SM" alt="378">San Marino</option>
                         <option value="ST" alt="239">Sao Tome and Principe</option>
                         <option value="SA" alt="966">Saudi Arabia</option>
                         <option value="SCT" alt="$countryPhoneNum.get($item.value)">Scotland</option>
                         <option value="SN" alt="221">Senegal</option>
                         <option value="SRB" alt="381">Serbia</option>
                         <option value="SC" alt="248">Seychelles</option>
                         <option value="SL" alt="232">Sierra Leone</option>
                         <option value="SG" alt="65">Singapore</option>
                         <option value="SK" alt="421">Slovakia (Slovak Republic)</option>
                         <option value="SI" alt="386">Slovenia</option>
                         <option value="SB" alt="677">Solomon Islands</option>
                         <option value="SO" alt="252">Somalia</option>
                         <option value="ZA" alt="27">South Africa</option>
                         <option value="SGS" alt="44">South Georgia and the South Sandwich Islands</option>
                         <option value="KR" alt="82">South Korea</option>
                         <option value="SS" alt="$countryPhoneNum.get($item.value)">South Sudan</option>
                         <option value="ES" alt="34">Spain</option>
                         <option value="LK" alt="94">Sri Lanka</option>
                         <option value="SH" alt="290">St. Helena</option>
                         <option value="PM" alt="508">St. Pierre and Miquelon</option>
                         <option value="SD" alt="249">Sudan</option>
                         <option value="SR" alt="597">Suriname</option>
                         <option value="SJ" alt="47">Svalbard and Jan Mayen Islands</option>
                         <option value="SZ" alt="268">Swaziland</option>
                         <option value="SE" alt="46">Sweden</option>
                         <option value="CH" alt="41">Switzerland</option>
                         <option value="SY" alt="963">Syrian Arab Republic</option>
                         <option value="TW" alt="886">Taiwan</option>
                         <option value="TJ" alt="992">Tajikistan</option>
                         <option value="TZ" alt="255">Tanzania</option>
                         <option value="TH" alt="66">Thailand</option>
                         <option value="TLS" alt="670">Timor-Leste</option>
                         <option value="TG" alt="228">Togo</option>
                         <option value="TK" alt="690">Tokelau</option>
                         <option value="TO" alt="676">Tonga</option>
                         <option value="TT" alt="1-868">Trinidad and Tobago</option>
                         <option value="TN" alt="216">Tunisia</option>
                         <option value="TR" alt="90">Turkey</option>
                         <option value="TM" alt="993">Turkmenistan</option>
                         <option value="TC" alt="1-649">Turks and Caicos Islands</option>
                         <option value="TV" alt="688">Tuvalu</option>
                         <option value="UG" alt="256">Uganda</option>
                         <option value="UA" alt="380">Ukraine</option>
                         <option value="AE" alt="971">United Arab Emirates</option>
                         <option value="UK" alt="44">United Kingdom</option>
                         <option value="US" alt="1">United States</option>
                         <option value="UM" alt="1">United States Minor Outlying Islands</option>
                         <option value="UY" alt="598">Uruguay</option>
                         <option value="UZ" alt="998">Uzbekistan</option>
                         <option value="VU" alt="678">Vanuatu</option>
                         <option value="VA" alt="39">Vatican City State (Holy See)</option>
                         <option value="VE" alt="58">Venezuela</option>
                         <option value="VN" alt="84" selected="selected">Vietnam</option>
                         <option value="VG" alt="1284">Virgin Islands (British)</option>
                         <option value="VI" alt="1340">Virgin Islands (U.S.)</option>
                         <option value="WF" alt="681">Wallis And Futuna Islands</option>
                         <option value="EH" alt="685">Western Sahara</option>
                         <option value="YE" alt="967">Yemen</option>
                         <option value="YU" alt="381">Yugoslavia</option>
                         <option value="ZM" alt="260">Zambia</option>
                         <option value="EAZ" alt="255">Zanzibar</option>
                         <option value="ZW" alt="263">Zimbabwe</option>
                                                                         </select>
                     <p id="region-error" class="message-box hide"></p>
                </div>
                <div class="address-field-item">
                    <h3>Street Address:</h3>
                    <div class="address-street-box">
                        <input type="text" class="street-address" id="street-address-one" name="_fmo.m._0.a" value="">
                        <p id="address-error1" class="message-box hide"></p>
                    </div>
                    <div>
                        <input type="text" class="street-address" id="street-address-two" name="_fmo.m._0.ad" value="">
                        <p id="address-error2" class="message-box hide"></p>
                    </div>
                </div>
                <div class="address-field-item">
                     <h3>City:</h3>
                     <input type="text" class="city" id="city" name="_fmo.m._0.ci" value="">
                     <p id="city-error" class="message-box hide"></p>
                </div>
                <div class="address-field-item">
                     <h3>State/Province/Country:</h3>
                     <input type="text" class="province" id="province" name="_fmo.m._0.p" value="">
                                                                      <select name="selProvince" class="provinceSelect" countrycode="IN" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                                                              <option value="Andhra Pradesh">Andhra Pradesh</option>
                                                              <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                                              <option value="Assam">Assam</option>
                                                              <option value="Bihar">Bihar</option>
                                                              <option value="Chandigarh">Chandigarh</option>
                                                              <option value="Chhattisgarh">Chhattisgarh</option>
                                                              <option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
                                                              <option value="Daman and Diu">Daman and Diu</option>
                                                              <option value="Delhi">Delhi</option>
                                                              <option value="Goa">Goa</option>
                                                              <option value="Gujarat">Gujarat</option>
                                                              <option value="Haryana">Haryana</option>
                                                              <option value="Himachal Pradesh">Himachal Pradesh</option>
                                                              <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                                                              <option value="Jharkhand">Jharkhand</option>
                                                              <option value="Karnataka">Karnataka</option>
                                                              <option value="Kerala">Kerala</option>
                                                              <option value="Lakshadweep">Lakshadweep</option>
                                                              <option value="Madhya Pradesh">Madhya Pradesh</option>
                                                              <option value="Maharashtra">Maharashtra</option>
                                                              <option value="Manipur">Manipur</option>
                                                              <option value="Meghalaya">Meghalaya</option>
                                                              <option value="Mizoram">Mizoram</option>
                                                              <option value="Nagaland">Nagaland</option>
                                                              <option value="Orissa">Orissa</option>
                                                              <option value="Puducherry">Puducherry</option>
                                                              <option value="Punjab">Punjab</option>
                                                              <option value="Rajasthan">Rajasthan</option>
                                                              <option value="Sikkim">Sikkim</option>
                                                              <option value="Tamil Nadu">Tamil Nadu</option>
                                                              <option value="Tripura">Tripura</option>
                                                              <option value="Uttar Pradesh">Uttar Pradesh</option>
                                                              <option value="Uttarakhand">Uttarakhand</option>
                                                              <option value="West Bengal">West Bengal</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="CN" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Anhui">Anhui</option>
                                                              <option value="Beijing">Beijing</option>
                                                              <option value="Chongqing">Chongqing</option>
                                                              <option value="Fujian">Fujian</option>
                                                              <option value="Gansu">Gansu</option>
                                                              <option value="Guangdong">Guangdong</option>
                                                              <option value="Guangxi">Guangxi</option>
                                                              <option value="Guizhou">Guizhou</option>
                                                              <option value="Hainan">Hainan</option>
                                                              <option value="Hebei">Hebei</option>
                                                              <option value="Heilongjiang">Heilongjiang</option>
                                                              <option value="Henan">Henan</option>
                                                              <option value="Hubei">Hubei</option>
                                                              <option value="Hunan">Hunan</option>
                                                              <option value="Jiangsu">Jiangsu</option>
                                                              <option value="Jiangxi">Jiangxi</option>
                                                              <option value="Jilin">Jilin</option>
                                                              <option value="Liaoning">Liaoning</option>
                                                              <option value="Inner Mongolia">Inner Mongolia</option>
                                                              <option value="Ningxia">Ningxia</option>
                                                              <option value="Qinghai">Qinghai</option>
                                                              <option value="Shaanxi">Shaanxi</option>
                                                              <option value="Shandong">Shandong</option>
                                                              <option value="Shanghai">Shanghai</option>
                                                              <option value="Shanxi">Shanxi</option>
                                                              <option value="Sichuan">Sichuan</option>
                                                              <option value="Tianjin">Tianjin</option>
                                                              <option value="Xinjiang">Xinjiang</option>
                                                              <option value="Tibet">Tibet</option>
                                                              <option value="Yunnan">Yunnan</option>
                                                              <option value="Zhejiang">Zhejiang</option>
                                                      </select>
                                 <select name="selProvince" class="provinceSelect" countrycode="KR" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Busan">Busan</option>
                                                              <option value="Chungcheongbuk-do">Chungcheongbuk-do</option>
                                                              <option value="Chungcheongnam-do">Chungcheongnam-do</option>
                                                              <option value="Daegu">Daegu</option>
                                                              <option value="Daejeon">Daejeon</option>
                                                              <option value="Gangwon-do">Gangwon-do</option>
                                                              <option value="Gwangju">Gwangju</option>
                                                              <option value="Gyeonggi-do">Gyeonggi-do</option>
                                                              <option value="Gyeongsangbuk-do">Gyeongsangbuk-do</option>
                                                              <option value="Gyeongsangnam-do">Gyeongsangnam-do</option>
                                                              <option value="Incheon">Incheon</option>
                                                              <option value="Jeju-do">Jeju-do</option>
                                                              <option value="Jeollabuk-do">Jeollabuk-do</option>
                                                              <option value="Jeollanam-do">Jeollanam-do</option>
                                                              <option value="Seoul">Seoul</option>
                                                              <option value="Ulsan">Ulsan</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="US" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Alabama">Alabama</option>
                                                              <option value="Alaska">Alaska</option>
                                                              <option value="Arizona">Arizona</option>
                                                              <option value="Arkansas">Arkansas</option>
                                                              <option value="California">California</option>
                                                              <option value="Colorado">Colorado</option>
                                                              <option value="Connecticut">Connecticut</option>
                                                              <option value="Delaware">Delaware</option>
                                                              <option value="District of Columbia">District of Columbia</option>
                                                              <option value="Florida">Florida</option>
                                                              <option value="Georgia">Georgia</option>
                                                              <option value="Hawaii">Hawaii</option>
                                                              <option value="Idaho">Idaho</option>
                                                              <option value="Illinois">Illinois</option>
                                                              <option value="Indiana">Indiana</option>
                                                              <option value="Iowa">Iowa</option>
                                                              <option value="Kansas">Kansas</option>
                                                              <option value="Kentucky">Kentucky</option>
                                                              <option value="Louisiana">Louisiana</option>
                                                              <option value="Maine">Maine</option>
                                                              <option value="Maryland">Maryland</option>
                                                              <option value="Massachusetts">Massachusetts</option>
                                                              <option value="Michigan">Michigan</option>
                                                              <option value="Minnesota">Minnesota</option>
                                                              <option value="Mississippi">Mississippi</option>
                                                              <option value="Missouri">Missouri</option>
                                                              <option value="Montana">Montana</option>
                                                              <option value="Nebraska">Nebraska</option>
                                                              <option value="Nevada">Nevada</option>
                                                              <option value="New Hampshire">New Hampshire</option>
                                                              <option value="New Jersey">New Jersey</option>
                                                              <option value="New Mexico">New Mexico</option>
                                                              <option value="New York">New York</option>
                                                              <option value="North Carolina">North Carolina</option>
                                                              <option value="North Dakota">North Dakota</option>
                                                              <option value="Ohio">Ohio</option>
                                                              <option value="Oklahoma">Oklahoma</option>
                                                              <option value="Oregon">Oregon</option>
                                                              <option value="Pennsylvania">Pennsylvania</option>
                                                              <option value="Rhode Island">Rhode Island</option>
                                                              <option value="South Carolina">South Carolina</option>
                                                              <option value="South Dakota">South Dakota</option>
                                                              <option value="Tennessee">Tennessee</option>
                                                              <option value="Texas">Texas</option>
                                                              <option value="Utah">Utah</option>
                                                              <option value="Vermont">Vermont</option>
                                                              <option value="Virginia">Virginia</option>
                                                              <option value="Washington">Washington</option>
                                                              <option value="West Virginia">West Virginia</option>
                                                              <option value="Wisconsin">Wisconsin</option>
                                                              <option value="Wyoming">Wyoming</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="UK" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Aberdeenshire">Aberdeenshire</option>
                                                              <option value="Angus">Angus</option>
                                                              <option value="Argyll">Argyll</option>
                                                              <option value="Avon">Avon</option>
                                                              <option value="Ayrshire">Ayrshire</option>
                                                              <option value="Banffshire">Banffshire</option>
                                                              <option value="Bedfordshire">Bedfordshire</option>
                                                              <option value="Berkshire">Berkshire</option>
                                                              <option value="Berwickshire">Berwickshire</option>
                                                              <option value="Buckinghamshire">Buckinghamshire</option>
                                                              <option value="Caithness">Caithness</option>
                                                              <option value="Cambridgeshire">Cambridgeshire</option>
                                                              <option value="Carmarthenshire">Carmarthenshire</option>
                                                              <option value="Cheshire">Cheshire</option>
                                                              <option value="Clackmannanshire">Clackmannanshire</option>
                                                              <option value="Cleveland">Cleveland</option>
                                                              <option value="Clwyd">Clwyd</option>
                                                              <option value="Cornwall">Cornwall</option>
                                                              <option value="County Antrim">County Antrim</option>
                                                              <option value="County Armagh">County Armagh</option>
                                                              <option value="County Down">County Down</option>
                                                              <option value="County Durham">County Durham</option>
                                                              <option value="County Fermanagh">County Fermanagh</option>
                                                              <option value="County Londonderry">County Londonderry</option>
                                                              <option value="County Tyrone">County Tyrone</option>
                                                              <option value="Cumbria">Cumbria</option>
                                                              <option value="Derbyshire">Derbyshire</option>
                                                              <option value="Devon">Devon</option>
                                                              <option value="Dorset">Dorset</option>
                                                              <option value="Dumfriesshire">Dumfriesshire</option>
                                                              <option value="Dunbartonshire">Dunbartonshire</option>
                                                              <option value="Dyfed">Dyfed</option>
                                                              <option value="East Lothian">East Lothian</option>
                                                              <option value="East Sussex">East Sussex</option>
                                                              <option value="Essex">Essex</option>
                                                              <option value="Fife">Fife</option>
                                                              <option value="Gloucestershire">Gloucestershire</option>
                                                              <option value="Guernsey">Guernsey</option>
                                                              <option value="Gwent">Gwent</option>
                                                              <option value="Gwynedd">Gwynedd</option>
                                                              <option value="Hampshire">Hampshire</option>
                                                              <option value="Herefordshire">Herefordshire</option>
                                                              <option value="Hertfordshire">Hertfordshire</option>
                                                              <option value="Inverness-Shire">Inverness-Shire</option>
                                                              <option value="Isle Of Arran">Isle Of Arran</option>
                                                              <option value="Isle Of Barra">Isle Of Barra</option>
                                                              <option value="Isle Of Benbecula">Isle Of Benbecula</option>
                                                              <option value="Isle Of Bute">Isle Of Bute</option>
                                                              <option value="Isle Of Canna">Isle Of Canna</option>
                                                              <option value="Isle Of Coll">Isle Of Coll</option>
                                                              <option value="Isle Of Colonsay">Isle Of Colonsay</option>
                                                              <option value="Isle Of Cumbrae">Isle Of Cumbrae</option>
                                                              <option value="Isle Of Eigg">Isle Of Eigg</option>
                                                              <option value="Isle Of Gigha">Isle Of Gigha</option>
                                                              <option value="Isle Of Harris">Isle Of Harris</option>
                                                              <option value="Isle Of Iona">Isle Of Iona</option>
                                                              <option value="Isle Of Islay">Isle Of Islay</option>
                                                              <option value="Isle Of Jura">Isle Of Jura</option>
                                                              <option value="Isle Of Lewis">Isle Of Lewis</option>
                                                              <option value="Isle Of Mull">Isle Of Mull</option>
                                                              <option value="Isle Of North Uist">Isle Of North Uist</option>
                                                              <option value="Isle Of Rum">Isle Of Rum</option>
                                                              <option value="Isle Of Scalpay">Isle Of Scalpay</option>
                                                              <option value="Isle Of Skye">Isle Of Skye</option>
                                                              <option value="Isle Of South Uist">Isle Of South Uist</option>
                                                              <option value="Isle Of Tiree">Isle Of Tiree</option>
                                                              <option value="Isle Of Wight">Isle Of Wight</option>
                                                              <option value="Isles Of Scilly">Isles Of Scilly</option>
                                                              <option value="Jersey">Jersey</option>
                                                              <option value="Kent">Kent</option>
                                                              <option value="Kincardineshire">Kincardineshire</option>
                                                              <option value="Kinross-Shire">Kinross-Shire</option>
                                                              <option value="Kirkcudbrightshire">Kirkcudbrightshire</option>
                                                              <option value="Lanarkshire">Lanarkshire</option>
                                                              <option value="Lancashire">Lancashire</option>
                                                              <option value="Leicestershire">Leicestershire</option>
                                                              <option value="Lincolnshire">Lincolnshire</option>
                                                              <option value="London">London</option>
                                                              <option value="Merseyside">Merseyside</option>
                                                              <option value="Mid Glamorgan">Mid Glamorgan</option>
                                                              <option value="Middlesex">Middlesex</option>
                                                              <option value="Midlothian">Midlothian</option>
                                                              <option value="Morayshire">Morayshire</option>
                                                              <option value="Nairnshire">Nairnshire</option>
                                                              <option value="Norfolk">Norfolk</option>
                                                              <option value="North Humberside">North Humberside</option>
                                                              <option value="North Yorkshire">North Yorkshire</option>
                                                              <option value="Northamptonshire">Northamptonshire</option>
                                                              <option value="Northumberland">Northumberland</option>
                                                              <option value="Nottinghamshire">Nottinghamshire</option>
                                                              <option value="Orkney Isles">Orkney Isles</option>
                                                              <option value="Oxfordshire">Oxfordshire</option>
                                                              <option value="Peeblesshire">Peeblesshire</option>
                                                              <option value="Pembrokeshire">Pembrokeshire</option>
                                                              <option value="Perthshire">Perthshire</option>
                                                              <option value="Powys">Powys</option>
                                                              <option value="Renfrewshire">Renfrewshire</option>
                                                              <option value="Ross-Shire">Ross-Shire</option>
                                                              <option value="Roxburghshire">Roxburghshire</option>
                                                              <option value="Rutland">Rutland</option>
                                                              <option value="Selkirkshire">Selkirkshire</option>
                                                              <option value="Shetland Islands">Shetland Islands</option>
                                                              <option value="Shropshire">Shropshire</option>
                                                              <option value="Somerset">Somerset</option>
                                                              <option value="South Glamorgan">South Glamorgan</option>
                                                              <option value="South Humberside">South Humberside</option>
                                                              <option value="South Yorkshire">South Yorkshire</option>
                                                              <option value="Staffordshire">Staffordshire</option>
                                                              <option value="Stirlingshire">Stirlingshire</option>
                                                              <option value="Suffolk">Suffolk</option>
                                                              <option value="Surrey">Surrey</option>
                                                              <option value="Sutherland">Sutherland</option>
                                                              <option value="Tyne And Wear">Tyne And Wear</option>
                                                              <option value="Warwickshire">Warwickshire</option>
                                                              <option value="West Glamorgan">West Glamorgan</option>
                                                              <option value="West Lothian">West Lothian</option>
                                                              <option value="West Midlands">West Midlands</option>
                                                              <option value="West Sussex">West Sussex</option>
                                                              <option value="West Yorkshire">West Yorkshire</option>
                                                              <option value="Wigtownshire">Wigtownshire</option>
                                                              <option value="Wiltshire">Wiltshire</option>
                                                              <option value="Worcestershire">Worcestershire</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="CA" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Alberta">Alberta</option>
                                                              <option value="British Columbia">British Columbia</option>
                                                              <option value="Manitoba">Manitoba</option>
                                                              <option value="New Brunswick">New Brunswick</option>
                                                              <option value="Newfoundland and Labrador">Newfoundland and Labrador</option>
                                                              <option value="Nova Scotia">Nova Scotia</option>
                                                              <option value="Nunavut">Nunavut</option>
                                                              <option value="Northwest Territories">Northwest Territories</option>
                                                              <option value="Ontario">Ontario</option>
                                                              <option value="Prince Edward Island">Prince Edward Island</option>
                                                              <option value="Quebec">Quebec</option>
                                                              <option value="Saskatchewan">Saskatchewan</option>
                                                              <option value="Yukon">Yukon</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="AU" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Australian Capital Territory">Australian Capital Territory</option>
                                                              <option value="New South Wales">New South Wales</option>
                                                              <option value="Northern Territory">Northern Territory</option>
                                                              <option value="Queensland">Queensland</option>
                                                              <option value="South Australia">South Australia</option>
                                                              <option value="Tasmania">Tasmania</option>
                                                              <option value="Victoria">Victoria</option>
                                                              <option value="Western Australia">Western Australia</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="TR" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Adana">Adana</option>
                                                              <option value="Adiyaman">Adiyaman</option>
                                                              <option value="Afyonkarahisar">Afyonkarahisar</option>
                                                              <option value="Agri">Agri</option>
                                                              <option value="Aksaray">Aksaray</option>
                                                              <option value="Amasya">Amasya</option>
                                                              <option value="Ankara">Ankara</option>
                                                              <option value="Antalya">Antalya</option>
                                                              <option value="Ardahan">Ardahan</option>
                                                              <option value="Artvin">Artvin</option>
                                                              <option value="Aydin">Aydin</option>
                                                              <option value="Balikesir">Balikesir</option>
                                                              <option value="Bartin">Bartin</option>
                                                              <option value="Batman">Batman</option>
                                                              <option value="Bayburt">Bayburt</option>
                                                              <option value="Bilecik">Bilecik</option>
                                                              <option value="Bingol">Bingol</option>
                                                              <option value="Bitlis">Bitlis</option>
                                                              <option value="Bolu">Bolu</option>
                                                              <option value="Burdur">Burdur</option>
                                                              <option value="Bursa">Bursa</option>
                                                              <option value="Canakkale">Canakkale</option>
                                                              <option value="Cankiri">Cankiri</option>
                                                              <option value="Corum">Corum</option>
                                                              <option value="Denizli">Denizli</option>
                                                              <option value="Diyarbakir">Diyarbakir</option>
                                                              <option value="Duzce">Duzce</option>
                                                              <option value="Edirne">Edirne</option>
                                                              <option value="Elazig">Elazig</option>
                                                              <option value="Erzincan">Erzincan</option>
                                                              <option value="Erzurum">Erzurum</option>
                                                              <option value="Eskisehir">Eskisehir</option>
                                                              <option value="Gaziantep">Gaziantep</option>
                                                              <option value="Giresun">Giresun</option>
                                                              <option value="Gumushane">Gumushane</option>
                                                              <option value="Hakkari">Hakkari</option>
                                                              <option value="Hatay">Hatay</option>
                                                              <option value="Igdir">Igdir</option>
                                                              <option value="Isparta">Isparta</option>
                                                              <option value="Istanbul">Istanbul</option>
                                                              <option value="Izmir">Izmir</option>
                                                              <option value="Kahramanmaras">Kahramanmaras</option>
                                                              <option value="Karabuk">Karabuk</option>
                                                              <option value="Karaman">Karaman</option>
                                                              <option value="Kars">Kars</option>
                                                              <option value="Kastamonu">Kastamonu</option>
                                                              <option value="Kayseri">Kayseri</option>
                                                              <option value="Kilis">Kilis</option>
                                                              <option value="Kirikkale">Kirikkale</option>
                                                              <option value="Kirklareli">Kirklareli</option>
                                                              <option value="Kirsehir">Kirsehir</option>
                                                              <option value="Kocaeli">Kocaeli</option>
                                                              <option value="Konya">Konya</option>
                                                              <option value="Kutahya">Kutahya</option>
                                                              <option value="Malatya">Malatya</option>
                                                              <option value="Manisa">Manisa</option>
                                                              <option value="Mardin">Mardin</option>
                                                              <option value="Mersin">Mersin</option>
                                                              <option value="Mugla">Mugla</option>
                                                              <option value="Mus">Mus</option>
                                                              <option value="Nevsehir">Nevsehir</option>
                                                              <option value="Nigde">Nigde</option>
                                                              <option value="Ordu">Ordu</option>
                                                              <option value="Osmaniye">Osmaniye</option>
                                                              <option value="Rize">Rize</option>
                                                              <option value="Sakarya">Sakarya</option>
                                                              <option value="Samsun">Samsun</option>
                                                              <option value="Sanliurfa">Sanliurfa</option>
                                                              <option value="Siirt">Siirt</option>
                                                              <option value="Sinop">Sinop</option>
                                                              <option value="Sirnak">Sirnak</option>
                                                              <option value="Sivas">Sivas</option>
                                                              <option value="Tekirdag">Tekirdag</option>
                                                              <option value="Tokat">Tokat</option>
                                                              <option value="Trabzon">Trabzon</option>
                                                              <option value="Tunceli">Tunceli</option>
                                                              <option value="Usak">Usak</option>
                                                              <option value="Van">Van</option>
                                                              <option value="Yalova">Yalova</option>
                                                              <option value="Yozgat">Yozgat</option>
                                                              <option value="Zonguldak">Zonguldak</option>
                                                      </select>
                                                                                               <select name="selProvince" class="provinceSelect" countrycode="MY" style="display:none;">
                             <option value="">--Please Select--</option>
                                                              <option value="Johor">Johor</option>
                                                              <option value="Kedah">Kedah</option>
                                                              <option value="Kelantan">Kelantan</option>
                                                              <option value="Kuala Lumpur">Kuala Lumpur</option>
                                                              <option value="Labuan">Labuan</option>
                                                              <option value="Melaka">Melaka</option>
                                                              <option value="Negeri Sembilan">Negeri Sembilan</option>
                                                              <option value="Pahang">Pahang</option>
                                                              <option value="Perak">Perak</option>
                                                              <option value="Perlis">Perlis</option>
                                                              <option value="Pulau Pinang">Pulau Pinang</option>
                                                              <option value="Putrajaya">Putrajaya</option>
                                                              <option value="Sabah">Sabah</option>
                                                              <option value="Sarawak ">Sarawak </option>
                                                              <option value="Selangor">Selangor</option>
                                                              <option value="Terengganu">Terengganu</option>
                                                      </select>
                                                                   <p id="province-error" class="message-box hide"></p>
                </div>
                <div class="address-field-item">
                     <h3>Zip/Postal Code:</h3>
                     <input type="text" class="zip-code" id="zip-code" name="_fmo.m._0.z" value="">
                     <p id="zipcode-error" class="message-box hide"></p>
                     <p class="address-tip">If you don't have a zip code in your country, input "None". </p>
                </div>
                <div class="address-field-item">
                     <h3>Tel:</h3>
                     <input type="text" class="extra-number" maxlength="8" id="country-number" name="_fmo.m._0.ph" value=""><span class="field-span">-</span>
                     <input type="text" class="extra-number" maxlength="8" id="area-number" name="_fmo.m._0.pho" value=""><span class="field-span">-</span>
                     <input type="text" class="local-number" maxlength="36" id="local-number" name="_fmo.m._0.phon" value="">
                     <p id="tel-num-error" class="message-box hide"></p>
                     <p class="address-tip">Country Code - City Code - Tel Number</p>
                </div>
                     <!--TODO
                     mobile的样式待添加
                     -->
                <div class="address-field-item">
                     <h3>Mobile:</h3>
                     <input type="text" class="mobile-number" maxlength="16" id="mobile-number" name="_fmo.m._0.m" value="">
                     <p id="mobile-num-error" class="message-box hide"></p>
                </div>

                              <div class="address-field-item address-field-buttons">
                     <button type="button" class="btn-submit-m" name="address-btn-enter" id="btn-edit-enter">Save and ship to this address</button>
                     <button type="button" class="btn-cancel-m" name="address-btn-cancel" id="btn-edit-cancel">Cancel</button>
                </div>
                          </div>
            <!-- Address info [end] -->
        </div>
        </g:form>
    </div>