*** Settings ***
Resource          ../../4_交互层/智企平台/I_Z_Home.robot

*** Variables ***
${category_num}    5

*** Keywords ***
P_Z_Home_进入首页断言
    I_Z_Home_关闭315弹框
    I_Z_Home_断言精选服务存在
    I_Z_Home_断言首页title

P_Z_Home_断言产品分类并关闭窗口
    I_Z_Home_断言顶呱呱图片存在
    sleep    1
    Close Window

P_Z_Home_随机点击导航一级分类
    选择窗口    main
    I_Z_Home_鼠标到产品分类
    ${index}    获取随机数    1    ${category_num}
    I_Z_Home_点击一级分类    ${index}
    选择窗口    new

P_Z_Home_随机点击导航二级分类
    选择窗口    main
    I_Z_Home_鼠标到产品分类
    ${index}    获取随机数    1    ${category_num}
    I_Z_Home_鼠标到一级分类    ${index}
    I_Z_Home_随机点击二级分类
    选择窗口    new

P_Z_Home_随机点击导航商品
    选择窗口    main
    I_Z_Home_鼠标到产品分类
    ${index}    获取随机数    1    ${category_num}
    I_Z_Home_鼠标到一级分类    ${index}
    I_Z_Home_随机点击导航商品
    选择窗口    new

P_Z_Home_点击产品分类交易中心
    选择窗口    main
    I_Z_Home_鼠标到产品分类
    I_Z_Home_点击一级分类    6
    选择窗口    new

P_Z_Home_点击导航产品分类
    I_Z_Home_点击导航菜单    产品分类

P_Z_Home_点击导航公司注册
    I_Z_Home_点击导航菜单    公司注册

P_Z_Home_点击导航公司代账
    I_Z_Home_点击导航菜单    公司代账

P_Z_Home_点击导航商标注册
    I_Z_Home_点击导航菜单    商标注册

P_Z_Home_点击导航公司变更
    I_Z_Home_点击导航菜单    公司变更

P_Z_Home_点击导航交易中心
    I_Z_Home_点击导航交易中心

P_Z_Home_点击导航法律咨询
    I_Z_Home_点击导航菜单    法律咨询

P_Z_Home_点击导航贷款服务
    I_Z_Home_点击导航菜单    贷款服务

P_Z_Home_随机点击精品分类一级分类
    选择窗口    main
    ${index}    获取随机数    1    ${category_num}
    ${text}    I_Z_Home_随机点击精品分类一级分类    ${index}
    选择窗口    new

P_Z_Home_随机点击精品分类导航商品
    选择窗口    main
    ${index}    获取随机数    1    ${category_num}
    I_Z_Home_随机点击精品分类导航商品    ${index}
    选择窗口    new

P_Z_Home_随机点击精品分类二级分类
    选择窗口    main
    ${index}    获取随机数    1    ${category_num}
    ${text}    I_Z_Home_鼠标到精品分类一级分类    ${index}
    I_Z_Home_点击精品分类二级分类    ${text}
    选择窗口    new

P_Z_Home_随机点击精品分类商品
    选择窗口    main
    ${index}    获取随机数    1    ${category_num}
    ${text}    I_Z_Home_鼠标到精品分类一级分类    ${index}
    I_Z_Home_点击精品分类二级分类下商品    ${text}
    选择窗口    new

P_Z_Home_点击精品分类交易中心
    选择窗口    main
    I_Z_Home_点击精品分类一级分类    交易中心
    选择窗口    new

P_Z_Home_点击精品分类交易中心导航商品
    选择窗口    main
    I_Z_Home_点击精品分类导航商品
    选择窗口    new

P_Z_Home_点击精品分类交易中心二级分类
    选择窗口    main
    I_Z_Home_鼠标到精品分类一级分类    6
    I_Z_Home_点击精品分类二级分类    交易中心
    选择窗口    new

P_Z_Home_点击精品分类交易中心商品
    选择窗口    main
    I_Z_Home_鼠标到精品分类一级分类    6
    I_Z_Home_点击精品分类二级分类下商品    交易中心
    选择窗口    new

P_Z_Home_点击第一个广告图片
    选择窗口    main
    I_Z_Home_鼠标移动到查看全部
    I_Z_Home_点击第一个广告图片
    选择窗口    new

P_Z_Home_点击第二个广告图片
    选择窗口    main
    I_Z_Home_鼠标移动到查看全部
    I_Z_Home_点击第二个广告图片
    选择窗口    new

P_Z_Home_点击第三个广告图片
    选择窗口    main
    I_Z_Home_鼠标移动到查看全部
    I_Z_Home_点击第三个广告图片
    选择窗口    new

P_Z_Home_点击头像下登录
    选择窗口    main
    I_Z_Home_鼠标移动到查看全部
    I_Z_Home_点击头像下登录

P_Z_Home_点击头像下注册
    选择窗口    main
    I_Z_Home_鼠标移动到查看全部
    I_Z_Home_点击头像下注册

P_Z_Home_点击顶部关于我们
    选择窗口    main
    I_Z_Home_点击顶部菜单    关于我们

P_Z_Home_点击顶部消息中心
    选择窗口    main
    I_Z_Home_点击顶部菜单    消息中心

P_Z_Home_点击顶部我的顶呱呱
    选择窗口    main
    I_Z_Home_点击顶部菜单    我的顶呱呱

