*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Product.robot
Resource          ../../3_页面层/智企平台/P_Z_Home.robot

*** Keywords ***
F_Z_Product_打开浏览器并断言
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Product_断言为你推荐存在

F_Z_Product_点击为你推荐商品名称
    P_Z_Product_点击为你推荐商品名称
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击为你推荐立即购买
    P_Z_Product_点击为你推荐立即购买
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表二级分类名称
    P_Z_Product_点击列表二级分类名称
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表二级分类背景图片
    P_Z_Product_点击列表二级分类背景图片
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表一级分类logo
    P_Z_Product_点击列表一级分类logo
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表一级分类bg
    P_Z_Product_点击列表一级分类bg
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表商品名称
    P_Z_Product_点击列表商品名称
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击列表商品立即购买
    P_Z_Product_点击列表商品立即购买
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击banner一级分类
    P_Z_Product_点击banner一级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击banner一级分类下商品
    P_Z_Product_点击banner一级分类下商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击banner右二级分类
    P_Z_Product_点击banner右二级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Product_点击banner右商品
    P_Z_Product_点击banner右商品
    P_Z_Home_断言产品分类并关闭窗口
