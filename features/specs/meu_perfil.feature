#language: pt

Funcionalidade: Meu Perfil
    Para que eu possa manter meus dados atualizados
    Sendo um usuário que fez o cadastro simplificado
    Posso complentar o cadastro do meu perfil

    @perfil @logout
    Esquema do Cenario: Atualizar meu perfil
        Dado que estou logado com "<email>" e "<senha>"
        E acesso o meu perfil
        Quando completo o meu cadastro com "<empresa>" e "<cargo>"
        Então devo ver a mensagem de atualização cadastral:
                """
                Perfil atualizado com sucesso.
                """

        Exemplos: 
            | email                  | senha  | empresa | cargo      |
            | developer@google.com   | abc123 | Google  | Developer  |
            | qa@yahoo.com           | xpto12 | Yahoo   | QA         |
            | ceo@amazon.com         | 123456 | Amazon  | CEO        |
            | cto@google.com         | 123123 | Google  | CTO        |
            | estagiario@cade.com.br | 123123 | Cadê    | Estagiario |
     

