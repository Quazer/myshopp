<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate">
		
    <link rel="stylesheet" type="text/css" href="${resource(dir: 'css/register', file: 'join.css')}">
	
    <script type="text/javascript" async="" src="${resource(dir: 'js/register', file: 'dc.js')}"></script>
    <script type="text/javascript" async="" src="${resource(dir: 'js/register', file: 'base-mod.js')}"></script>
    
    <script type="text/javascript" src="${resource(dir: 'js/register', file: 'ae.js')}"></script>
    
	<script type="text/javascript" src="${resource(dir: 'js/register', file: 'form_validator.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/register', file: 'message.js')}"></script>
    <script type="text/javascript" src="${resource(dir: 'js/register', file: 'area_focus.js')} charset="iso-8859-1"></script>
    <script type="text/javascript" src="${resource(dir: 'js/register', file: 'connection.js')}"></script>
    
</head>

<body><script type="text/javascript" src="${resource(dir: 'js/register', file: 'beacon_ws.js')}"></script>             
<script type="text/javascript">
var dmtrack_c='{ali_resin_trace=JoinInStepLog=joinstep0%26%26%26main}';
var dmtrack_pageid='cbcd34cfcdcc74121356363622'; sk_dmtracking();</script>             
	<div style="padding-bottom: 0pt;" id="header">
        <div id="header-inner">
            <div id="logo"><a href="http://www.aliexpress.com/" title="http://www.aliexpress.com">http://www.aliexpress.com</a></div>
        </div>
        <div class="clear"></div>
    </div>
    <!-- header -->
    
    <div id="page">
    <g:form name="MemberJoinForm" onsubmit="return formSubmit();" method="post" action="saveUser">
    
	<input name="_csrf_token_" type="hidden" value="4zf8tg8q76fo">
    <input type="hidden" name="action" value="buyerJoin/main_buyer_register_action">
    <input type="hidden" name="event_submit_do_buyer_register" value="anything">
    <input type="hidden" name="from" value="">
    <input type="hidden" name="return" value="www.aliexpress.com">
	<input type="hidden" name="cc" value="join201109">
    <input type="hidden" name="src" value="">
    <input type="hidden" name="groupName" value="expressJoinGroup">  
        <input type="hidden" name="ws_score_session_id" id="ws_score_session_id" value="">
    <script type="text/javascript">
        //<![CDATA[
                if(dmtrack_pageid) {
                        document.write('<input type="hidden" name="pageId" value="' + dmtrack_pageid + '" />');
                }
        //]]>
    </script><input type="hidden" name="pageId" value="cbcd34cfcdcc741250d8776613bf03bd8201ba7505"><input type="hidden" name="pageId" value="cbcd34cfcdcc741250d8776613bcd928f091a4fc03">
    <script language="JavaScript">


    
    
    var memberStandRegisterFormClient = {
        focusOnError:true,  
        validateImmediate:true,  
        serviceIMContainerId:'serviceIMContainer',  
        tipsAdviceContainerClass:'fieldTipsContainer',  
        tipsAdviceClass:'fieldTips',  
        tipsAdviceMsgClass:'fieldTipsMsg',  
        errorAdviceContainerClass:'fieldErrorContainer',  
        errorAdviceClass:'fieldError',  
        errorAdviceMsgClass:'fieldErrorMsg',  
        fieldSuccessClass:'fieldSuccess',  
        fieldFailClass:'fieldFail',  
        ifNeedValidate:true,
        eventFuncMap:{
              blur:'default_blur',          
              focus:'default_focus',          
              keydown:'default_keydown',          
              click:'default_click'
        },
        displayFuncMap:{
          getTipsAdvice:'getAdvice_getTips',
          getErrorAdvice:'getAdvice_getError',
          showStatus:'showStatus_changeTitleClass',
          showTipsMsg:'showTipsMsg_bubbleMsg',
          closeTipsMsg:'closeTipsMsg_close',
          showErrorMsg:'showErrorMsg_bubbleMsg',
          closeErrorMsg:'closeErrorMsg_close',
          getSuccessAdvice:'getAdvice_getSuccess'
        },
      
      
	  
	 	  
        fields:{
          '_fmws.e._0.f':{    
              displayFuncMap:{showErrorMsg:'showErrorMsg_showMsgFollowOtherObj',showTipsMsg:'showTipsMsg_showMsgFollowOtherObj'},        
              validators:{
                require:{
                    ruleName:'notTrimedEmpty',
                    params:[],
                    errorMsg:'Please enter your First name'
                    },             
                
                    maxLength:{
                    ruleName:'maxLength',
                  params:[128],
                    errorMsg:'128 characters max.'
                    },
                    legalName:{
                    ruleName:'regexp',
                  params:['/^[a-zA-Z .-]{1,128}$/'],
                    errorMsg:'Please enter English characters only'
                    },             
                    
                    defaultName:{
                    ruleName:'notEqual',
                    params:['First Name'],
                    errorMsg:'Please enter your First Name'
                    }
            }
         },    
        
         '_fmws.e._0.l':{
				tipsMsg:'Cannot be changed after registering.',
				validators:{
                
                require:{
                    ruleName:'notTrimedEmpty',
                  params:[],
                    errorMsg:'Please enter your Last Name'
                    },             
                    
                    maxLength:{
                    ruleName:'maxLength',
                    params:[128],
                    errorMsg:'128 characters max.'
                    }, 
                    
                    legalName:{
                    ruleName:'regexp',
                  params:['/^[a-zA-Z .-]{1,128}$/'],
                    errorMsg:'Please enter English characters only'
                    },              
                    
                    defaultName:{
                    ruleName:'notEqual',
                  params:['Last Name'],
                    errorMsg:'Please enter your Last Name'
                    }            
            }
         },
		 
            '_fmws.e._0.e':{
              tipsMsg:'This email will be used for sign in.',
              validators:{
                  require:{
                      ruleName:'notTrimedEmpty',
                      params:[],
                      errorMsg:'Please enter a valid Email Address'
                    },
                    maxLength:{
                    ruleName:'maxLength',
                    params:[128],
                    errorMsg:'128 characters max.'
                    },
                    
                    isEmail:{
                    ruleName:'regexp',
                    params:['/^\\s*\\w+(?:\\.{0,1}[\\w-]+)*@[a-zA-Z0-9]+(?:[-.][a-zA-Z0-9]+)*\\.[a-zA-Z]+\\s*$/i'],
                    errorMsg:'Please enter a valid Email Address'
                    },
                    
                    isAlibabaEmail:{
                    ruleName:'regexp',
                    params:['/^((?!@(?:.*)alibaba).)*$/i'],
                    errorMsg:'Please enter a valid Email Address'
                    }
                }
            },      
            
            '_fmws.e._0.p':{     
                displayFuncMap:{showTipsMsg:'showTipsMsg_showMsgFollowOtherObj'},     
                tipsMsg:'6 - 20 characters (A-Z, a-z, 0-9 only)',
                validators:{
                        require:{
                            ruleName:'notTrimedEmpty',
                            params:[],
                            errorMsg:'Please enter 6 - 20 characters (A-Z, a-z, 0-9 only)'
                            },
                    
                            minLength:{
                              ruleName:'minLength',
                              params:[6],
                              errorMsg:'Please enter 6 - 20 characters (A-Z, a-z, 0-9 only)'
                            },              
                    
                            maxLength:{
                              ruleName:'maxLength',
                              params:[20],
                              errorMsg:'Please enter 6 - 20 characters (A-Z, a-z, 0-9 only)'
                            },              
                    
                            legalPassword:{
                              ruleName:'regexp',
                              params:['/^[\\w]{6,20}$/'],
                              errorMsg:'Please enter 6 - 20 characters (A-Z, a-z, 0-9 only)'
                            }	        
                    }
            },
            
            '_fmws.e._0.pa':{    
                validators:{
                                
                        require:{
                            ruleName:'notTrimedEmpty',
                            params:[],
                            errorMsg:'Please enter your password again'
                            },
                            
                            equalToPassword:{
                            ruleName:'equalToField',
                          params:['_fmws.e._0.p'],
                            errorMsg:'Passwords are not the same'
                            }        		
                    }
            },
				'_fmws.e._0.b':{
				eventFuncMap:{change:'default_blur'},
				validators:{
	                selection:{ 
	                    ruleName: 'selection',
	                    errorMsg: 'Please select one option' 
	                }    
	            } 
	        },
			
			'agreement-check':{
				displayFuncMap:{showErrorMsg:'showErrorMsg_showMsgFollowOtherObj'},
				
				validators:{
					oneRequire:{
						ruleName: 'oneRequire',
						params:[],
						errorMsg: 'Without sign in the agreement,you can\'t create your account'
					}
				}
			},

            
            '_fmws.e._0.i':{           
                displayFuncMap:{showErrorMsg:'showErrorMsg_showMsgFollowOtherObj',showTipsMsg:'showTipsMsg_showMsgFollowOtherObj'},       
                     
                validators:{
                    require:{
                        ruleName:'notTrimedEmpty',
                      params:[],
                        errorMsg:'Enter the characters you see in the image'
                        },
                        
                        legalProvince:{
                        ruleName:'regexp',
                      params:['/^[\\x00-\\x7f]{1,250}$/'],
                        errorMsg:'Please enter English characters only'
                        }
                    }
            }    
            
        }
    };
    
    
    var uedclient = new AE.form.validator;
    uedclient.addValidator('isCNSelected',function (){
        var c =document.getElementById("");
        return ( c.selectedIndex >=0 && c.options[c.selectedIndex].value == "CN")
    });
    
    uedclient.addValidator('notCNSelected',function (){
        var c =document.getElementById("");	
        return ( c.selectedIndex >=0 && c.options[c.selectedIndex].value != "CN")
    });
    
    uedclient.addValidator('isSelectedAccountType',function (){	
        return isIntlRoleSelect();
    });
	
    uedclient.addDisplayFunc('getAdvice_getSuccess',function(el, result){
            var parentContainer = el.parentNode;
            var tmpArray = parentContainer.getElementsByTagName('input');
            var isEmpty = false;
            if(tmpArray.length>1){
                for(var i=0;i<tmpArray.length;i++){
                    if(tmpArray[i].value.length>0){
                        if(!isEmpty){
                            if(tmpArray[i].value.length<1 || tmpArray[i].className.indexOf('hint')!=-1){
                                isEmpty = true;	
                            }else{
                                isEmpty = false;
                            } 
                        } 
                    }else{
                        isEmpty = true;
                    }
                } 
            }
            if(!isEmpty){
                var allEles = parentContainer.childNodes; 
                for(var i=0;i<allEles.length;i++){
                    if(allEles[i].className && allEles[i].className.indexOf('succTip')>-1){
                        el =  allEles[i];
                        var xy = YAHOO.util.Dom.getXY(el);
                        var elWidth = el.offsetWidth;
                        var succTip = document.createElement("div");
                        succTip.style.position =  "absolute";
                        succTip.style.left = xy[0] + elWidth + 5 + "px"
                        succTip.style.top = xy[1]+"px";	
                        succTip.style.display = "block";
                        succTip.className = "succ";
                        parentContainer.appendChild(succTip);
                    }
                } 
            }else{
                    var allEles = parentContainer.childNodes; 
                 for(var i=0;i<allEles.length;i++){
                    if(allEles[i].className && allEles[i].className=='succ'){
                        parentContainer.removeChild(allEles[i])
                    }
                }
            }
    });
    
    uedclient.addEventFunc('default_blur',function(ev, el){
        var displayFuncs = uedclient.configReader(el, 'displayFuncMap');
        var validateImmediate = uedclient.configReader(el, 'validateImmediate');
        var ifNeedValidate = uedclient.configReader(el, 'ifNeedValidate');
        elValidators = uedclient.getValidators(el);
        if(validateImmediate && ifNeedValidate && elValidators && uedclient.configData.fields[el.id].isInValidateProcess){
            var validateResult = uedclient.validateField(el, elValidators);
            uedclient.configData.fields[el.id].statusResult = validateResult['result'];
            uedclient.configData.fields[el.id].statusMsg = validateResult['msg'];
            uedclient.displayFuncPool[displayFuncs['showStatus']](el, uedclient.configData.fields[el.id].statusResult);
            var msg = uedclient.configData.fields[el.id].statusMsg;
            if(!uedclient.configData.fields[el.id].statusResult){
                var advice = uedclient.displayFuncPool[displayFuncs['getErrorAdvice']](el);
                uedclient.displayFuncPool[displayFuncs['showErrorMsg']](el, advice, msg);
            }else{
                uedclient.displayFuncPool[displayFuncs['closeErrorMsg']](el);
                uedclient.displayFuncPool[displayFuncs['getSuccessAdvice']](el);
            }
        }
        if(uedclient.configData.fields[el.id].tipsMsg && uedclient.configData.fields[el.id].tipsClose != false){
            uedclient.displayFuncPool[displayFuncs['closeTipsMsg']](el);
        }
    });
    
    function closeErrorMsg(elId){
        var errorBox = get(elId);	
        if(errorBox){
            if(errorBox.style.display != 'none'){
                errorBox.style.display = 'none';
            }
        } 
    }
    
    YUE.on(window,'load',function(){
        uedclient.init('memberStandRegisterFormClient', memberStandRegisterFormClient);
		
    });
    </script>
    
    <div id="regFlowEN">
      
    <div class="welcomeField">
        <h2>Create your AliExpress.com account</h2>	
    </div>				
    
    <div id="detailInfo">
		<fieldset class="regFlow">
			<table cellspacing="0" cellpadding="0" class="tables mainReg">
				<tbody>
					<tr>
						<th width="210px" scope="row">
							<span class="required"> Email:</span></th>
						<td>
