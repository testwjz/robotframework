*** Settings ***
Suite Setup       F_Z_Home_打开浏览器并断言    ${home_url}
Suite Teardown    关闭浏览器
Test Teardown
Resource          ../../2_流程层/智企平台/F_Z_Home.robot
Resource          ../../3_页面层/智企平台/P_Z_Home.robot

*** Test Cases ***
1输入商品名称进行搜索
    F_Z_Home_输入商品名称进行搜索    ${goods_name}

2随机点击热点搜索
    F_Z_Home_随机点击热点搜索

3输入商品名称进行搜索后点击商品名称
    F_Z_Home_输入商品名称进行搜索后点击商品名称    ${goods_name}

4输入商品名称进行搜索后点击立即购买
    F_Z_Home_输入商品名称进行搜索后点击立即购买    ${goods_name}
