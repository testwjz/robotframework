*** Settings ***
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换商务商机下单iframe
    切换iframe    orf/order200/initOrder.html?dataAuth=1

点击选择商机
    点击元素    //a[@onclick="choiceBusiness()"]

点击新增商机
    点击元素    //a[@onclick="addBusiness()"]

点击抢商机
    点击元素    //a[@onclick="robBusiness()"]

切换选择商机iframe
    切换iframe    orf/order200/choiceBusiness.html?isAdministrative=1

搜索商机
    [Arguments]    ${客户名称/商机所属人}    # 选择商机界面输入客户名称/商机所属人进行搜索
    Wait Until Element Is Visible    //input[@id="keyword"]
    Input Text    //input[@id="keyword"]    ${客户名称/商机所属人}
    Sleep    1
    点击元素    //button[@onclick="reloadTable()"]

选择商机
    [Arguments]    ${商机业态}    # 根据商机业态选择商机
    Sleep    2
    点击元素    //td[@data-dt-row and text()='${商机业态}']/parent::*//input
    Unselect Frame
    切换商务商机下单iframe
    点击元素    //a[text()='确定']
    sleep    3

选择付款方式
    [Arguments]    ${付款方式}
    [Documentation]    先单后款 \ ORF_FKFS_0
    ...    先款后单 \ ORF_FKFS_1
    select选择元素    //select[@name="orderVo.paymentMethod"]    ${付款方式}

选择审核人
    [Arguments]    ${人员名称或工号}    # 先单后款付款方式，选择审核人，根据员工名称和工号进行选择
    选择付款方式    先单后款
    点击元素    //span[@class="select2-selection__placeholder" and text()='请选择人员']
    输入元素    //input[@type="search"]    ${人员名称或工号}
    点击元素    //option[contains(text(),'${人员名称或工号}')]/parent::*

输入客户名称
    [Arguments]    ${客户名称}
    输入元素    //input[@name="orderVo.name" and @type="text"]    ${客户名称}

选择客户角色
    [Arguments]    ${客户角色}=个人
    [Documentation]    个人 \ UC_CUS_TYPE_1
    ...    企业 \ UC_CUS_TYPE_2
    ...    老板 \ UC_CUS_TYPE_3
    select选择元素    //select[@name="orderVo.customerType"]    ${客户角色}

选择业务地区
    [Arguments]    ${业务地区}=北京
    [Documentation]    北京 \ WORK_AREA_BJ
    ...    成都 \ WORK_AREA_CD
    ...    重庆 \ WORK_AREA_CQ
    ...    ……
    select选择元素    //select[@name="orderVo.businessArea"]    ${业务地区}

选择合同类型
    [Arguments]    ${value}
    [Documentation]    0 \ 纸质合同
    ...    1 \ 电子合同
    点击元素    //input[@name="orderVo.contractType" and @value='${value}']

输入纸质合同编号
    [Arguments]    ${contractNo}
    [Documentation]    纸质合同才需要输入合同编号，电子合同需要选择合同编号
    选择合同类型    0
    输入元素    //input[@name="orderVo.contractNo"]    ${contractNo}

选择电子合同
    [Arguments]    ${index}=0    # 根据电子合同列表进行选择，默认获取列表第一个电子合同，若要选择列表其他电子合同，需要对index进行修改
    选择合同类型    1
    点击元素    //button[@id="bindContractBtn"]
    切换iframe    orf/order2/chooseContract.html?businessUserId
    ${element}    获取元素列表    //input[@name="contractId"]
    点击元素    ${element}[${index}]
    Unselect Frame
    切换商务商机下单iframe
    点击元素    //a[text()='确定']

点击添加产品
    点击元素    //em

切换选择产品iframe
    切换iframe    orf/order200/choiceProduct2.html

选择商品
    [Arguments]    ${产品名称}    ${属性模糊名称}    ${区域}=成都    # 根据产品名称和属性模糊名称进行商品搜索
    输入元素    //input[@id="proName"]    ${产品名称}
    span选择元素    ${区域}    companyArea
    点击元素    //button[@onclick="search()"]
    点击元素    //ul[@id='goodsArry']/li[contains(text(),'${属性模糊名称}')][1]
    Unselect Frame
    切换商务商机下单iframe
    点击元素    //a[text()='确定']

