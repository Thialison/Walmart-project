#encoding: UTF-8

class App <SitePrism::Page

	def home
		Home.new
	end

	def login
		Login.new
	end

end