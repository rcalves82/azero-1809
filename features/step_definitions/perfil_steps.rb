Dado('que estou logado com {string} e {string}') do |email, senha|
  @page.login.load
  @page.login.logar(email, senha)
end

Dado('acesso o meu perfil') do
  @component.side.perfil
end

Quando('completo o meu cadastro com {string} e {string}') do |empresa, cargo|
  @page.perfil.completa(empresa, cargo)
end

Então('devo ver a mensagem de atualização cadastral:') do |mensagem|
  expect(@page.perfil.alerta.text).to eql mensagem
end
