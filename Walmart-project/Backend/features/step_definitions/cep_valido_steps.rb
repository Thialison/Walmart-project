Dado(/^que esteja no EndPoint$/) do
  
end

Quando(/^eu pesquisar por um CEP válido$/) do
  
	@getcep = HTTParty.get("http://correiosapi.apphb.com/cep/13040089")

end

Então(/^recebo as informações de CEP$/) do

	puts @code = @getcep.code
	puts @message = @getcep.message
	puts @body = @getcep.body

	cep = @getcep["cep"]
	tipoDeLogradouro = @getcep["tipoDeLogradouro"]
	logradouro = @getcep["logradouro"]
	bairro = @getcep["bairro"]
	cidade = @getcep["cidade"]
	estado = @getcep["estado"]

	expect(cep).to eq("13040089")
	expect(tipoDeLogradouro).to eq("Rua")
	expect(logradouro).to eq("Manoel Sylvestre de Freitas Filho")
	expect(bairro).to eq("Jardim Nova Europa")
	expect(cidade).to eq("Campinas")
	expect(estado).to eq("SP")

	valida = @code.between?(200,299)

	expect(valida).to be true

end