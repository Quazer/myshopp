		<div id="magnet-search-keyword"></div>
		<div id="detail-to-order-abtest-div" style="display: none"></div>
        
		<div class="crumb global">
			<span class="lnk-back">
			<g:link controller="category" action="show" params="[id:session.categoryIdSelected , back:true]">Back to search results</g:link>
			</span> 
			
           	<g:link title="Home" controller="index">${message(code: 'cat.home.link.label')}</g:link> 
           	&gt;<h2><g:link controller="category" action="show" id="${session.categoryIdSelected }">${session.categoryNameSelected }</g:link></h2>
		</div>
