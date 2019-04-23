class TarefasPage
  include Capybara::DSL

  def nova(tarefa)
    within('#add-task') do
      fill_in 'title', with: tarefa[:nome]
      fill_in 'dueDate', with: tarefa[:data]
      insere_tags(tarefa[:tags])
      click_button 'Cadastrar'
    end
  end

  def solicita_exclusao(nome)
    tr = obter_tr_por_nome(nome)
    tr.find('#delete-button').click
  end

  def obter_tr_por_nome(nome)
    find('table tbody tr', text: nome)
  end

  def tarefa_existe?(nome)
    page.has_css?('table tbody tr', text: nome)
  end

  def tarefa_nao_existe?(nome)
    page.has_no_css?('table tbody tr', text: nome)
  end

  # aqui retorna string pq retorna o metodo text
  def alerta
    find('.alert-warn').text
  end

  def ola
    find('#task-board h3')
  end

  def botao_novo
    find('button[id^=insert]').click
  end

  private

  def insere_tags(tags)
    campo_tag = find('div[class*=tagsinput] input')
    tags.each do |t|
      campo_tag.set t[:tag]
      campo_tag.send_keys :tab
      sleep 0.05
    end
  end
end
