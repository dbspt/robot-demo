*** Settings ***
Documentation  Definição dos passos da página inicial do Google

Resource  ../configs/config.resource
Resource  ../page_objects/google_page.resource

*** Keywords ***
I am on Google
  Go to     ${URL}

I search for ${TEXT}
  Input Text   ${SEARCH_TEXTFIELD}  ${TEXT}
  Submit form

I should see something cool
  Title Should Be  DBServices - Pesquisa Google