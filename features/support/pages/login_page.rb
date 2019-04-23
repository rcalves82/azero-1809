class LoginPage
  include Capybara::DSL

  def load
    visit '/login'
  end

  def aguarde_o_form
    page.has_css?('#login_form') # => retorna um boolean (true ou false)
  end

  def logar(email, senha)
    find('input[placeholder*=mail]').set email
    find('input[type=password]').set senha
    find('button[id*=btnLogin]').click
  end

  def alerta
    find('.alert-login')
  end
end
