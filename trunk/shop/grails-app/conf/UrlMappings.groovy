class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		//"/"(view:"/index")
		"/" (controller:"index",action:"mainPage")
		"500"(view:'/error')
	}
}
