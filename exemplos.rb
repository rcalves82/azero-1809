
    #fill_in funciona quando o elemento input possui id ou name
    # valor absoluto do id ou name
    # fill_in 'email', with: email
    # fill_in 'password', with: senha

    # buscar elemento do tipo input cuja o atributo placeholder, seja igual
    # a exemplo@gmail.com

    # CSS Selector

    #sempre que preciso passar um valor pra um atributo , via CSS Select 
    #este valor possuir, espaços ou caracteres especiais, devo 
    #coloca-lo dentro de uma string    

    find('input[placeholder="example@gmail.com"]').set email
    find('input[type=password]').set senha
    #find('.loginButton').click
    #click_button 'Login'

    find('button[id*=btnLogin]').click

    # find('#login_email').set email
    # find('#login_password').set senha