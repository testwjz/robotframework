*** Settings ***
Suite Setup       F_Z_Aboutus_打开浏览器进入公司介绍并断言    ${introduction_url}
Suite Teardown    关闭浏览器
Resource          ../../2_流程层/智企平台/F_Z_Aboutus.robot

*** Test Cases ***
1点击发展历程
    F_Z_Aboutus_点击发展历程

2点击企业荣誉
    F_Z_Aboutus_点击企业荣誉

3点击企业文化
    F_Z_Aboutus_点击企业文化

4点击公司地址
    F_Z_Aboutus_点击公司地址
