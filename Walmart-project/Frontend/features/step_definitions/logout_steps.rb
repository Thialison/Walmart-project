
Dado(/^que tenha realizado o login$/) do
  	
  	@page = App.new
	@page.login.load

	@page.login.user.set(INF["VALIDO"]["USUARIO"])
	@page.login.pass.set(INF["VALIDO"]["SENHA"])
	@page.login.click_login

end

Quando(/^realizar o logout$/) do
  	
	@page.home.logout

end

Então(/^o logout é efetuado com sucesso$/) do
  
	assert_text("You logged out of the secure area!")

end