*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}          file:///C:/Users/Usuario/Downloads/Controle-de-Medicamentos-main/Controle-de-Medicamentos-main/index.html
${BROWSER}      chrome

*** Test Cases ***
CT01 - Validar Dose Obrigatoria
    Open Browser    ${URL}    ${BROWSER}

    Input Text      id=nome          Dipirona
    Input Text      id=horario       08:00
    Input Text      id=quantidade    10

    Click Button    id=btnCadastrar

    Element Text Should Be
    ...    id=mensagem
    ...    Dose é obrigatória

    Close Browser
