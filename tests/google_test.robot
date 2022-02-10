*** Settings ***
Library  SeleniumLibrary

Resource  ../configs/config.resource
Resource  ../resources/google.resource

Test Setup      Open Browser  about:blank   ${BROWSER}
Test Teardown   Close browser

*** Test case ***
Scenario 01:
  Given I am on Google
  When I search for DBServices
  Then I should see something cool
