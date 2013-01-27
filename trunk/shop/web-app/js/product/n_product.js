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
						
					}
				})
				
				refreshProductDetailHeader("color", colorValue,sizeValue)
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
						
					}
				})
				
				refreshProductDetailHeader("size", colorValue,sizeValue)
			})
		}
	);
	
	// Truong hop size duoc click
	if (sizeClicked == true) {
		
	}
	
	if (colorClicked == true) {
		
	}
	else if (sizeClicked == true) {
		
	}
		
});

function refreshProductDetailHeader(action, colorVal, sizeVal) {

	var objectId = $("#objectId").val()
	var selectedQuantity = $('#inf-txt-quantity').val()
	var selectedCountry
	$.ajax({
		type: 'POST',
		async: false,
		url: WEB_ROOT + '/ajax/buyerEditProduct',
		data: {
			act : action,
			colorVal : colorVal,
			sizeVal : sizeVal,
			selectedQuantity: selectedQuantity,
			selectedCountry : selectedCountry,
			sku : objectId
		},
		success:function(data,textStatus){
			jQuery('#inf').html(data);
		},
		error: function(XMLHttpRequest,textStatus,errorThrown) {
		}
	})
}