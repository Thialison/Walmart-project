#language: pt
#encoding: UTF-8

Funcionalidade: Realizar Login

@valido
Cenário: Realizar login válido
Dado que estou no site de login
Quando eu preencher os dados de login com informações válidas
Então o login e realizado com sucesso

@invalido
Cenário: Realizar login inválido
Dado que estou no site de login
Quando eu preencher os dados de login com informações inválidas
Então mensagem de erro é apresentada
