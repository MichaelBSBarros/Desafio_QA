#language:pt

Funcionalidade: Cadastro de novo usuário
    Como futuro cliente Livelo
    Quero realizar o cadastro no site
    Para que possa usufruir dos benefícios disponíveis no site Livelo

        Cenario: Cadastro sem preencher primeiro campo obrigatorio
            Dado que estou na tela de cadastro
            Quando não preencher o primeiro campo de cadastro
            Entao devo ser alertado sobre obrigatoriedade do preenchimento

        Cenario: Cadastro de email nao valido
            Dado que estou na tela de cadastro
            Quando inseri o email invalido "emailnaovalido.com"
            Entao devo ser alertado sobre invalidade do email

        Cenario: Cadastro de email valido
            Dado que estou na tela de cadastro
            E que inseri o email valido "emailvalido01@outlook.com"
            Quando prosseguir com o cadastro
            Entao devo ser direcionado para tela de cadastro de dados pessoais
        
        Cenario: Cadastro de dados sem preencher nenhum campo obrigatorio
            Dado que estou na tela de cadastro de dados
            Quando não preencher nenhum dos campos obrigatórios do cadastro
            Entao devo ser alertado sobre obrigatoriedade de preenchimento dos dados pessoais

        Cenario: Dados pessoais obrigatorios informados invalidos
            Dado que estou na tela de cadastro de dados
            E que preeenchi qualquer dado obrigatório incorretamente
            |cpfI        |123|
            |nomeCompltI |A|
            |dataNascmI  |11|
            |confrEmailI |emailnaovalido.com|
            |celularI    |1921|
            |confrCelI   |2119|
            Quando tentar prosseguir com o cadastro
            Entao devo ser alertado sobre obrigatoriedade de preenchimento correto

        Cenario: Dados pessoais obrigatorios informados validos
            Dado que estou na tela de cadastro de dados
            E que preeenchi todos os dados obrigatórios corretamente
            |cpf        |00673071081                |
            |nomeComplt |ROMEO TESTE VALIDO         |
            |dataNascm  |01/01/1998                 |
            |confrEmail |emailvalido01@outlook.com  |
            |celular    |61933521954                |
            |confrCel   |61933521954                |
            Quando tentar prosseguir com o cadastro
            Entao devo ser direcionado para proxima etapa

        Cenario: Cadastro de endereço sem preencher nenhum campo obrigatorio
            Dado que estou na tela de cadastro de endereço
            Quando não preencher nenhum dos campos obrigatórios de endereço
            Entao devo ser alertado sobre obrigatoriedade de preenchimento do endereço

        Cenario: Dados obrigatorios de endereco informados invalidos
            Dado que estou na tela de cadastro de endereço
            E que preeenchi qualquer dado obrigatório de endereço incorretamente
            |cepI       |1|
            |nomeDaRuaI |A|
            |numFachI   |0|
            |bairroI    |A|
            |cidadeI    |a|
            Quando tentar prosseguir com o cadastro
            Entao devo ser alertado sobre obrigatoriedade de preenchimento correto dos dados

        Cenario: Dados obrigatorios de endereco informados validos
            Dado que estou na tela de cadastro de endereço
            E que preeenchi os dados obrigatórios de endereço corretamente
            |cep       |31110730|
            |numFach   |1000    |
            Quando tentar prosseguir com o cadastro
            Entao devo ser direcionado para ultima etapa

#senha apenas numeros, 6 carcteres e sem seq numerico

        Cenario: Cadastro de senha sem preencher nenhum campo obrigatorio
            Dado que estou na tela de definição de senha
            Quando não preencher nenhum os campos obrigatórios para definição
            Entao devo ser alertado sobre obrigatoriedade de preenchimento para definição

        Cenario: Cadastro de senha nao valida 
            Dado que estou na tela de definição de senha
            E que inseri a senha "1234" que não é válida
            Quando tentar prosseguir com a definição de senha
            Entao devo ser alertado sobre invalidade da senha

        Cenario: Cadastro de senha valida
            Dado que estou na tela de definição de senha
            E que inseri a senha "523514" que é válida
            Quando prosseguir com a definição de senha
            Entao devo ser direcionado para tela de validação de cadastro

