*** Settings ***
Suite Setup       F_Z_Product_打开浏览器并断言    ${product_url}
Suite Teardown    关闭浏览器
Resource          ../../2_流程层/智企平台/F_Z_Product.robot

*** Test Cases ***
1点击banner一级分类
    F_Z_Product_点击banner一级分类

2点击banner一级分类下商品
    F_Z_Product_点击banner一级分类下商品

3点击banner右二级分类
    F_Z_Product_点击banner右二级分类

4点击banner右商品
    F_Z_Product_点击banner右商品

5点击为你推荐商品名称
    F_Z_Product_点击为你推荐商品名称

6点击为你推荐立即购买
    F_Z_Product_点击为你推荐立即购买

7点击列表二级分类名称
    F_Z_Product_点击列表二级分类名称

8点击列表二级分类背景图片
    F_Z_Product_点击列表二级分类背景图片

9点击列表一级分类logo
    F_Z_Product_点击列表一级分类logo

10点击列表一级分类bg
    F_Z_Product_点击列表一级分类bg

11点击列表商品名称
    F_Z_Product_点击列表商品名称

12点击列表商品立即购买
    F_Z_Product_点击列表商品立即购买
