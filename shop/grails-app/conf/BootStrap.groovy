import com.nghia.shop.Category
import com.nghia.shop.Member
import com.nghia.shop.Product
class BootStrap {

	def productService
    def init = { servletContext ->
		initData()
    }
	
	def initData() {
		def admin = new Member(username: "nghia", password: "asdasd").save(flush:true)
		def supplier1 = new Member(username: "supplier1", password: "asdasd").save(flush:true)
		def supplier2 = new Member(username: "supplier2", password: "asdasd").save(flush:true)
		def prod
		for (int i = 0; i<= 20; i++) {
			prod = new Product(name : "product " + i, overview: "overview of " + i,
				specification : "specification of " + i)
//			prod.addToSupplier(supplier1)
//			prod.addToCategory(cat1)
			prod.save(flush:true)
			print "prod " + i + " :" + prod.id
		}
		
		def cat1 = new Category(name : "May vi tinh").save(flush:true)
		cat1.addToProducts(prod)
		cat1.save(flush:true)
		print "cat1 :" + cat1.id
		def cat2 = new Category(name : "Iphone case").save(flush:true)
		cat2.addToProducts(prod)
		cat2.save(flush:true)
		print "cat2 :" + cat2.id
	}
	
	
    def destroy = {
    }
}
