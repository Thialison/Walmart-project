Quando(/^eu pesquisar por um CEP inválido$/) do

	@getcep = HTTParty.get("http://correiosapi.apphb.com/cep/123456")

end

Então(/^recebo mensagem de erro$/) do

	puts @code = @getcep.code
	puts @message = @getcep.message
	puts @body = @getcep.body

	valida = @code.between?(400,499)
	expect(valida).to be true

end