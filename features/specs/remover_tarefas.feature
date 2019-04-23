#language: pt

Funcionalidade: Remover tarefas
    Sendo um usuário que possuo uma tarefa indesejada
    Possso remover esta tarefa
    Para que eu possa deixar meu painel organizado

    @login @logout @apagar
    Cenario: Remover uma tarefa

        Dado que "Tarefa para remoção" é a minha nova tarefa
        E esta tarefa é indesejada
        Quando eu solicito a exclusão desta tarefa
        E confirmo esta solicitação
        Então esta tarefa não deve ser exibida na lista

    @login @logout @bipolar
    Cenario: Desistir da remoção

        Dado que "Tarefa para desistir da remoção" é a minha nova tarefa
        E esta tarefa é indesejada
        Quando eu solicito a exclusão desta tarefa
        Mas sou bipolar e quero desistir da solicitação
        Então esta tarefa deve permanecer na lista