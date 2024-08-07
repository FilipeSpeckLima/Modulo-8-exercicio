configurar produto

Funcionalidade: Configurar produto na EBAC-SHOP

  Cenário: Configuração bem-sucedida do produto
    Dado que o cliente está na página de configuração do produto
    Quando o cliente seleciona a cor "vermelho"
    E o cliente seleciona o tamanho "M"
    E o cliente seleciona a quantidade "3"
    Então o cliente deve ser capaz de adicionar o produto ao carrinho

  Cenário: Seleções obrigatórias não preenchidas
    Dado que o cliente está na página de configuração do produto
    Quando o cliente não seleciona uma cor
    Ou o cliente não seleciona um tamanho
    Ou o cliente não seleciona uma quantidade
    Então o cliente deve ver uma mensagem "Por favor, selecione cor, tamanho e quantidade"
    E o cliente não deve ser capaz de adicionar o produto ao carrinho

  Cenário: Limite máximo de produtos por venda
    Dado que o cliente está na página de configuração do produto
    Quando o cliente seleciona a quantidade "11"
    Então o cliente deve ver uma mensagem "Quantidade máxima permitida é 10"
    E o cliente não deve ser capaz de adicionar o produto ao carrinho

  Cenário: Voltar ao estado original ao clicar em "limpar"
    Dado que o cliente está na página de configuração do produto
    E o cliente seleciona a cor "azul"
    E o cliente seleciona o tamanho "L"
    E o cliente seleciona a quantidade "2"
    Quando o cliente clica no botão "limpar"
    Então as seleções de cor, tamanho e quantidade devem ser redefinidas para o estado original (vazio)

login na plataforma

Funcionalidade: Autenticação na EBAC-SHOP

  Cenário: Login bem-sucedido com credenciais válidas
    Dado que o cliente está na página de login
    E que o cliente possui um nome de usuário "usuario_valido"
    E uma senha "senha_valida"
    Quando o cliente insere o nome de usuário "usuario_valido"
    E o cliente insere a senha "senha_valida"
    E o cliente clica no botão de login
    Então o cliente deve ser direcionado para a tela de checkout

  Cenário: Login falhou com nome de usuário inválido
    Dado que o cliente está na página de login
    E que o cliente possui um nome de usuário "usuario_invalido"
    E uma senha "senha_valida"
    Quando o cliente insere o nome de usuário "usuario_invalido"
    E o cliente insere a senha "senha_valida"
    E o cliente clica no botão de login
    Então o cliente deve ver uma mensagem de alerta "Usuário ou senha inválidos"
    E o cliente deve permanecer na página de login

  Cenário: Login falhou com senha inválida
    Dado que o cliente está na página de login
    E que o cliente possui um nome de usuário "usuario_valido"
    E uma senha "senha_invalida"
    Quando o cliente insere o nome de usuário "usuario_valido"
    E o cliente insere a senha "senha_invalida"
    E o cliente clica no botão de login
    Então o cliente deve ver uma mensagem de alerta "Usuário ou senha inválidos"
    E o cliente deve permanecer na página de login

  Cenário: Login falhou com ambos os campos inválidos
    Dado que o cliente está na página de login
    E que o cliente possui um nome de usuário "usuario_invalido"
    E uma senha "senha_invalida"
    Quando o cliente insere o nome de usuário "usuario_invalido"
    E o cliente insere a senha "senha_invalida"
    E o cliente clica no botão de login
    Então o cliente deve ver uma mensagem de alerta "Usuário ou senha inválidos"
    E o cliente deve permanecer na página de login

Tela de Cadastro

Funcionalidade: Concluir cadastro na EBAC-SHOP

  Cenário: Cadastro bem-sucedido com todos os dados obrigatórios preenchidos
    Dado que o cliente está na página de cadastro
    E que todos os campos obrigatórios estão marcados com asteriscos
    Quando o cliente preenche todos os campos obrigatórios corretamente
    E o cliente clica no botão de cadastrar
    Então o cliente deve ser cadastrado com sucesso
    E o cliente deve ser redirecionado para a tela de finalização da compra

  Cenário: Cadastro falhou devido a formato inválido de e-mail
    Dado que o cliente está na página de cadastro
    E que todos os campos obrigatórios estão marcados com asteriscos
    Quando o cliente preenche o campo e-mail com "email_invalido"
    E o cliente preenche todos os outros campos obrigatórios corretamente
    E o cliente clica no botão de cadastrar
    Então o cliente deve ver uma mensagem de erro "Formato de e-mail inválido"
    E o cliente deve permanecer na página de cadastro

  Cenário: Cadastro falhou devido a campos obrigatórios vazios
    Dado que o cliente está na página de cadastro
    E que todos os campos obrigatórios estão marcados com asteriscos
    Quando o cliente deixa um ou mais campos obrigatórios vazios
    E o cliente clica no botão de cadastrar
    Então o cliente deve ver uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios"
    E o cliente deve permanecer na página de cadastro

  Cenário: Cadastro falhou devido a campos e-mail e outros obrigatórios vazios
    Dado que o cliente está na página de cadastro
    E que todos os campos obrigatórios estão marcados com asteriscos
    Quando o cliente preenche o campo e-mail com "email_invalido"
    E o cliente deixa um ou mais campos obrigatórios vazios
    E o cliente clica no botão de cadastrar
    Então o cliente deve ver uma mensagem de erro "Formato de e-mail inválido"
    E uma mensagem de alerta "Por favor, preencha todos os campos obrigatórios"
    E o cliente deve permanecer na página de cadastro