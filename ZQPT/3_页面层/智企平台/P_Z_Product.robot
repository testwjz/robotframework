*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Product.robot

*** Keywords ***
P_Z_Product_断言为你推荐存在
    I_Z_Product_断言为你推荐存在

P_Z_Product_点击为你推荐商品名称
    选择窗口    main
    I_Z_Product_点击为你推荐商品名称
    选择窗口    new

P_Z_Product_点击为你推荐立即购买
    选择窗口    main
    I_Z_Product_点击为你推荐立即购买
    选择窗口    new

P_Z_Product_点击列表二级分类名称
    选择窗口    main
    I_Z_Product_点击列表二级分类名称
    选择窗口    new

P_Z_Product_点击列表二级分类背景图片
    选择窗口    main
    I_Z_Product_点击列表二级分类背景图片
    选择窗口    new

P_Z_Product_点击列表一级分类logo
    选择窗口    main
    I_Z_Product_点击列表一级分类logo
    选择窗口    new

P_Z_Product_点击列表一级分类bg
    选择窗口    main
    I_Z_Product_点击列表一级分类bg
    选择窗口    new

P_Z_Product_点击列表商品名称
    选择窗口    main
    I_Z_Product_点击列表商品名称
    选择窗口    new

P_Z_Product_点击列表商品立即购买
    选择窗口    main
    I_Z_Product_点击列表商品立即购买
    选择窗口    new

P_Z_Product_点击banner一级分类
    选择窗口    main
    I_Z_Product_点击banner一级分类
    选择窗口    new

P_Z_Product_点击banner一级分类下商品
    选择窗口    main
    I_Z_Product_点击banner一级分类下商品
    选择窗口    new

P_Z_Product_点击banner右二级分类
    选择窗口    main
    I_Z_Product_鼠标放到banner一级分类上
    I_Z_Product_点击banner右二级分类
    选择窗口    new

P_Z_Product_点击banner右商品
    选择窗口    main
    I_Z_Product_鼠标放到banner一级分类上
    I_Z_Product_点击banner右商品
    选择窗口    new
