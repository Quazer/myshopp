        <div id="aliGlobalCrumb" class="crumb global inline-crumb">
            <span id="bread_crumb">
            	<g:link title="Home" controller="index">${message(code: 'cat.home.link.label')}</g:link> 
            	&gt;<h2>${categoryName }</h2>
            </span>
        </div>

        <div class="search-result">
            <p class="result-overview">
                <strong class="search-count">${productTotalCount }</strong> ${message(code: 'cat.results.label')}
            </p>
        </div>