<script type="text/javascript"> 
    function transferexpressSignIn(){
        var email = document.getElementById("_fmws.e._0.e").value;
        window.location = "http://us.my.alibaba.com/user/transferexpress/register_active.htm?email="+email+"&tracelog=transferexpress_register";
    }
   
    (function(){
    function send_request(url) {
	
      var request = YAHOO.util.Connect.asyncRequest('get', url, checkCodesCallback);
	 	  
    }
    
    var checkCodesSuccess = function(o){
    
        if(o.responseText !== undefined){
                   str = o.responseText;
               value = str.substring(str.indexOf("<state>")+7,str.indexOf("</state>"));
               
                if(value == "common") {
                    //
                    var msg = [];
                    msg.push('<strong>This account already exists. <a href=\"https://login.aliexpress.com/buyer.htm?return_url=http://www.aliexpress.com">Sign in</a></strong>');
                    uedclient.errorFromServer('_fmws.e._0.e', msg);         
                }
                
                 if(value == "special") {
                    duplicateEmail = str.substring(str.indexOf("<duplicateValue>")+16,str.indexOf("</duplicateValue>"));
                    //
                    var msg = [];
                    msg.push('<strong>An account already exists for ' + duplicateEmail + '. <a href=\"https://login.aliexpress.com/buyer.htm?return_url=http://www.aliexpress.com">Sign in<></strong>');
                    uedclient.errorFromServer('_fmws.e._0.e', msg);         
                }
                
                if(value == "to_be_activated") {
                    //
                    var msg = [];
                    msg.push('<strong>Alibaba.com has displayed products from your website for free. You now have access to millions of buyers worldwide! To enjoy all our services, <br /><a href=\"javascript:transferexpressSignIn();\" class=\"noVisited\" style=\"text-decoration:none\">Click here to Activate your Free Membership today!</a> </strong>');
                    uedclient.errorFromServer('_fmws.e._0.e', msg);
                    
                    YUE.onDOMReady(function(){
                        msgBox.xAlert('Alibaba.com has displayed products from your website for free. You now have access to millions of buyers worldwide! To enjoy all our services,<br \/><a href=\"javascript:transferexpressSignIn()\">Click here to Activate your Free Membership today!</a>', [400,350], '', null, 'info')
                    });
                }
                
                if(value == "no"){
                    try{
                        delete uedclient.configData.errorFromServer['_fmws.e._0.e'];
                    } catch (e) {
                }
            }      
            
        }
    };
	
    var checkCodesFailure = function(o){
        if(o.responseText !== undefined){
        }
    };
    var checkCodesCallback =
    {
      success:checkCodesSuccess,
      failure:checkCodesFailure
    };
	    
	    function emailCheck() {
	        var email = get("_fmws.e._0.e").value;
	        if(email != "") {
	            email = email.toLowerCase();
				
	            var emailValiderResult = emailValider(email);
				
	            if(emailValiderResult) {
				
	                send_request('/wsuser/buyerJoin/CheckEmail.htm?email='+email);
					
	            }
	        }
	    }
	    function emailValider(email) {
		
	        email = email.toLowerCase();
	        var posion = email.indexOf("@");
	        var emailEnd = email.substring(posion+1, email.length);
			
	        if(emailEnd.indexOf("alibaba")>=0){
	            return false
	        }
	        return true;
	    }
	    YUE.on("_fmws.e._0.e", "blur", emailCheck);
    })()
        </script>
		    <input type="text" id="_fmws.e._0.e" name="_fmws.e._0.e" style="width: 230px" maxlength="128" class="basicPoint " value="">
			  			<script type="text/javascript">
                YUE.on('_fmws.e._0.e', 'focus', function(){if(this.value=='Please use common-mail') this.value = '';YUD.removeClass(this, 'hint')})
                YUE.on(window,'load',function(){
                    if(get('_fmws.e._0.e').value != 'Please use common-mail') {YUD.removeClass('_fmws.e._0.e', 'hint')}
                });
            </script> 
			<div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.e-advice-error">
    			<div style="position: relative;">
    				<img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
    				<div class="fieldErrorMsg"></div>
    			</div>
			</div>
			<div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.e-advice-error">
                <div style="position: relative;">
                    <img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
                    <div class="fieldErrorMsg"></div>
                </div>
            </div>
        	<div id="_fmws.e._0.e-advice-tips" style="display: none; z-index: 201; position: absolute; left: 596px; top: 139px;" class="fieldTips">
        		<div style="position: relative;">
        			<img style="z-index: 99; position: absolute;" src="${resource(dir: 'images/register', file: 'tips_corner.gif')}">
        			<div class="fieldTipsMsg">This email will be used for sign in.</div>
        		</div>
        	</div>
            </td>
        </tr>
		<tr>
			  <th scope="row"><span class="required">Contact Name:</span></th>
                <td>
                <input class="hint" type="text" id="_fmws.e._0.f" name="_fmws.e._0.f" style="width: 110px" maxlength="128" value="First Name">
					  			<script type="text/javascript">
                YUE.on('_fmws.e._0.f', 'focus', function(){if(this.value=='First Name') this.value = '';YUD.removeClass(this, 'hint')})
                YUE.on(window,'load',function(){
                    if(get('_fmws.e._0.f').value != 'First Name') {YUD.removeClass('_fmws.e._0.f', 'hint')}
                	
                });
            </script> 
			<div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.f-advice-error">
                <div style="position: relative;">
                    <img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
                    <div class="fieldErrorMsg"></div>
                </div>
            </div>
                <input class="hint followedObj " type="text" id="_fmws.e._0.l" name="_fmws.e._0.l" style="width: 110px" maxlength="128" value="Last Name">
    			                  <script type="text/javascript">
                YUE.on('_fmws.e._0.l', 'focus', function(){if(this.value=='Last Name') this.value = '';YUD.removeClass(this, 'hint')})
                YUE.on(window,'load',function(){
                    if(get('_fmws.e._0.l').value != 'Last Name') {YUD.removeClass('_fmws.e._0.l', 'hint')}
                });
              	</script>     
						<div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.l-advice-error">
				<div style="position: relative;">
					<img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
                    <div class="fieldErrorMsg"></div>
                </div>
    	   </div>
			<div id="_fmws.e._0.l-advice-tips" style="display: none; z-index: 201; position: absolute; left: 596px; top: 139px;" class="fieldTips">
        		<div style="position: relative;">
        			<img style="z-index: 99; position: absolute;" src="${resource(dir: 'images/register', file: 'tips_corner.gif')}">
        			<div class="fieldTipsMsg">Cannot be changed after registering</div>
        		</div>
        	</div>
            </td>
        </tr>
        <tr>
            <th scope="row"><span class="required">Password:</span></th>
            <td>
                <input type="password" id="_fmws.e._0.p" name="_fmws.e._0.p" style="width: 230px" maxlength="20" value="" class="basicPoint ">
                				                      <div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.p-advice-error">
                        <div style="position: relative;">
    						<img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
                        <div class="fieldErrorMsg"></div>
                    </div>
                </div>
				<div style="display: none; z-index: 201; position: absolute; left: 754px; top:832px;" class="fieldTips" id="password-advice-tips">
    				<div style="position: relative;">
        				<img style="z-index: 99; position: absolute;" src="${resource(dir: 'images/register', file: 'tips_corner.gif')}">
        				<div class="fieldTipsMsg"></div>
        			</div>
				</div>
        	</td>
        </tr>	
		<tr>
            <th scope="row"><span class="required">Reenter Password:</span></th>
            <td>
                <input type="password" id="_fmws.e._0.pa" name="_fmws.e._0.pa" style="width: 230px" class="basicPoint " maxlength="20" value="" onpaste="return false">
                                  <div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 754px; top:832px;" id="_fmws.e._0.pa-advice-error">
                    <div style="position: relative;">
                            <img src="${resource(dir: 'images/register', file: 'error_corner.gif')}" style="z-index: 99; position: absolute;">
                    	<div class="fieldErrorMsg"></div>
                    </div>
                </div>
            </td>
        </tr>

		<tr>
			<th scope="row"><span class="required">Which best describes you:</span></th>
			<td>
				<select name="_fmws.e._0.b" id="_fmws.e._0.b">
					<option value="">-----Please select-----</option>
					<option value="End Consumer">End Consumer</option>
					<option value="Wholesaler">Wholesaler</option>
					<option value="Online retailer （Website owner）">Online retailer （Website owner）</option>
					<option value="Online retailer （Marketplace like eBay, Amazon, etc.）">Online retailer （Marketplace like eBay, Amazon, etc.）</option>
					<option value="Offline retailer">Offline retailer</option>
					<option value="Procurement officer for an organization">Procurement officer for an organization</option>
				</select>
				<div class="fieldError" style="display: none; z-index: 200; position: absolute; left: 780px; top: 218px;" id="user-type-select-advice-error">
                    <div style="position: relative;">
                        <img style="z-index: 99; position: absolute;" src="${resource(dir: 'images/register', file: 'error_corner.gif')}">
                        <div class="fieldErrorMsg"></div>
                    </div>
                </div>
				<input type="text" id="other-text" name="other-text">
				<script type="text/javascript">
					YUE.onDOMReady(function(){
						var buyerOperType = get('_fmws.e._0.b');
						var otherText = get('other-text');
						var otherOption = get('other-option');
						YUE.on(buyerOperType, 'change', function(){
							if(buyerOperType.value == 'Other'){
								YUD.setStyle(otherText, 'display', 'block');
							} else {
								YUD.setStyle(otherText, 'display', 'none');
							}
						});
						YUE.on(otherOption, 'blur', function(){
							otherOption.value = otherText.value;
						});
					});
				</script>
			</td>
		</tr>
		<tr>
            <th scope="row"><span class="required">Enter the Code Shown:</span></th>
            <td>
                <div>
                    <input type="hidden" name="_csi_" value="e66bb7c2affe4e7993545205996ee62a">
                    <img src="${resource(dir: 'images/register', file: 'checkcode')}" id="checkcode" width="160" height="40" align="absmiddle">
                    <a onclick="refreshCheckCode()" title="load new image" tabindex="13" style="cursor:pointer">Refresh</a> 	
                    <div style="display: none;z-index:201" class="fieldTips">
                      <div style="position:relative">
						<img style="z-index:99;position:absolute;" src="${resource(dir: 'images/register', file: 'tips_corner.gif')}">
						<div class="fieldTipsMsg"></div>
                      </div>
                    </div>
					<div style="display: none;z-index:200" class="fieldError">
                        <div style="position:relative">
        					<img style="z-index:99;position:absolute;" src="${resource(dir: 'images/register', file: 'error_corner.gif')}">
    						<div class="fieldErrorMsg"></div>
    					</div>
					</div>
                </div>
                <input type="text" id="_fmws.e._0.i" name="_fmws.e._0.i" style="width: 100px" value="">
                                  <script type="text/javascript">
                function refreshCheckCode(){ 
                  var t = Math.random();
                  get('checkcode').src="http://checktoken1.alibaba.com/service/checkcode?sessionID=e66bb7c2affe4e7993545205996ee62a&type=mark&t="+t;  
                    return false;
                }
                YUE.on('_fmws.e._0.i', 'focus', function(){
                        try{
                            delete uedclient.configData.errorFromServer['_fmws.e._0.i'];
                        } catch (e) {}
                });
                </script>
            </td>
        </tr>
		<tr>
            <th style="padding: 20px 0pt 0pt;">&nbsp;</th>
            <td>
                <input type="checkbox" value="agreement" name="agreement-check" id="agreement-check" checked="checked">
				<label for="agreement-check">AliExpress.com Free Membership <a target="_blank" href="http://news.alibaba.com/article/detail/help/100453670-1-alibaba.com-free-membership-agreement.html">Agreement</a></label>
                	<div style="display: none;z-index:200" class="fieldError">
					  <div style="position:relative">
						<img style="z-index:99;position:absolute;" src="${resource(dir: 'images/register', file: 'error_corner.gif')}">
						<div class="fieldErrorMsg"></div>
					  </div>
					</div>
			</td>
        </tr>
        <tr>
            <th style="padding: 20px 0pt 0pt;">&nbsp;</th>
            <td>
            	<input type="Submit" class="buttonSkinA-XL" id="submitbutton" name="Submit" value="Create My Account">
            </td>
        </tr>
        </tbody>
    </table>
