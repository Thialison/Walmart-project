#language: pt
#encoding: UTF-8

Funcionalidade: Realizar Logout

@logout
Cenário: Realizar Logout no sistema
Dado que tenha realizado o login
Quando realizar o logout
Então o logout é efetuado com sucesso