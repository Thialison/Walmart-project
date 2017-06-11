#encoding: UTF-8

Dado(/^que estou no site de login$/) do

	@page = App.new
	@page.login.load

end

Quando(/^eu preencher os dados de login com informações válidas$/) do
 
	@page.login.user.set(INF["VALIDO"]["USUARIO"])
	@page.login.pass.set(INF["VALIDO"]["SENHA"])
	@page.login.click_login

end

Então(/^o login e realizado com sucesso$/) do


	assert_text('You logged into a secure area!')
  
end