</fieldset></div>
</div><!-- RegFlowEN -->
</g:form>
	 <div id="regLeads">
								

								
				<div class="benefits box">
					<h4>Buy online at wholesale prices</h4>
					<ul>
						<li>Over 10 million items from various categories</li>
						<li>International express delivery in just 7 days</li>
						<li>AliExpress Buyer Protection</li>

					</ul> 
					<p><a href="http://help.aliexpress.com/" class="more">Learn more</a></p>
				</div>
				
				<div id="having-account" class="box">

					<h4>Already a Member?</h4>
					<p><a href="https://login.aliexpress.com/buyer.htm">Sign in</a> or <a href="http://us.my.alibaba.com/user/company/forget_password_input_email.htm">Forgot your password?</a></p>
				</div>
	</div>
</div>
<!--skylight-wholesale/home/ae_bp_detail.html -start --><div id="inf-bp">
<a href="http://www.aliexpress.com/buyerprotection/index.html" rel="nofollow"><img src="${resource(dir: 'images/register', file: 'bp_banner_987x75.png')}"></a>
</div><!--skylight-wholesale/home/ae_bp_detail.html -end --><script type="text/javascript" language="javascript">
    function clearErrorDisplay(errorClass,rootId){
       var errorEls = YUD.getElementsByClassName(errorClass,"div",rootId);
       var eCount = errorEls.length;
       if(eCount > 0){
          for(var i=0;i<eCount;i++){
             errorEls[i].style.display = 'none';
          }
       }
    }

    
    function submitDisable(d) {
          return true;
        var dSubmitButton = get('submitbutton');
        if(d){
            YUD.removeClass(dSubmitButton,'buttonSkinA');
            YUD.addClass(dSubmitButton,'buttonSkinADisable');
            }else{
            YUD.addClass(dSubmitButton,'buttonSkinA');
            YUD.removeClass(dSubmitButton,'buttonSkinADisable');
            }
        dSubmitButton.disabled=d;  
    }
    formSubmit=function() { 
      try {
          if(!uedclient.validateAllField()) {
                      formObserver.snapShot()
            return false;
            } 
          return true;
      } catch(e) {
        return false;
      }
    } 
	
