Dado("que estou na tela de cadastro") do
  visit "https://auth-prd.pontoslivelo.com.br/oamfed/idp/samlv20"
  sleep 5
end

Quando ("não preencher o primeiro campo de cadastro") do
  find(".default-button").click
end

Entao ("devo ser alertado sobre obrigatoriedade do preenchimento") do
  find(".icon-close")
  sleep 2
end

Quando("inseri o email invalido {string}") do |emailInv|
  @emailInv = emailInv
  find("input[id*=username]").set @emailInv
  sleep 2
end

Entao("devo ser alertado sobre invalidade do email") do
  find(".default-button").click
  find(".icon-close")
  sleep 2
end

Dado("que inseri o email valido {string}") do |email|
  @email = email
  find("input[id*=username]").set @email
  sleep 2
end

Quando("prosseguir com o cadastro") do
  find(".default-button").click
  sleep 60 #caindo em captcha
end

Entao("devo ser direcionado para tela de cadastro de dados pessoais") do
  find(".register-step-one")
  sleep 5
end

Dado("que estou na tela de cadastro de dados") do
end

Quando ("não preencher nenhum dos campos obrigatórios do cadastro") do
  find(".register-button").click
  sleep 5
end

Entao("devo ser alertado sobre obrigatoriedade de preenchimento dos dados pessoais") do
  find(".icon-close")
end

Dado("que preeenchi qualquer dado obrigatório incorretamente") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @cpfI = table.rows_hash["cpfI"]
  @nomeCompltI = table.rows_hash["nomeCompltI"]
  @dataNascmI = table.rows_hash["dataNascmI"]
  @confrEmailI = table.rows_hash["confrEmailI"]
  @celularI = table.rows_hash["celularI"]
  @confrCelI = table.rows_hash["confrCelI"]

  find("input[name*=username]").set @cpfI
  find("input[id*=fullName]").set @nomeCompltI
  find("input[id*=birthDate]").set @dataNascmI
  find("input[id*=confirmEmail]").set @confrEmailI
  find("input[id*=cellphone]").set @celularI
  find("input[id*=confirmCellPhone]").set @confrCelI
end

Quando ("tentar prosseguir com o cadastro") do
  find(".register-button").click
end

Entao("devo ser alertado sobre obrigatoriedade de preenchimento correto") do
  find(".icon-close")
end

Dado("que preeenchi todos os dados obrigatórios corretamente") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @cpf = table.rows_hash["cpf"]
  @nomeComplt = table.rows_hash["nomeComplt"]
  @dataNascm = table.rows_hash["dataNascm"]
  @confrEmail = table.rows_hash["confrEmail"]
  @celular = table.rows_hash["celular"]
  @confrCel = table.rows_hash["confrCel"]

  find("input[id*=username]").set @cpf
  find("input[id*=fullName]").set @nomeComplt
  find("input[id*=birthDate]").set @dataNascm
  find("input[id*=confirmEmail]").set @confrEmail
  find("input[id*=cellphone]").set @celularI
  find("input[id*=confirmCellPhone]").set @confrCel
end

Entao("devo ser direcionado para proxima etapa") do
  find("input[id*=postalCode]")
end

Dado("que estou na tela de cadastro de endereço") do
  find("input[id*=postalCode]")
end

Quando ("não preencher nenhum dos campos obrigatórios de endereço") do
  find(".register-button").click
end

Entao ("devo ser alertado sobre obrigatoriedade de preenchimento do endereço") do
  find(".icon-close")
end

Dado("que preeenchi qualquer dado obrigatório de endereço incorretamente") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @cepI = table.rows_hash["cepI"]
  @nomeDaRuaI = table.rows_hash["nomeDaRuaI"]
  @numFachI = table.rows_hash["numFachI"]
  @bairroI = table.rows_hash["bairroI"]
  @cidadeI = table.rows_hash["cidadeI"]

  find("input[id*=postalCode]").set @cepI
  find("input[id*=address]").set @nomeDaRuaI
  find("input[id*=number]").set @numFachI
  find("input[id*=district]").set @bairroI
  find("input[id*=city]").set @cidadeI
end

Entao("devo ser alertado sobre obrigatoriedade de preenchimento correto dos dados") do
  find(".icon-close")
end

Dado("que preeenchi os dados obrigatórios de endereço corretamente") do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  @cep = table.rows_hash["cep"]
  @numFach = table.rows_hash["numFach"]

  find("input[id*=postalCode]").set @cepI
  find("input[id*=number]").set @numFachI
end

Entao ("devo ser direcionado para ultima etapa") do
  find("input[id*password]")
end

Dado("que estou na tela de definição de senha") do
end

Quando ("não preencher nenhum os campos obrigatórios para definição") do
  find('label[for="inpt-radio-terms"]').click
  find(".register-button").click
end

Entao ("devo ser alertado sobre obrigatoriedade de preenchimento para definição") do
  find(".icon-eye-slash")
end

Dado("que inseri a senha {string} que não é válida") do |senhaI|
  @senhaI = senhaI
  find("input[id*password]").set @senhaI
  find("input[id*confirmPassword]").set @senhaI
  find('label[for="inpt-radio-terms"]').click
end

Quando("tentar prosseguir com a definição de senha") do
  find(".register-button").click
end

Entao("devo ser alertado sobre invalidade da senha") do
  find(".icon-eye-slash")
end

Dado("que inseri a senha {string} que é válida") do |senha|
  @senha = senha
  find("input[id*password]").set @senha
  find("input[id*confirmPassword]").set @senha
  find('label[for="inpt-radio-terms"]').click
end

Quando("prosseguir com a definição de senha") do
  find(".register-button").click
end

Entao("devo ser direcionado para tela de validação de cadastro") do
  find("input[id*=resolve-facil-bot]")
end
