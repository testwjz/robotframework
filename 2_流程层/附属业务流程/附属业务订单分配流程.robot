*** Settings ***
Resource          ../../3_页面层/会计生产中心页面/附属业务页面/待分配订单页面.robot

*** Keywords ***
附属业务订单分配
    [Arguments]    ${分配员工}    ${订单编号}
    待分配订单页面.进入待分配订单页面
    附属业务公共页面.搜索    ${订单编号}
    待分配订单页面.分配    ${分配员工}
    附属业务公共页面.分配成功断言
    刷新页面

附属业务待分配订单移交
    [Arguments]    ${移交对象}    ${订单编号}
    待分配订单页面.进入待分配订单页面
    附属业务公共页面.搜索    ${订单编号}
    待分配订单页面.F移交    ${移交对象}
    刷新页面