P_Z_Home_点击顶部购物车
    选择窗口    main
    I_Z_Home_点击顶部菜单    购物车

P_Z_Home_点击顶部免费注册
    选择窗口    main
    I_Z_Home_点击顶部菜单    免费注册

P_Z_Home_点击顶部登录
    选择窗口    main
    I_Z_Home_点击顶部菜单    登录

P_Z_Home_点击顶部平台首页
    选择窗口    main
    I_Z_Home_点击顶部菜单    平台首页

P_Z_Home_点击顶部我的订单
    选择窗口    main
    I_Z_Home_鼠标到顶部我的顶呱呱
    I_Z_Home_点击顶部我的订单

P_Z_Home_随机点击精选服务
    选择窗口    main
    I_Z_Home_随机点击精选服务
    选择窗口    new

P_Z_Home_随机点击工商财税分类
    选择窗口    main
    I_Z_Home_随机点击工商财税分类
    选择窗口    new

P_Z_Home_点击工商财税左图
    选择窗口    main
    I_Z_Home_点击工商财税左图
    选择窗口    new

P_Z_Home_点击工商财税左图下查看详情
    选择窗口    main
    I_Z_Home_点击工商财税左图下查看详情
    选择窗口    new

P_Z_Home_随机点击工商财税右商品
    选择窗口    main
    I_Z_Home_随机点击工商财税右商品
    选择窗口    new

P_Z_Home_随机点击商标/专利/版权分类
    选择窗口    main
    I_Z_Home_随机点击商标/专利/版权分类
    选择窗口    new

P_Z_Home_点击商标/专利/版权左图
    选择窗口    main
    I_Z_Home_点击商标/专利/版权左图
    选择窗口    new

P_Z_Home_点击商标/专利/版权左图下查看详情
    选择窗口    main
    I_Z_Home_点击商标/专利/版权左图下查看详情
    选择窗口    new

P_Z_Home_随机点击商标/专利/版权右商品
    选择窗口    main
    I_Z_Home_随机点击商标/专利/版权右商品
    选择窗口    new

P_Z_Home_随机点击网站/软件/营销/人事外包分类
    选择窗口    main
    I_Z_Home_随机点击网站/软件/营销/人事外包分类
    选择窗口    new

P_Z_Home_点击网站/软件/营销/人事外包左图
    选择窗口    main
    I_Z_Home_点击网站/软件/营销/人事外包左图
    选择窗口    new

P_Z_Home_点击网站/软件/营销/人事外包左图下查看详情
    选择窗口    main
    I_Z_Home_点击网站/软件/营销/人事外包左图下查看详情
    选择窗口    new

P_Z_Home_随机点击网站/软件/营销/人事外包右商品
    选择窗口    main
    I_Z_Home_随机点击网站/软件/营销/人事外包右商品
    选择窗口    new

P_Z_Home_随机点击公司/商标/网店/新媒体交易分类
    选择窗口    main
    I_Z_Home_随机点击公司/商标/网店/新媒体交易分类
    选择窗口    new

P_Z_Home_点击公司/商标/网店/新媒体交易左图
    选择窗口    main
    I_Z_Home_点击公司/商标/网店/新媒体交易左图
    选择窗口    new

P_Z_Home_点击公司/商标/网店/新媒体交易左图下查看详情
    选择窗口    main
    I_Z_Home_点击公司/商标/网店/新媒体交易左图下查看详情
    选择窗口    new

P_Z_Home_随机点击公司/商标/网店/新媒体交易右商品
    选择窗口    main
    I_Z_Home_随机点击公司/商标/网店/新媒体交易右商品
    选择窗口    new

P_Z_Home_点击更多解决方案
    选择窗口    main
    I_Z_Home_点击更多解决方案
    选择窗口    new

P_Z_Home_随机点击解决方案背景图片
    选择窗口    main
    I_Z_Home_随机点击解决方案背景图片
    选择窗口    new

P_Z_Home_随机点击解决方案查看详情
    选择窗口    main
    I_Z_Home_随机点击解决方案查看详情
    选择窗口    new

P_Z_Home_随机点击平台动态图片
    选择窗口    main
    I_Z_Home_随机点击平台动态图片
    选择窗口    new

P_Z_Home_随机点击平台动态查看详情
    选择窗口    main
    I_Z_Home_随机点击平台动态查看详情
    选择窗口    new

P_Z_Home_随机点击企服知识
    选择窗口    main
    I_Z_Home_随机点击企服知识
    选择窗口    new

P_Z_Home_输入商品名称并点击搜索
    [Arguments]    ${goods_name}
    选择窗口    main
    I_Z_Home_搜索框输入商品名称    ${goods_name}
    I_Z_Home_点击界面搜索按钮

P_Z_Home_随机点击热点搜索
    选择窗口    main
    I_Z_Home_随机点击热点搜索

P_Z_Home_断言搜索页被打开并回到首页
    I_Z_Home_断言搜索页被打开
    I_Z_Home_点击回到首页图片

P_Z_Home_点击搜索页商品名称
    [Arguments]    ${goods_name}
    选择窗口    main
    I_Z_Home_点击搜索页商品名称    ${goods_name}
    选择窗口    new

P_Z_Home_点击搜索页商品立即购买
    [Arguments]    ${goods_name}
    选择窗口    main
    I_Z_Home_点击搜索页商品立即购买    ${goods_name}
    选择窗口    new
