$(function() {

	var colorClicked = false
	var colorValue
	
	var sizeClicked = false
	var sizeValue


	// Color clicked
	$('.attr-sku1').each(
		function(index) {
			$(this).click(function() {
				sizeClicked = true
				colorValue = jQuery(this).attr("title");
				
				// Lay selected size
				$("#sku-sku2 li").each(function() {
					if ($(this).hasClass('active')) {
						sizeValue = jQuery(this).attr("id");
						alert('ze size, colorValue:' + colorValue)
					}
				})
				alert("colortValue: " + colorValue)
				refreshProductDetailHeader(colorValue,sizeValue)
			})
		}
	);
	
	$('.attr-checkbox').each(
		function(index) {
			$(this).click(function() {
				sizeClicked = true
				sizeValue = jQuery(this).attr("title");
				
				// Lay selected color
				$(".sku-color li").each(function() {
					if ($(this).hasClass('active')) {
						colorValue = jQuery(this).attr("id");
						alert('ze color, sizeValue:' + sizeValue)
					}
				})
				
				alert("sizeValue: " + sizeValue)
				
				refreshProductDetailHeader(colorValue,sizeValue)
			})
		}
	);
	
	// Truong hop size duoc click
	if (sizeClicked == true) {
		alert('abc')

	}
	
	if (colorClicked == true) {
		
	}
	else if (sizeClicked == true) {
		
	}
		
});

function refreshProductDetailHeader(colorVal, sizeVal) {
	/**
	jQuery.ajax({
		type:'post',
		data:{exserver: exserver, emailacc:
		emailacc, emailpw: emailpw},
		url:'/faql_dev/project/connect2ExServer',
		success:function(data,textStatus){
			completeConnect2Ex(data,
				exserver, emailacc,
				emailpw);},
		error:function(XMLHttpRequest,textStatus,errorThrown){}});
	**/
	var objectId = $("#objectId").val()
	var selectedQuantity = $('#inf-txt-quantity').val()
	var selectedCountry
	$.ajax({
		type: 'POST',
		async: false,
		url: WEB_ROOT + '/product/ajaxBuyerEditProduct',
		data: {
			colorVal : colorVal,
			sizeVal : sizeVal,
			selectedQuantity: selectedQuantity,
			selectedCountry : selectedCountry,
			sku : objectId
		},
		success:function(data,textStatus){
			alert('yes')
			jQuery('#inf').html(data);
			alert('ok')
		},
		error: function(XMLHttpRequest,textStatus,errorThrown) {
			alert(errorThrown)
		}
	})
}