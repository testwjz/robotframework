*** Settings ***
Suite Setup       F_Z_Home_打开浏览器并断言    ${home_url}
Suite Teardown    关闭浏览器
Test Teardown
Resource          ../../2_流程层/智企平台/F_Z_Home.robot

*** Test Cases ***
1点击导航商品
    F_Z_Home_随机点击导航商品

2点击导航一级分类
    F_Z_Home_随机点击导航一级分类

3点击导航二级分类
    F_Z_Home_随机点击导航二级分类

4点击产品分类
    F_Z_Home_点击导航产品分类

5点击公司注册
    F_Z_Home_点击导航公司注册

6点击公司代账
    F_Z_Home_点击导航公司代账

7点击商标注册
    F_Z_Home_点击导航商标注册

8点击公司变更
    F_Z_Home_点击导航公司变更

9点击交易中心
    F_Z_Home_点击导航交易中心

10点击产品分类交易中心
    F_Z_Home_点击产品分类交易中心

11点击法律咨询
    F_Z_Home_点击导航法律咨询

12点击贷款服务
    F_Z_Home_点击导航贷款服务
