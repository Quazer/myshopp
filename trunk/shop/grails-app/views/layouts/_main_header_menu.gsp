<div class="wrapper">
		<div class="header">
			<div class="logo">
				<a href="http://dx.com/"> <img
					src="${resource(dir: '/image/root', file: 'logo-dx.png')}"
					alt="Cool Gadgets at DX"
					title="Buy Cool Gadgets at DX with Free Shipping">
				</a>
			</div>
			<div class="search">
				<div class="searchbox">
					<input type="text" class="txt_key txt_key_focus" id="txtKeyword"
						autocomplete="off" value="Search in 80,000+ Gadgets...">
					<button id="btnSearch" type="button" class="btn_search"></button>
					<div class="adv_search">
						<a href="http://dx.com/s/Advsearch.dx" target="_blank"
							rel="nofollow">ADVANCED SEARCH</a>
					</div>
					<div id="pattaya-autocomplete-1"
						style="display: none; width: 288px; height: auto;"
						class="selection">
						<ul></ul>
					</div>
				</div>
				<ul class="search_hotkey_list">
					<li><a href="http://dx.com/s/headphones" target="_blank">headphones</a>,</li>
					<li><a href="http://dx.com/s/micro+sd+32gb" target="_blank">micro
							sd 32gb</a>,</li>
					<li><a href="http://dx.com/s/led+light" target="_blank">led
							light</a>,</li>
					<li><a href="http://dx.com/s/hdmi+cable" target="_blank">hdmi
							cable</a>,</li>
					<li><a href="http://dx.com/s/sunglasses" target="_blank">sunglasses</a>,</li>
					<li><a href="http://dx.com/s/new+ipad" target="_blank">new
							ipad</a></li>
				</ul>
			</div>

			<!--shopping cart-->
			<div id="miniCart" class="minicart">
				<a class="btn" href="http://cart.dx.com/shoppingcart.dx/">SHOPPING
					CART <i class="arrow"></i>
				</a>
				<div class="minicart_con loading hidden"></div>
				<span class="minicart_item_count"><span class="num">3</span><i
					class="c_r"></i></span>
			</div>
		</div>

		<div class="nav">
			<ul class="nav_r clearfix">
				<li><a href="http://dx.com/new-arrivals">New Arrivals</a></li>
				<li><a href="http://dx.com/gift-ideas/Under5">$2 Gadgets</a></li>
				<li><a href="http://dx.com/top-sellers">Top Sellers</a></li>
				<li><a href="http://deals.dx.com/" target="_blank">Deals</a></li>
				<li class="nav_community"><a href="http://club.dx.com/"
					target="_blank">Community</a>
				<ul class="community_pro_list hidden">
						<li><a href="http://club.dx.com/forums/">Forums</a></li>
						<li><a href="http://club.dx.com/reviews/">Reviews</a></li>
						<li><a href="http://blog.dx.com/">DX blog</a></li>
						<li><a href="http://club.dx.com/mvpblog">MVP blog</a></li>
					</ul> <span class="arrowhead_t"></span> <span class="nav_dropdown_ico"></span></li>
				<li class="nav_clearance last"><a
					href="http://dx.com/clearance">Clearance</a><span
					class="nav_hot_ico"></span></li>
			</ul>

			<g:render template="/layouts/main_category"/>
		</div>

	</div>