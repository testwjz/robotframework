*** Settings ***
Resource          ../../3_页面层/智企平台/P_Z_Home.robot
Resource          ../../3_页面层/交易平台/P_J_Home.robot
Resource          ../../3_页面层/智企平台/P_Z_Login.robot
Resource          ../../3_页面层/智企平台/P_Z_Register.robot
Resource          ../../3_页面层/智企平台/P_Z_Aboutus.robot
Resource          ../../3_页面层/智企平台/P_Z_Shop_car.robot

*** Keywords ***
F_Z_Home_打开浏览器并断言
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Home_进入首页断言

F_Z_Home_打开浏览器并点击登录
    [Arguments]    ${url}
    打开浏览器    ${url}
    P_Z_Home_进入首页断言
    P_Z_Home_点击顶部登录

F_Z_Home_随机点击导航商品
    P_Z_Home_随机点击导航商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击导航一级分类
    P_Z_Home_随机点击导航一级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击导航二级分类
    P_Z_Home_随机点击导航二级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航产品分类
    P_Z_Home_点击导航产品分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航公司注册
    P_Z_Home_点击导航公司注册
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航公司代账
    P_Z_Home_点击导航公司代账
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航商标注册
    P_Z_Home_点击导航商标注册
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航公司变更
    P_Z_Home_点击导航公司变更
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航交易中心
    P_Z_Home_点击导航交易中心
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击导航法律咨询
    P_Z_Home_点击导航法律咨询
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击导航贷款服务
    P_Z_Home_点击导航贷款服务
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击产品分类交易中心
    P_Z_Home_点击产品分类交易中心
    P_J_Home_断言首页并关闭窗口

F_Z_Home_随机点击精品分类一级分类
    P_Z_Home_随机点击精品分类一级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击精品分类二级分类
    P_Z_Home_随机点击精品分类二级分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击精品分类导航商品
    P_Z_Home_随机点击精品分类导航商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击精品分类商品
    P_Z_Home_随机点击精品分类商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击精品分类交易中心
    P_Z_Home_点击精品分类交易中心
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击精品分类交易中心导航商品
    P_Z_Home_点击精品分类交易中心导航商品
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击精品分类交易中心二级分类
    P_Z_Home_点击精品分类交易中心二级分类
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击精品分类交易中心商品
    P_Z_Home_点击精品分类交易中心商品
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击第一个广告图片
    P_Z_Home_点击第一个广告图片
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击第二个广告图片
    P_Z_Home_点击第二个广告图片
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击第三个广告图片
    P_Z_Home_点击第三个广告图片
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击头像下登录
    P_Z_Home_点击头像下登录
    P_Z_Login_断言登录存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击头像下注册
    P_Z_Home_点击头像下注册
    P_Z_Register_断言注册存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部关于我们
    P_Z_Home_点击顶部关于我们
    P_Z_Aboutus_断言公司介绍存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部消息中心
    P_Z_Home_点击顶部消息中心
    P_Z_Login_断言登录存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部我的顶呱呱
    P_Z_Home_点击顶部我的顶呱呱
    P_Z_Login_断言登录存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部购物车
    P_Z_Home_点击顶部购物车
    P_Z_Shorp_car_断言购物车存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部免费注册
    P_Z_Home_点击顶部免费注册
    P_Z_Register_断言注册存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部登录
    P_Z_Home_点击顶部登录
    P_Z_Login_断言登录存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部平台首页
    P_Z_Home_点击顶部平台首页
    P_Z_Home_进入首页断言

F_Z_Home_点击顶部我的订单
    P_Z_Home_点击顶部我的订单
    P_Z_Login_断言登录存在并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_随机点击精选服务
    P_Z_Home_随机点击精选服务
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击工商财税分类
    P_Z_Home_随机点击工商财税分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击工商财税左图
    P_Z_Home_点击工商财税左图
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击工商财税左图下查看详情
    P_Z_Home_点击工商财税左图下查看详情
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击工商财税右商品
    P_Z_Home_随机点击工商财税右商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击商标/专利/版权分类
    P_Z_Home_随机点击商标/专利/版权分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击商标/专利/版权左图
    P_Z_Home_点击商标/专利/版权左图
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击商标/专利/版权左图下查看详情
    P_Z_Home_点击商标/专利/版权左图下查看详情
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击商标/专利/版权右商品
    P_Z_Home_随机点击商标/专利/版权右商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击网站/软件/营销/人事外包分类
    P_Z_Home_随机点击网站/软件/营销/人事外包分类
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击网站/软件/营销/人事外包左图
    P_Z_Home_点击网站/软件/营销/人事外包左图
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_点击网站/软件/营销/人事外包左图下查看详情
    P_Z_Home_点击网站/软件/营销/人事外包左图下查看详情
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击网站/软件/营销/人事外包右商品
    P_Z_Home_随机点击网站/软件/营销/人事外包右商品
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击公司/商标/网店/新媒体交易分类
    P_Z_Home_随机点击公司/商标/网店/新媒体交易分类
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击公司/商标/网店/新媒体交易左图
    P_Z_Home_点击公司/商标/网店/新媒体交易左图
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击公司/商标/网店/新媒体交易左图下查看详情
    P_Z_Home_点击公司/商标/网店/新媒体交易左图下查看详情
    P_J_Home_断言首页并关闭窗口

F_Z_Home_随机点击公司/商标/网店/新媒体交易右商品
    P_Z_Home_随机点击公司/商标/网店/新媒体交易右商品
    P_J_Home_断言首页并关闭窗口

F_Z_Home_点击更多解决方案
    P_Z_Home_点击更多解决方案
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击解决方案背景图片
    P_Z_Home_随机点击解决方案背景图片
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击解决方案查看详情
    P_Z_Home_随机点击解决方案查看详情
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击平台动态图片
    P_Z_Home_随机点击平台动态图片
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击平台动态查看详情
    P_Z_Home_随机点击平台动态查看详情
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_随机点击企服知识
    P_Z_Home_随机点击企服知识
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_输入商品名称进行搜索
    [Arguments]    ${goods_name}
    P_Z_Home_输入商品名称并点击搜索    ${goods_name}
    P_Z_Home_断言搜索页被打开并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_随机点击热点搜索
    P_Z_Home_随机点击热点搜索
    P_Z_Home_断言搜索页被打开并回到首页
    P_Z_Home_进入首页断言

F_Z_Home_输入商品名称进行搜索后点击商品名称
    [Arguments]    ${goods_name}
    P_Z_Home_输入商品名称并点击搜索    ${goods_name}
    I_Z_Home_断言搜索页被打开
    P_Z_Home_点击搜索页商品名称    ${goods_name}
    P_Z_Home_断言产品分类并关闭窗口

F_Z_Home_输入商品名称进行搜索后点击立即购买
    [Arguments]    ${goods_name}
    P_Z_Home_输入商品名称并点击搜索    ${goods_name}
    I_Z_Home_断言搜索页被打开
    P_Z_Home_点击搜索页商品立即购买    ${goods_name}
    P_Z_Home_断言产品分类并关闭窗口
