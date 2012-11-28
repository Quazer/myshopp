	<script type="text/javascript">
		var dmtrack_c = '{-}';
		var dmtrack_pageid = '7f0000017f0000011353943513';
		(function() {
			var beacon = document.createElement('script');
			beacon.type = 'text/javascript';
			beacon.async = true;
			beacon.src = 'http://style.aliunicorn.com/run/pool/monitor/beacon_async|v_1044d484401d_0.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(beacon, s);
		})();
		;
	</script>
    <script type="text/javascript">

	var PAGE_TIMING = {
		pageType: 'detail'
	};
	PAGE_TIMING.startRenderImage = new Image();
	PAGE_TIMING.startRenderImage.onload = function() {
		PAGE_TIMING.startRender = new Date().getTime();
	};
	PAGE_TIMING.startRenderImage.src = 'http://i02.i.aliimg.com/wimg/monitor/start-render.png';
</script>

	<!--skylight-wholesale/common/top_notice.html -start -->
	<style type="text/css">
.bulletin-top {
	display: none !important;
}

.christ-sale-top-banner {
	background: #d42424;
}

.christ-sale-wrap {
	position: relative;
	margin: 0 auto;
	width: 990px;
	height: 70px;
}

.christ-sale-count {
	position: absolute;
	left: 420px;
	top: 0;
	font: bold 52px/70px arial;
	color: #fff;
}

.christ-sale-banner {
	display: block;
	width: 990px;
	height: 70px;
}

.christ-sale-begin {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_begin.png)
		no-repeat 50% 0;
}

.christ-sale-going {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_going.png)
		no-repeat 50% 0;
}

.christ-sale-end {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_end.png)
		no-repeat 50% 0;
}

.christ-sale-after {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_after.png)
		no-repeat 50% 0;
}

.christ-sale-ru .christ-sale-begin {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_begin_ru.png)
		no-repeat 50% 0;
}

.christ-sale-ru .christ-sale-going {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_going_ru.png)
		no-repeat 50% 0;
}

.christ-sale-ru .christ-sale-end {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_end_ru.png)
		no-repeat 50% 0;
}

.christ-sale-ru .christ-sale-after {
	background: #d42424
		url(http://img.alibaba.com/images/cms/upload/wholesale/home_banner/2012/11/christ_sale/banner/chris_sale_after_ru.png)
		no-repeat 50% 0;
}
</style>

	<div id="christSaleTopBanner" class="christ-sale-top-banner">
		<div class="christ-sale-wrap">
			<a id="christSaleBanner"
				href="http://www.aliexpress.com/activities/aliexpress-promotion/index.html?from=site-top&amp;t=121126"
				class="christ-sale-banner christ-sale-begin christ-sale-going"
				style="" title="Holiday Shopping Mania"> </a>
			<div id="J-count-down" class="christ-sale-count"
				style="display: none;">
				<span id="J-count-hour">00</span> : <span id="J-count-minu">00</span>
				: <span id="J-count-sec">00</span>
			</div>
		</div>

	</div>
	<script type="text/javascript"
		src="${resource(dir: 'js/product', file: 'timer-lite.js')}"></script>
	<script>
/* <![CDATA[ */

var targetDate = new Date('Nov 26 2012 00:00:00 GMT-0800');
function beginAt(){
	YUD.addClass("christSaleBanner",'christ-sale-begin');
	YUD.setStyle("J-count-down","display","block");
}
function goShopping(){
	YUD.addClass("christSaleBanner",'christ-sale-going');
	YUD.setStyle("J-count-down","display","none");
}
new timerLite({
	targetDate     : targetDate,
	houBoxId       : 'J-count-hour',
	minBoxId       : 'J-count-minu',
	secBoxId       : 'J-count-sec',
	startCallback  : beginAt,
	doneCallback   : goShopping
});

function delayExec(){
	var countryCode = get("userCountryCode").value;
	var ruChrisSale = ["AM", "AZ", "BY", "MD", "KZ", "KG", "TJ", "UZ", "RU","UA", "TM"];

	for(var i=0,j= ruChrisSale.length; i<j; i++ ){
	    if(countryCode == ruChrisSale[i]){
	        YUD.addClass("christSaleTopBanner",'christ-sale-ru');
	        get("christSaleBanner").setAttribute("href", "http://www.aliexpress.com/activities/aliexpress-promotion/indexRu.html?from=site-top-ru&t=121126");
            }
	}
}
setTimeout("delayExec()", 300);
/* ]]> */
</script>