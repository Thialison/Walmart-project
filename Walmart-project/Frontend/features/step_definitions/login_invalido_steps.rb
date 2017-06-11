
Quando(/^eu preencher os dados de login com informações inválidas$/) do

	@page.login.user.set(INF["INVALIDO"]["USUARIO_INVALIDO"])
	@page.login.pass.set(INF["VALIDO"]["SENHA"])
	@page.login.click_login

end

Então(/^mensagem de erro é apresentada$/) do
  
  	assert_text("Your username is invalid!")

end