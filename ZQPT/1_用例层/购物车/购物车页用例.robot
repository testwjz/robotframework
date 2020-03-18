*** Settings ***
Suite Setup       F_Z_Shop_car_打开浏览器并选购1件商品    ${home_url}    ${goods_name}
Suite Teardown    关闭浏览器
Force Tags        test
Resource          ../../2_流程层/智企平台/F_Z_Shop_car.robot

*** Test Cases ***
1点击去结算
    F_Z_Shop_car_点击去结算

2点击商品删除并确定
    F_Z_Shop_car_点击商品删除并确定    ${goods_name}

3点击商品删除并取消
    F_Z_Shop_car_点击商品删除并取消

4点击批量删除选中产品并确定
    F_Z_Shop_car_点击批量删除选中产品并确定    ${goods_name}

5点击批量删除选中产品并取消
    F_Z_Shop_car_点击批量删除选中产品并取消

6点击顶部全选复选框
    F_Z_Shop_car_点击顶部全选复选框

7点击底部全选复选框
    F_Z_Shop_car_点击底部全选复选框

8点击商品复选框
    F_Z_Shop_car_点击商品复选框

9点击商品数量加
    F_Z_Shop_car_点击商品数量加

10点击商品数量减
    F_Z_Shop_car_点击商品数量减    至少购买1个
