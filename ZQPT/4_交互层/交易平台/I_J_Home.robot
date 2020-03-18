*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/common.robot

*** Keywords ***
I_J_Home_断言公司交易存在
    Wait Until Element Is Visible    //a[@href="/company"]
    Element Should Contain    //a[@href="/company"]    公司转让
