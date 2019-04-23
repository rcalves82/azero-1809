class Navbar
  include Capybara::DSL

  def menu_usuario
    find('.profile-address')
  end

  def sair
    menu_usuario.click
    find('a[href$=logout]').click
  end
end

class Sidebar
  include Capybara::DSL

  def perfil
    click_link 'Perfil'
  end
end

class Modal
  include Capybara::DSL

  def confirma
    within('.modal-content') do
      click_button 'Sim'
    end
  end

  def cancela
    within('.modal-content') do
      click_button 'Não, deixa queto.'
    end
  end

#   private

#   def modal_content
#     '.modal-content'
#   end
end
