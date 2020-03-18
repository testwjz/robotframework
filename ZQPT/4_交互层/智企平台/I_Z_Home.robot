*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/ZQ_Common.robot

*** Variables ***
${产品分类_loc}       //div[@class="main-menu"]//a[text()="产品分类"]

*** Keywords ***
I_Z_Home_断言首页title
    Title Should Be    顶呱呱集团_公司注册_代理记账_专利商标注册申请_交易转让等一站式企业服务平台

I_Z_Home_断言顶呱呱图片存在
    Wait Until Element Is Visible    //h1[@class="logo"]/a
    Element Should Be Visible    //h1[@class="logo"]/a

I_Z_Home_断言精选服务存在
    Wait Until Element Is Visible    //div[@class="server-title"]
    Element Should Be Visible    //div[@class="server-title"]

I_Z_Home_点击回到首页图片
    点击元素    //h1[@class="logo"]/a

I_Z_Home_打开浏览器（有活动）
    [Arguments]    ${url}
    打开浏览器    ${url}
    I_Z_Home_关闭315弹框
    I_Z_Home_断言顶呱呱图片存在
    I_Z_Home_断言精选服务存在
    I_Z_Home_断言首页title

I_Z_Home_关闭315弹框
    [Documentation]    如果有活动则增加关闭活动弹框操作
    ...
    ...    比如之前有315活动，进入首页时都会弹出315弹框
    sleep    0.2

I_Z_Home_点击顶部菜单
    [Arguments]    ${name}
    [Documentation]    点击顶部菜单，包括如下
    ...    1、区域：成都
    ...    2、平台首页
    ...    3、微信公众号
    ...    4、登录
    ...    5、免费注册
    ...    6、购物车
    ...    7、我的顶呱呱
    ...    8、消息中心
    ...    9、关于我们
    点击元素    //div[@class="header-top"]//a[text()='${name}']

I_Z_Home_鼠标到顶部我的顶呱呱
    鼠标移动在元素上    //div[@class="header-top"]//a[text()='我的顶呱呱']

I_Z_Home_点击顶部我的订单
    点击元素    //a[text()="我的订单"]

I_Z_Home_点击导航菜单
    [Arguments]    ${name}
    [Documentation]    点击导航菜单，包括如下：
    ...    1、产品分类
    ...    2、公司注册
    ...    3、会计财税
    ...    4、商标注册
    ...    5、公司变更
    ...    6、交易中心
    ...    7、法律咨询
    ...    8、贷款服务
    选择窗口    main
    点击元素    //div[@class="main-menu"]//a[text()="${name}"]
    选择窗口    new

I_Z_Home_点击导航交易中心
    选择窗口    main
    点击元素    //div[@class="main-menu"]//li/a[text()="交易中心"]
    选择窗口    new

I_Z_Home_鼠标到产品分类
    [Documentation]    与导航菜单中取坐标类似
    鼠标移动在元素上    ${产品分类_loc}

I_Z_Home_鼠标到一级分类
    [Arguments]    ${index}
    [Documentation]    点击一级菜单：
    ...    根据坐标进行点击，从上到下由0依次递增。如：
    ...    工商服务为0，交易中心为6
    鼠标移动在元素上    //div[@class="sub-menu"]//label[@data-index="${index}"]/a

I_Z_Home_点击一级分类
    [Arguments]    ${index}
    [Documentation]    与鼠标到一级分类获取坐标方式一致
    点击元素    //div[@class="sub-menu"]//label[@data-index="${index}"]/a

I_Z_Home_随机点击二级分类
    [Documentation]    随机点击可见的二级分类
    随机点击列表元素    //div[@class="main-menu"]//div[not(contains(@style,"display"))]/div[@class="sub-main-list"]/h3/a

I_Z_Home_随机点击导航商品
    [Documentation]    随机点击可见的商品
    随机点击列表元素    //div[@class="main-menu"]//div[not(contains(@style,"display"))]/div[@class="sub-main-list"]/div[@class="list"]//a

I_Z_Home_点击精品分类一级分类
    [Arguments]    ${title}=工商服务
    点击元素    //div[@class="product-menu"]//label/h4/a[@title="${title}"]

I_Z_Home_点击精品分类导航商品
    [Arguments]    ${title}=交易中心
    点击元素    //div[@class="product-menu"]//label/h4/a[@title="${title}"]/../../div/a[not(@style)]

I_Z_Home_点击精品分类二级分类
    [Arguments]    ${title}=工商服务
    [Documentation]    需要传入精品分类一级title
    随机点击列表元素    //div[@class="product-menu"]//label/h4/a[@title="${title}"]/../../..//h5

I_Z_Home_点击精品分类二级分类下商品
    [Arguments]    ${title}=工商服务
    随机点击列表元素    //div[@class="product-menu"]//label/h4/a[@title="${title}"]/../../..//div[@class="list"]/p/a

I_Z_Home_鼠标到精品分类一级分类
    [Arguments]    ${index}
    ${element}    获取元素列表    //div[@class="product-menu"]//label/h4/a
    鼠标移动在元素上    ${element}[${index}]
    ${text}    Get Text    ${element}[${index}]
    [Return]    ${text}

I_Z_Home_随机点击精品分类一级分类
    [Arguments]    ${index}
    ${element}    获取元素列表    //div[@class="product-menu"]//label/h4/a
    点击元素    ${element}[${index}]