输入产品金额
    [Arguments]    ${productAmount}    ${index}=0    # 对产品输入进行，默认对第一个，如果有多个，则需要修改index的值
    ${elements}    获取元素列表    //input[@name="product.productAmount"]
    输入元素    ${elements}[${index}]    ${productAmount}

选择生产所属事业部
    [Arguments]    ${生产所属事业部}
    点击元素    //span[@class="select2-selection__placeholder" and text()='选择生产事业部']
    点击元素    //li[@class="select2-results__option" and text()='${生产所属事业部}']

点击下单
    点击元素    //button[@onclick="saveOrder(1)"]

切换到下单第二步iframe
    Sleep    15
    切换iframe    sc/kjsc/order/orderBusiness/index.html?orderId

选择客户类型
    [Arguments]    ${客户类型}=新公司    # 第二步-基础信息-选择客户类型
    点击元素    //label[contains(text(),'${客户类型}')]/input

输入公司名称
    [Arguments]    ${公司名称}    # 第二步-基础信息-输入公司名称
    输入元素    //input[@id="coName"]    ${公司名称}

输入统一社会信用代码
    [Arguments]    ${统一社会信用代码}    # 第二步-基础信息-输入统一社会信用代码
    输入元素    //input[@id="creditCode"]    ${统一社会信用代码}

输入法人名称
    [Arguments]    ${法人名称}    # 第二步-基础信息-输入法人名称
    输入元素    //input[@id="legalPerson"]    ${法人名称}

地区选择
    [Arguments]    ${省}=北京市    ${城市}=北京市市辖区    ${区}=东城区    # 第二步-基础信息-地区选择，默认选择北京市市辖区东城区
    Sleep    0.2
    Select From List By Value    //select[@id="province"]    ${省}
    Sleep    0.2
    Select From List By Value    //select[@id="city"]    ${城市}
    Sleep    0.2
    Select From List By Value    //select[@id="district"]    ${区}

行业选择
    [Arguments]    ${行业}=商贸    # 第二步-基础信息-行业选择
    点击元素    //label[contains(text(),"${行业}")]/input

纳税性质选择
    [Arguments]    ${纳税性质}=小规模纳税    # 第二步-基础信息-纳税性质选择
    点击元素    //label[contains(text(),"${纳税性质}")]/input

合同起始日期选择
    [Arguments]    ${起始时间}=2019-10-10    ${结束时间}=2019-11-10    # 第二步-业务信息-合同起始日期选择
    JS移除属性readonly(id)    contractBeginTime
    输入元素    //input[@name="contractBeginTime"]    ${起始时间}
    JS移除属性readonly(id)    contractEndTime
    输入元素    //input[@name="contractEndTime"]    ${结束时间}

第二步-点击下单
    点击元素    //a[text()="下单"]

确认订单-暂不选择顾问
    Sleep    1
    点击元素    //input[@id="noid"]
    点击元素    //a[text()='确定']
    点击元素    //a[not(@onclick) and text()='确定']

确认订单-选择顾问
    [Arguments]    ${顾问名称}    # 顾问名称或工号模糊匹配，唯一标识一个顾问
    点击元素    //span[@class="select2-selection__arrow"]
    点击元素    //li[contains(text(),'${顾问名称}')]
    ${顾问名称}
    Sleep    0.5
    点击元素    //a[text()='确定']
    点击元素    //a[not(@onclick) and text()='确定']
    ${/}

确定下单-点击确定
    Sleep    1
    点击元素    //a[text()='确定']

断言成功
    [Documentation]    对整个下单流程进行断言，断言成功
    Wait Until Element Is Visible    //div[@class="layui-layer-content layui-layer-padding"]
    Element Text Should Be    //div[@class="layui-layer-content layui-layer-padding"]    操作成功！

获取订单号
    [Documentation]    在下单结果页面获取刚刚下的订单编号
    切换iframe    orf/order2/order_result.html
    Wait Until Element Is Visible    //div[contains(text(),'订单号')]
    ${order_text}=    Get Text    //div[contains(text(),'订单号')]
    ${order_od}=    Evaluate    "${order_text}".split('：')[1]
    Unselect Frame
    [Return]    ${order_od}
