#encoding: UTF-8

class Home <SitePrism::Page
	
	def logout
		click_link("Logout")
	end
	
end