I_Z_Home_随机点击精品分类导航商品
    [Arguments]    ${index}
    ${element}    获取元素列表    //div[@class="product-menu"]//label/div/a[not(@style)]
    点击元素    ${element}[${index}]

I_Z_Home_点击第一个广告图片
    点击元素    //div[@class="activity"]//img[@data-type="banner下1"]

I_Z_Home_点击第二个广告图片
    点击元素    //div[@class="activity"]//img[@data-type="banner下2"]

I_Z_Home_点击第三个广告图片
    点击元素    //div[@class="activity"]//img[@data-type="banner下3"]

I_Z_Home_点击头像下登录
    点击元素    //div[@class="ent-btn-group"]/a[text()="登录"]

I_Z_Home_点击头像下注册
    点击元素    //div[@class="ent-btn-group"]/a[text()="注册"]

I_Z_Home_随机点击精选服务
    随机点击列表元素    //div[@class="server-module home-module2"]//li[contains(@class,"swiper-slide swiper-slide-visible swiper-slide-active")]/a

I_Z_Home_随机点击工商财税分类
    随机点击列表元素    //a[@data-position="工商财税"]

I_Z_Home_点击工商财税左图
    点击元素    //div[@class="home-module home-module3"]//div[@class="module-left"]//img[@alt="左大图"]

I_Z_Home_点击工商财税左图下查看详情
    点击元素    //div[@class="home-module home-module3"]//div[@class="module-left"]//time

I_Z_Home_随机点击工商财税右商品
    随机点击列表元素    //div[@class="home-module home-module3"]//div[@class="module-right"]//img

I_Z_Home_随机点击商标/专利/版权分类
    随机点击列表元素    //a[@data-position="商标/专利/版权"]

I_Z_Home_点击商标/专利/版权左图
    点击元素    //div[@class="home-module home-module4 five-module"]//div[@class="module-left"]//img[@alt="左大图"]

I_Z_Home_点击商标/专利/版权左图下查看详情
    点击元素    //div[@class="home-module home-module4 five-module"]//div[@class="module-left"]//img

I_Z_Home_随机点击商标/专利/版权右商品
    随机点击列表元素    //div[@class="home-module home-module4 five-module"]//div[@class="module-right"]//img

I_Z_Home_随机点击网站/软件/营销/人事外包分类
    随机点击列表元素    //a[@data-position="网站/软件/营销/人事外包"]

I_Z_Home_点击网站/软件/营销/人事外包左图
    点击元素    //div[@class="home-module home-module5"]//div[@class="module-left"]//img[@alt="左大图"]

I_Z_Home_点击网站/软件/营销/人事外包左图下查看详情
    点击元素    //div[@class="home-module home-module5"]//div[@class="module-left"]//time

I_Z_Home_随机点击网站/软件/营销/人事外包右商品
    [Documentation]    只点击goods，不点击交易
    随机点击列表元素    //div[@class="home-module home-module5"]//div[@class="module-right"]/a[contains(@href,"goods")]

I_Z_Home_随机点击公司/商标/网店/新媒体交易分类
    随机点击列表元素    //a[@data-position="公司/商标/网店/新媒体交易"]

I_Z_Home_点击公司/商标/网店/新媒体交易左图
    点击元素    //div[@class="home-module home-module6 five-module"]//div[@class="module-left"]//img[@alt="左大图"]

I_Z_Home_点击公司/商标/网店/新媒体交易左图下查看详情
    点击元素    //div[@class="home-module home-module6 five-module"]//div[@class="module-left"]//time

I_Z_Home_随机点击公司/商标/网店/新媒体交易右商品
    随机点击列表元素    //div[@class="home-module home-module6 five-module"]//div[@class="module-right"]//img

I_Z_Home_点击更多解决方案
    点击元素    //span[@class="more-solution"]

I_Z_Home_随机点击解决方案背景图片
    随机点击列表元素    //div[@class="solution-wrap"]/a/img

I_Z_Home_随机点击解决方案查看详情
    随机点击列表元素    //div[@class="solution-wrap"]/a/span

I_Z_Home_随机点击平台动态图片
    点击元素    //button[text()="媒体报道"]
    随机点击列表元素    //ul[@class="zixun_index" and not(@style="display: none;")]//img

I_Z_Home_随机点击平台动态查看详情
    点击元素    //button[text()="媒体报道"]
    随机点击列表元素    //ul[@class="zixun_index" and not(@style="display: none;")]//a[text()="查看详情"]

I_Z_Home_随机点击企服知识
    鼠标移动在元素上    //a[text()="会计"]
    随机点击列表元素    //ul[@class="info_right_list" and not(@style="display: none;")]//p

I_Z_Home_搜索框输入商品名称
    [Arguments]    ${goods_name}
    输入元素    //input[@id="mainSearch"]    ${goods_name}

I_Z_Home_点击界面搜索按钮
    点击元素    //button[@id="searchBtn"]

I_Z_Home_随机点击热点搜索
    随机点击列表元素    //div[@id="hotPush"]/a

I_Z_Home_断言搜索页被打开
    断言text正确    //div[@class="title active goods_totle"]    商品

I_Z_Home_点击搜索页商品名称
    [Arguments]    ${goods_name}
    点击元素    //div[@class="text"]/a[@title="${goods_name}"]

I_Z_Home_点击搜索页商品立即购买
    [Arguments]    ${goods_name}
    点击元素    //a[@title="${goods_name}" and text()='立即购买']

I_Z_Home_鼠标移动到查看全部
    鼠标移动在元素上    //a[text()='查看全部']