</script>


	<!-- page -->
    
    <div style="clear:both;"></div>
	<script type="text/javascript">
//<![CDATA[
var _aecoremetricsServer = "http://us.ae.alibaba.com";
//]]>
</script>
<!--skylight-wholesale/common/footer.html -start --><div id="footer">
    <a href="http://www.alibaba.com/aboutalibaba/index.html" rel="nofollow"><strong>Company Info</strong></a> - <a href="http://www.alibaba.com/aboutalibaba/partnership_with_alibaba.html" rel="nofollow"><strong>Partnerships</strong></a><br>
    <a href="http://www.aliexpress.com/">Online Shopping</a> - <a href="http://www.aliexpress.com/all-wholesale-products.html" rel="nofollow">Buy</a> - <a href="http://seller.aliexpress.com/" rel="nofollow">Sell</a> - <a href="http://www.aliexpress.com/activities/promotions/index.html" rel="nofollow">All Promotions</a> - <a href="http://escrow.alibaba.com/?tracelog=ws_topbar" rel="nofollow">My Orders</a> - <a href="http://www.aliexpress.com/help/home.html" rel="nofollow">Help</a> - <a href="http://www.aliexpress.com/sitemap.html">Site Map</a> - <a href="http://www.aliexpress.com/help/contactus.htm" rel="nofollow">Customer Service</a> - <a href="http://www.aliexpress.com/about/info.html" rel="nofollow">About AliExpress</a> - <a rel="follow" href="http://m.aliexpress.com/" target="_blank">Mobile Site</a>

    <p>
    Browse Alphabetically: 
    <a href="http://www.aliexpress.com/product.html">All Products</a>, 
    <a href="http://www.aliexpress.com/free-shipping.html">Free Shipping</a>, 
    <a href="http://www.aliexpress.com/wholesale.html">Wholesale Product</a>,
    <a href="http://www.aliexpress.com/promotion.html">Promotion</a>,
    <a href="http://www.aliexpress.com/price.html">Price</a>,
    <a href="http://www.aliexpress.com/discount.html">Discount</a>,
    <a href="http://www.aliexpress.com/compare.html">Compare</a>
    <br>
    <a href="http://fr.aliexpress.com/">French</a>,
    <a href="http://de.aliexpress.com/">German</a>,
    <a href="http://it.aliexpress.com/">Italian</a>,
    <a href="http://ja.aliexpress.com/">Japanese</a>,
    <a href="http://ko.aliexpress.com/">Korea</a>,
    <a href="http://nl.aliexpress.com/">Netherlands</a>,
    <a href="http://pt.aliexpress.com/">Portuguese</a>,
    <a href="http://ru.aliexpress.com/">Russian</a>,
    <a href="http://es.aliexpress.com/">Spanish</a>
    <br><br>
    <a href="http://www.alibaba.com/aboutalibaba/aligroup/index.html" rel="nofollow">Alibaba Group</a>: 
    Alibaba.com: <a target="_blank" href="http://china.alibaba.com/" rel="nofollow">Alibaba China</a>
    - <a target="_blank" href="http://www.alibaba.com/">Alibaba International</a>
    - <a target="_blank" href="http://www.aliexpress.com/">AliExpress</a>
    - <a target="_blank" href="http://www.alibaba.co.jp/" rel="nofollow">Alibaba Japan</a>
    | <a target="_blank" href="http://www.taobao.com/" rel="nofollow">Taobao</a>
    | <a target="_blank" href="http://www.alipay.com/" rel="nofollow">Alipay</a>
    | <a target="_blank" href="http://www.yahoo.com.cn/" rel="nofollow">Yahoo! China</a>
    | <a target="_blank" href="http://www.koubei.com/" rel="nofollow">Koubei.com</a>
    | <a target="_blank" href="http://www.alisoft.com/" rel="nofollow">Alisoft</a>
    | <a target="_blank" href="http://www.vendio.com/" rel="nofollow">Vendio</a>
    </p>
    <a href="http://news.alibaba.com/article/detail/help/100454423-1-product-listing-policy.html" rel="nofollow">Product Listing Policy</a> - <a href="http://news.alibaba.com/article/detail/help/100453304-1-intellectual-property-rights-%2528ipr%2529-protection.html" rel="nofollow">Intellectual Property Policy and Infringement Claims</a> - <a href="http://news.alibaba.com/article/detail/help/100453303-1-privacy-policy.html" rel="nofollow">Privacy Policy</a> - <a href="http://news.alibaba.com/article/detail/help/100453293-1-terms-use.html" rel="nofollow">Terms of Use</a> - <a href="http://escrow.aliexpress.com/buyerprotection/index.html?tracelog=ws_topbar" rel="nofollow">Safe Trading Tips</a> - <a href="http://legal.alibaba.com/legal/site/login/login.htm?site_type=international&amp;language_id=english" rel="nofollow">Report Intellectual Property Right Infringement</a>

    <br><a href="http://www.alibaba.com/trade/servlet/page/static/copyright_policy" rel="nofollow">Copyright Notice</a> © 1999-2012 Alibaba.com Hong Kong Limited and licensors. All rights reserved.
</div>
<script>
/* <![CDATA[ */
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-17640202-1']);
_gaq.push(['_setDomainName', 'aliexpress.com']);
_gaq.push(['_trackPageview']);
(function() {
	var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';    
	var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();
/* ]]> */
</script><!--skylight-wholesale/common/footer.html -end --><!--us-myaliexpress-web4 -->



</body></html>