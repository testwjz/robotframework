*** Settings ***
Resource          ../../3_页面层/订单审核页面/商务经理订单审核页.robot

*** Keywords ***
先单后款商务经理审核
    [Arguments]    ${订单号}
    商务经理订单审核页.进入订单审核页
    商务经理订单审核页.订单审核    ${订单号}
    刷新页面
