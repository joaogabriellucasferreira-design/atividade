*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          file:///C:/Users/Usuario/Downloads/Controle-de-Medicamentos-main/Controle-de-Medicamentos-main/index.html
${BROWSER}      chrome

*** Test Cases ***
CT01 - Cadastro Valido De Medicamento
    Open Browser    ${URL}    ${BROWSER}
    Input Text      id=nome          Dipirona
    Input Text      id=dose          500mg
    Input Text      id=horario       08:00
    Input Text      id=quantidade    10
    Click Button    id=btnCadastrar
    Element Text Should Be    id=mensagem    Medicamento cadastrado com sucesso
    Close Browser
