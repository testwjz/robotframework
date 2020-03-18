*** Settings ***
Suite Setup
Suite Teardown
Test Setup        打开浏览器登录    ${url}    944982315    123456zz    成功    顶SS
Test Teardown     Close Browser
Test Timeout
Resource          ../../2_流程层/会计生产流程/附属业务生产流程--先单后款.robot
Resource          ../../2_流程层/会计生产流程/附属业务生产流程-先款后单.robot
Resource          ../../2_流程层/登录流程/登录流程.robot
Resource          ../../2_流程层/新建商机流程/新建商机流程.robot

*** Test Cases ***
1新建商机-下单-审核-分单-分配-接收-更新节点-完结
    ${随机数}    evaluate    int(time.time())    time
    附属业务生产流程--先单后款.正常生产流程    人名    商机业态    人名     测试代理记账    税务报道核定税种成都    税务报道核定税种成都
    ...    123    12345678    测试客户${随机数}    5112232226${随机数}    成都会计事业部商务一中心一部    人名
    ...    人名    完结    ${随机数}1    会计|会计代理|代理记账    四川省|成都市|天府新区    备注信息
