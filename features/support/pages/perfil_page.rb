class PerfilPage
  include Capybara::DSL

  def completa(empresa, cargo)
    find('input[name$=company]').set empresa
    combo_cargo = find('select[name$=job]')
    combo_cargo.find('option', text: cargo).select_option
    click_button 'Salvar'
  end

  def alerta
    find('.panel-c-success')
  end
end
