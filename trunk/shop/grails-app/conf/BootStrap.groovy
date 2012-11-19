import com.nghia.shop.Category
import com.nghia.shop.Member
import com.nghia.shop.Product
import com.nghia.shop.ShippingDetail;
import com.nghia.shop.ShippingMethod;
class BootStrap {

	def productService
    def init = { servletContext ->
		initData()
    }
	
	def initData() {
		def shippingDetail = new ShippingDetail()
		shippingDetail.name = "Nghia Nguyen"
		shippingDetail.street1 = "street 1"
		shippingDetail.street2 = "street 2"
		shippingDetail.city = "city"
		shippingDetail.state = "state"
		shippingDetail.country = "country"
		shippingDetail.zip = "zip"
		shippingDetail.mobilePhone = "mobiphone"
		shippingDetail.homePhone = "home[hon"
		
		shippingDetail.save(flush:true)
		
		def admin = new Member(username: "nghia", password: "1", shippingDetail: shippingDetail).save(flush:true)
		def supplier1 = new Member(username: "supplier1", password: "2").save(flush:true)
		def supplier2 = new Member(username: "supplier2", password: "3").save(flush:true)
		
		
		def cat1 = new Category(name : "May vi tinh").save(flush:true)
		cat1.save(flush:true)
		print "cat1: " + cat1.id
		
		for (int i = 0; i<4; i ++) {
			def shipMethod = new ShippingMethod()
			shipMethod.name = "shipping method name " + i
			shipMethod.description = "shipping description " + i
			//shipMethod.price = 10*i + 1
			shipMethod.timeOfVerify = "" + i + " - " + i + 1+"days"
			shipMethod.timeOfDeliver = "" + i + " weeks"
			shipMethod.trackingURL = "http://ems.cn"
			shipMethod.save(flush:true)
			
			print "shipMethod " + i + ": " + shipMethod.id
		}
		
		for (int i = 0; i<= 20; i++) {
			def prod = new Product()
			prod.name = "product " + i
			prod.overview = "overview of " + i
			prod.specification = "specification of " + i
			
			prod.purchargePrice = 100
			prod.importPrice = 76
			prod.discount = 0
			prod.discount3Item = 0
			prod.discount5Item = 0
			prod.discount10Item = 0
			prod.unit = "product.productkind.piece"
			
			prod.sku = 1000 + i
			
			prod.category = cat1
			prod.shippingMethod1 = ShippingMethod.findByName("shipping method name 0")
			prod.shippingMethod2 = ShippingMethod.findByName("shipping method name 1")
			prod.shippingMethod3 = ShippingMethod.findByName("shipping method name 2")
			prod.shippingMethodPrice1 = 12.54
			prod.shippingMethodPrice2 = 12.54
			prod.shippingMethodPrice3 = 12.54
			prod.inventory = 40
			
			prod.save(flush:true)
			print "prod " + i + " :" + prod.id
		}
	

		
		
	}
	
	
    def destroy = {
    }
}
