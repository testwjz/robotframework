*** Settings ***
Resource          财务公共页面.robot
Resource          ../../4_交互层/财务/财务3.0交互.robot

*** Keywords ***
进入成控审核页
    私有_进入财务页面    待审核认款-成控
    财务3.0交互.切换待成控审核认款iframe

成控审核认款通过
    [Arguments]    ${订单号}
    财务3.0交互.成控审核认款    ${订单号}
    财务3.0交互.切换认款详情iframe
    财务3.0交互.审核通过
