*** Settings ***
Suite Setup       F_Z_Goods_打开浏览器进入商品详情    ${home_url}    ${goods_name}
Suite Teardown    关闭浏览器
Resource          ../../2_流程层/智企平台/F_Z_Goods.robot

*** Test Cases ***
1直接点击立即购买
    F_Z_Goods_直接点击立即购买

2增加商品数量后点击立即购买
    F_Z_Goods_增加商品数量后点击立即购买    3

3点击加入购物车
    F_Z_Goods_点击加入购物车

4点击去购物车结算
    F_Z_Goods_点击去购物车结算

5点击继续逛逛
    F_Z_Goods_点击继续逛逛

6点击电话咨询
    F_Z_Goods_点击电话咨询

7点击在线客服
    F_Z_Goods_点击在线客服

8点击企服知识
    F_Z_Goods_点击企服知识
