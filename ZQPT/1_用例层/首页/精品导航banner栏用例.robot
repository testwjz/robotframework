*** Settings ***
Suite Setup       F_Z_Home_打开浏览器并断言    ${home_url}
Suite Teardown    关闭浏览器
Test Teardown
Resource          ../../2_流程层/智企平台/F_Z_Home.robot
Resource          ../../3_页面层/智企平台/P_Z_Home.robot

*** Test Cases ***
1点击精品分类一级分类
    F_Z_Home_随机点击精品分类一级分类

2点击精品分类二级分类
    F_Z_Home_随机点击精品分类二级分类

3点击精品分类导航商品
    F_Z_Home_随机点击精品分类导航商品

4点击精品分类商品
    F_Z_Home_随机点击精品分类商品

5点击精品分类交易中心
    F_Z_Home_点击精品分类交易中心

6点击精品分类交易中心导航商品
    F_Z_Home_点击精品分类交易中心导航商品

7点击精品分类交易中心二级分类
    F_Z_Home_点击精品分类交易中心二级分类

8点击精品分类交易中心商品
    F_Z_Home_点击精品分类交易中心商品

9点击第一个广告图片
    F_Z_Home_点击第一个广告图片

10点击第二个广告图片
    F_Z_Home_点击第二个广告图片

11点击第三个广告图片
    F_Z_Home_点击第三个广告图片

12点击头像下登录
    F_Z_Home_点击头像下登录

13点击头像下注册
    F_Z_Home_点击头像下注册
