Dado('que estou na página de login') do
  @page.login.load
end

Dado('a quantidade máxima de login é de {int} tentativas') do |tentativa|
  @tentativa = tentativa + 1
end

Quando('faço login com {string} e {string}') do |email, senha|
  @page.login.logar(email, senha)
end

Quando('tento logar com {string} e {string}') do |email, senha|
  @tentativa.times do
    @page.login.logar(email, senha)
  end
end

Então('devo ver a mensagem {string}') do |mensagem|
  expect(@page.tarefas.ola.text).to eql mensagem
end

Então('devo ver a mensagem de alerta {string}') do |mensagem|
  expect(@page.login.alerta.text).to eql mensagem
end
