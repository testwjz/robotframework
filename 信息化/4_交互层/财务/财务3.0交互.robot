*** Settings ***
Documentation     新认款管理
Resource          ../../5_SeleniumLibrary扩展层/公共关键字扩展.robot

*** Keywords ***
切换发起认款iframe
    切换iframe    finance/payment/payment_index.html

点击发起认款
    [Arguments]    ${订单编号}    # 输入订单编号进行认款
    输入信息搜索    //input[@id="keyWords"]    //td[@data-dt-row ]/a[text()='认款']    //button[@id="searchButton"]    ${订单编号}
    点击元素    //td[@data-dt-row ]/a[text()='认款']
    Unselect Frame

切换认款录入iframe
    切换iframe    finance/payment/payment_apply.html?id

点击成本调整
    点击元素    //input[@id="checkCost"]
    Sleep    1

输入收据编号
    [Arguments]    ${收据编号}
    输入元素    //input[@id="receiptNo"]    ${收据编号}

输入入账时间
    [Arguments]    ${入账时间}=2019-10-09 00:00:00    # 默认为：2019-10-09 00:00:00，可以自定义输入
    输入元素    //input[@id="entryTime"]    ${入账时间}

输入到账日期
    [Arguments]    ${到期日期}=2019-10-18    # 默认值2019-10-18，可以自定义输入，格式为yyyy-MM-dd
    输入元素    //input[@id="receiveTime"]    ${到期日期}

财务选择付款方式
    [Arguments]    ${付款方式}=ORF_SK_PATHERINGTYPE_FKFS_1    # 默认现金付款方式：ORF_SK_PATHERINGTYPE_FKFS_1
    [Documentation]    ORF_SK_PATHERINGTYPE_FKFS_1：现金
    ...    ORF_SK_PATHERINGTYPE_FKFS_2：POS
    ...    ORF_SK_PATHERINGTYPE_FKFS_3：二维码
    ...    ORF_SK_PATHERINGTYPE_FKFS_4：支付宝
    ...    ORF_SK_PATHERINGTYPE_FKFS_5：微信
    ...    ORF_SK_PATHERINGTYPE_FKFS_6：公对公转账
    ...    ORF_SK_PATHERINGTYPE_FKFS_7：公对私转账
    ...    ORF_SK_PATHERINGTYPE_FKFS_8：内部结转
    ...    ORF_SK_PATHERINGTYPE_FKFS_9：私对公转账
    ...    ORF_SK_PATHERINGTYPE_FKFS_10：私对私转账
    ...    ORF_SK_PATHERINGTYPE_FKFS_11：银联二维码
    ...    ORF_SK_PATHERINGTYPE_FKFS_12：网关支付
    Wait Until Element Is Visible    //select[@id="paymentGatheringType"]
    Select From List By Value    //select[@id="paymentGatheringType"]    ${付款方式}

输入认款金额
    [Arguments]    ${认款金额}
    输入元素    //input[@id="gatheringAmount"]    ${认款金额}

选择到款类型
    [Arguments]    ${到款类型}=ORF_SK_NATURE_5    # 默认定金：ORF_SK_NATURE_5
    [Documentation]    <option value="ORF_SK_NATURE_3">中期款</option>
    ...    <option value="ORF_SK_NATURE_4">尾款</option>
    ...    <option value="ORF_SK_NATURE_2">首期款</option>
    ...    <option value="ORF_SK_NATURE_1">全款</option>
    ...    <option value="ORF_SK_NATURE_5">定金</option>
    ...    <option value="ORF_SK_NATURE_6">风险金</option>
    Wait Until Element Is Visible    //select[@id="nature"]
    Select From List By Value    //select[@id="nature"]    ${到款类型}

选择主体公司区域
    [Arguments]    ${区域}=北京    # 默认为北京，只需要填写区域拼音首字母大写
    点击元素    //span[@id="select2-receiptUnitArea-container"]
    点击元素    //li[text()='${区域}']

选择主体公司
    [Arguments]    ${index}=0    # 主体公司下拉列表获取，默认获取第一个，若要获取其他，则只改变下标即可
    Sleep    1
    点击元素    //span[@id="select2-receiptUnit-container"]
    ${list}    获取元素列表    //li[@class="select2-results__option"]
    点击元素    ${list}[${index}]

选择结算类型
    [Arguments]    ${结算类型}=1    # 默认1：跨业态结算
    [Documentation]    <option value="1">跨业态结算</option>
    ...    <option value="2">本业态结算</option>
    Wait Until Element Is Visible    //select[@name="isAcross"]
    Select From List By Value    //select[@name="isAcross"]    ${结算类型}

选择结算事业部
    [Arguments]    ${结算事业部}=成都会计事业部    # 默认为成都会计事业部，可以自定义额外指定
    点击元素    //span[contains(@id,'select2-isAcrossSyb')]
    输入元素    //input[@type="search"]    ${结算事业部}
    点击元素    //li[text()="${结算事业部}"]

提交审核
    点击元素    //button[text()="提交审核"]
    Unselect Frame

切换待成控审核认款iframe
    切换iframe    finance/payment/check_pending_ck_payment.html

成控审核认款
    [Arguments]    ${订单编号}
    输入信息搜索    //input[@placeholder="客户名称/订单编号"]    //td[@data-dt-row]/a[text()='审核']    //button[@onclick="reloadTable();"]    ${订单编号}
    点击元素    //td[@data-dt-row]/a[text()='审核']
    Unselect Frame

切换待审核认款iframe
    切换iframe    finance/payment/check_pending_payment.html

审核认款
    [Arguments]    ${订单编号}
    输入信息搜索    //input[@placeholder="客户名称/订单编号"]    //td[@data-dt-row]/a[text()='审核']    //button[@onclick="reloadTable();"]    ${订单编号}
    点击元素    //td[@data-dt-row]/a[text()='审核']
    Unselect Frame

切换认款详情iframe
    切换iframe    finance/payment/payment_detail.html?id

审核通过
    点击元素    //button[text()='审核通过']
    点击元素    //a[text()='确定']
    Unselect Frame
