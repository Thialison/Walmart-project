#encoding: UTF-8

class Login <SitePrism::Page

	set_url "https://the-internet.herokuapp.com/login"
	element :user, ("#username")
	element :pass, ("#password")

	def click_login
		click_button("Login")
	end

end