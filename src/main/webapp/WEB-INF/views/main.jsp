<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"/> 
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

    <title>网上购物系统</title>
    <link rel="stylesheet" href="${ctxStatic}/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="${ctxStatic}/css/sub-menu.css">
    <style>
        .container {
            background: cornsilk;
        }
        .carousel {
            position: relative;
            width: auto;
            display: inline-block;
        }
        .carousel-inner>.item>img{
            width: 100%;
        }
        .row.row-goods{
            margin: 30px 0;
        }
        .row.row-goods img {
            width: 100%;
        }
        .col-md-12.title{
            height: 60px;
            text-align: center;
            line-height: 60px;
            font-size: 28px;
            font-family:"微软雅黑" ;
        }
        .border{
            background: url("images/border.png") no-repeat;
            height: 12px;
        }
        .bor-l{
            padding: 0 0 0 12px;
            background-position: 0 0;
        }
        .bor-r{
            padding: 0 12px 0 0;
            background-position:right -24px;
        }
        .bor-m {
            background: url("images/border.png");
            height: 12px;
            background-position: -12px -12px;
        }
        .k-border{
            padding-top: 24px;
        }
        ul.list-group.list-group-2 {
            width: 83%;
            text-align: right;
        }
        ul.list-group.list-group-2 li {
           background: none;
        }
        ul.list-group.list-group-2 li img{
            width: 100%;
        }

    </style>
</head>
<body>
<!--顶部导航-->
<div id="top-part"></div>
<div id="search-part"></div>

<!--主体内容-->
<div class="container">
    <div class="row">
        <div class="col-md-12" style="height: 43px;background: #f66060">
        </div>
    </div>
    <!--二级菜单、图片轮播-->
    <div class="row">
        <div class="col-md-3">
            <div class="toptitle">
                <a href="sortgoods.html" style="padding-left:30px ;color:#fff;">全部商品分类</a>
            </div>
            <ul class="topmenu" id="topmenu">
                <li><a href="#">服饰、珠宝首饰</a>
                    <div class="submenu">
                        <div class="leftdiv">
                            <dl>
                                <dt><a href="#">女装</a></dt>
                                <dd>
                                    <a href="#">连衣裙</a> <a href="#">蕾丝/雪纺衫</a> <a href="#">衬衫</a> <a href="#">T恤</a>
                                    <a href="#">半身裙</a> <a href="#">休闲裤</a> <a href="#">短裤</a> <a href="#">牛仔裤</a> <a
                                        href="#">针织衫</a> <a href="#">吊带/背心</a> <a href="#">打底衫</a> <a href="#">打底裤</a>
                                    <a href="#">正装裤</a> <a href="#">小西服</a> <a href="#">马甲</a> <a href="#">风衣</a> <a
                                        href="#">羊毛衫</a> <a href="#">羊绒衫</a> <a href="#">短外套</a> <a href="#">棉服</a>
                                    <a href="#">毛呢大衣</a> <a href="#">加绒裤</a> <a href="#">羽绒服</a> <a href="#">皮草</a>
                                    <a href="#">真皮皮衣</a> <a href="#">仿皮皮衣</a> <a href="#">旗袍/唐装</a> <a href="#">礼服</a>
                                    <a href="#">婚纱</a> <a href="#">中老年女装</a> <a href="#">大码女装</a> <a href="#">设计师/潮牌</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">男装</a></dt>
                                <dd>
                                    <a href="#">衬衫</a> <a href="#">T恤</a> <a href="#">POLO衫</a> <a href="#">针织衫</a>
                                    <a href="#">夹克</a> <a href="#">卫衣</a> <a href="#">风衣</a> <a href="#">马甲/背心</a> <a
                                        href="#">短裤</a> <a href="#">休闲裤</a> <a href="#">牛仔裤</a> <a href="#">西服</a> <a href="#">
                                    西裤</a> <a href="#">西服套装</a> <a href="#">真皮皮衣</a> <a href="#">仿皮皮衣</a> <a href="#">羽绒服</a>
                                    <a href="#">毛呢大衣</a> <a href="#">棉服</a> <a href="#">羊绒衫</a> <a href="#">羊毛衫</a>
                                    <a href="#">卫裤/运动裤</a> <a href="#">加绒裤</a> <a href="#">设计师/潮牌</a> <a href="#">唐装/中山装</a>
                                    <a href="#">工装</a> <a href="#">中老年男装</a> <a href="#">大码男装</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">内衣</a></dt>
                                <dd>
                                    <a href="#">文胸</a> <a href="#">睡衣/家居服</a> <a href="#">情侣睡衣</a> <a href="#">文胸套装</a>
                                    <a href="#">少女文胸</a> <a href="#">女式内裤</a> <a href="#">男式内裤</a> <a href="#">商务男袜</a>
                                    <a href="#">休闲棉袜</a> <a href="#">吊带/背心</a> <a href="#">打底衫</a> <a href="#">抹胸</a>
                                    <a href="#">连裤袜/丝袜</a> <a href="#">美腿袜</a> <a href="#">打底裤袜</a> <a href="#">塑身美体</a>
                                    <a href="#">大码内衣</a> <a href="#">内衣配件</a> <a href="#">泳衣</a> <a href="#">秋衣秋裤</a>
                                    <a href="#">保暖内衣</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">服饰配件</a></dt>
                                <dd>
                                    <a href="#">太阳镜</a> <a href="#">光学镜架/镜片</a> <a href="#">防辐射眼镜</a> <a href="#">女士丝巾/围巾/披肩</a>
                                    <a href="#">棒球帽</a> <a href="#">遮阳伞/雨伞</a> <a href="#">遮阳帽</a> <a href="#">领带/领结/领带夹</a>
                                    <a href="#">男士腰带/礼盒</a> <a href="#">防晒手套</a> <a href="#">老花镜</a> <a href="#">袖扣</a>
                                    <a href="#">男士丝巾/围巾</a> <a href="#">装饰眼镜</a> <a href="#">女士腰带/礼盒</a> <a href="#">游泳镜</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">珠宝首饰</a></dt>
                                <dd>
                                    <a href="#">时尚饰品</a> <a href="#">钻石</a> <a href="#">翡翠玉石</a> <a href="#">纯金K金饰品</a>
                                    <a href="#">金银投资</a> <a href="#">银饰</a> <a href="#">水晶玛瑙</a> <a href="#">彩宝</a>
                                    <a href="#">铂金</a> <a href="#">天然木饰</a> <a href="#">珍珠</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#">图书、音像、数字商品</a>
                    <div class="submenu">
                        <div class="leftdiv">
                            <dl>
                                <dt><a href="#">电子书</a></dt>
                                <dd>
                                    <a href="#">免费</a> <a href="#">小说</a> <a href="#">励志与成功</a> <a href="#">婚恋/两性</a>
                                    <a href="#">文学</a> <a href="#">经管</a> <a href="#">畅读VIP</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">数字音乐</a></dt>
                                <dd>
                                    <a href="#">通俗流行</a> <a href="#">古典音乐</a> <a href="#">摇滚说唱</a> <a href="#">爵士蓝调</a>
                                    <a href="#">乡村民谣</a> <a href="#">有声读物</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">音像</a></dt>
                                <dd>
                                    <a href="#">音乐</a> <a href="#">影视</a> <a href="#">教育音像</a> <a href="#">游戏</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">文艺</a></dt>
                                <dd>
                                    <a href="#">小说</a> <a href="#">文学</a> <a href="#">青春文学</a> <a href="#">传记</a> <a
                                        href="#">艺术</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">人文社科</a></dt>
                                <dd>
                                    <a href="#">历史</a> <a href="#">心理学</a> <a href="#">政治/军事</a> <a href="#">国学/古籍</a>
                                    <a href="#">哲学/宗教</a> <a href="#">社会科学</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">经管励志</a></dt>
                                <dd>
                                    <a href="#">经济</a> <a href="#">金融与投资</a> <a href="#">管理</a> <a href="#">励志与成功</a>
                                </dd>
                            </dl>
                            <dl class="fore7">
                                <dt><a href="#">生活</a></dt>
                                <dd>
                                    <a href="#">家教与育儿</a> <a href="#">旅游/地图</a> <a href="#">烹饪/美食</a> <a href="#">时尚/美妆</a>
                                    <a href="#">家居</a> <a href="#">婚恋与两性</a> <a href="#">娱乐/休闲</a> <a href="#">健身与保健</a>
                                    <a href="#">动漫/幽默</a> <a href="#">体育/运动</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">科技</a></dt>
                                <dd>
                                    <a href="#">科普</a> <a href="#">IT</a> <a href="#">建筑</a> <a href="#">医学</a> <a href="#">
                                    工业技术</a> <a href="#">电子/通信</a> <a href="#">农林</a> <a href="#">科学与自然</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">少儿</a></dt>
                                <dd>
                                    <a href="#">少儿</a> <a href="#">0-2岁</a> <a href="#">3-6岁</a> <a href="#">7-10岁</a>
                                    <a href="#">11-14岁</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">教育</a></dt>
                                <dd>
                                    <a href="#">教材</a> <a href="#">中小学教辅</a> <a href="#">考试</a> <a href="#">外语学习</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">其它</a></dt>
                                <dd>
                                    <a href="#">英文原版书</a> <a href="#">港台图书</a> <a href="#">工具书</a> <a href="#">套装书</a>
                                    <a href="#">杂志/期刊</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li><a href="#">家用电器</a>
                    <div class="submenu">
                        <div class="leftdiv">
                            <dl>
                                <dt><a href="#"> 大家电</a></dt>
                                <dd>
                                    <a href="#">平板电视</a> <a href="#">空调</a> <a href="#">冰箱</a> <a href="#">洗衣机</a> <a
                                        href="#">家庭影院</a> <a href="#">DVD</a> <a href="#">迷你音响</a> <a href="#">烟机/灶具</a>
                                    <a href="#">热水器</a> <a href="#">消毒柜/洗碗机</a> <a href="#">酒柜/冷柜</a> <a href="#">家电配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">生活电器</a></dt>
                                <dd>
                                    <a href="#">电风扇</a> <a href="#">冷风扇</a> <a href="#">净化器</a> <a href="#">饮水机</a>
                                    <a href="#">净水设备</a> <a href="#">挂烫机/熨斗</a> <a href="#">吸尘器</a> <a href="#">电话机</a>
                                    <a href="#">插座</a> <a href="#">收录/音机</a> <a href="#">清洁机</a> <a href="#">加湿器</a>
                                    <a href="#">除湿/干衣机</a> <a href="#">取暖电器</a> <a href="#">其它生活电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">厨房电器</a></dt>
                                <dd>
                                    <a href="#">电压力锅</a> <a href="#">电饭煲</a> <a href="#">豆浆机</a> <a href="#">面包机</a>
                                    <a href="#">咖啡机</a> <a href="#">微波炉</a> <a href="#">料理/榨汁机</a> <a href="#">电烤箱</a>
                                    <a href="#">电磁炉</a> <a href="#">电饼铛/烧烤盘</a> <a href="#">煮蛋器</a> <a href="#">酸奶机</a>
                                    <a href="#">电水壶/热水瓶</a> <a href="#">电炖锅</a> <a href="#">多用途锅</a> <a href="#">果蔬解毒机</a>
                                    <a href="#">其它厨房电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">个护健康</a></dt>
                                <dd>
                                    <a href="#">剃须刀</a> <a href="#">剃/脱毛器</a> <a href="#">口腔护理</a> <a href="#">电吹风</a>
                                    <a href="#">美容</a> <a href="#">美发</a> <a href="#">按摩器</a> <a href="#">按摩椅</a> <a
                                        href="#">足浴盆</a> <a href="#">血压计</a> <a href="#">健康秤/厨房秤</a> <a href="#">血糖仪</a>
                                    <a href="#">体温计</a> <a href="#">计步器/脂肪检测仪</a> <a href="#">其它健康电器</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">五金家装</a></dt>
                                <dd>
                                    <a href="#">电动工具</a> <a href="#">手动工具</a> <a href="#">仪器仪表</a> <a href="#">浴霸/排气扇</a>
                                    <a href="#">灯具</a> <a href="#">LED灯</a> <a href="#">洁身器</a> <a href="#">水槽</a> <a
                                        href="#">龙头</a> <a href="#">淋浴花洒</a> <a href="#">厨卫五金</a> <a href="#">家具五金</a>
                                    <a href="#">门铃</a> <a href="#">电气开关</a> <a href="#">插座</a> <a href="#">电工电料</a>
                                    <a href="#">监控安防</a> <a href="#">电线/线缆</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li><a href="#">手机、数码</a>
                </li>
                <li><a href="#">个护化妆</a>
                </li>
                <li><a href="#">电脑、办公</a><span></span>
                    <div class="submenu">
                        <div class="leftdiv">
                            <dl>
                                <dt><a href="#">电脑整机</a></dt>
                                <dd>
                                    <a href="#">笔记本</a> <a href="#">超极本</a> <a href="#">游戏本</a> <a href="#">平板电脑</a>
                                    <a href="#">平板电脑配件</a> <a href="#">台式机</a> <a href="#">服务器/工作站</a> <a href="#">笔记本配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">电脑配件</a></dt>
                                <dd>
                                    <a href="#">CPU</a> <a href="#">主板</a> <a href="#">显卡</a> <a href="#">硬盘</a> <a href="#">
                                    SSD固态硬盘</a> <a href="#">内存</a> <a href="#">机箱</a> <a href="#">电源</a> <a href="#">显示器</a>
                                    <a href="#">刻录机/光驱</a> <a href="#">声卡/扩展卡</a> <a href="#">散热器</a> <a href="#">装机配件</a>
                                    <a href="#">组装电脑</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">外设产品</a></dt>
                                <dd>
                                    <a href="#">鼠标</a> <a href="#">键盘</a> <a href="#">游戏设备</a> <a href="#">U盘</a> <a
                                        href="#">移动硬盘</a> <a href="#">鼠标垫</a> <a href="#">摄像头</a> <a href="#">线缆</a>
                                    <a href="#">电玩</a> <a href="#">手写板</a> <a href="#">外置盒</a> <a href="#">电脑工具</a>
                                    <a href="#">电脑清洁</a> <a href="#">UPS</a> <a href="#">插座</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">网络产品</a></dt>
                                <dd>
                                    <a href="#">路由器</a> <a href="#">网卡</a> <a href="#">交换机</a> <a href="#">网络存储</a>
                                    <a href="#">4G/3G上网</a> <a href="#">网络盒子</a> <a href="#">网络配件</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">办公打印</a></dt>
                                <dd>
                                    <a href="#">打印机</a> <a href="#">一体机</a> <a href="#">投影机</a> <a href="#">投影配件</a>
                                    <a href="#">传真机</a> <a href="#">复合机</a> <a href="#">碎纸机</a> <a href="#">扫描仪</a>
                                    <a href="#">墨盒</a> <a href="#">硒鼓</a> <a href="#">墨粉</a> <a href="#">色带</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">办公文仪</a></dt>
                                <dd>
                                    <a href="#">办公文具</a> <a href="#">文件管理</a> <a href="#">笔类</a> <a href="#">纸类</a>
                                    <a href="#">本册/便签</a> <a href="#">学生文具</a> <a href="#">财务用品</a> <a href="#">计算器</a>
                                    <a href="#">激光笔</a> <a href="#">白板/封装</a> <a href="#">考勤机</a> <a href="#">刻录碟片/附件</a>
                                    <a href="#">点钞机</a> <a href="#">支付设备/POS机</a> <a href="#">安防监控</a> <a href="#">呼叫/会议设备</a>
                                    <a href="#">保险柜</a> <a href="#">办公家具</a>
                                </dd>
                            </dl>
                            <dl>
                                <dt><a href="#">服务产品</a></dt>
                                <dd>
                                    <a href="#">上门服务</a> <a href="#">远程服务</a> <a href="#">电脑软件</a>
                                </dd>
                            </dl>
                        </div>
                    </div>
                </li>
                <li><a href="#">家居、家具、家装、厨具</a>
                </li>
                <li><a href="#">鞋靴、箱包、钟表、奢侈品</a>
                </li>
                <li><a href="#">运动户外</a>
                </li>
                <li><a href="#">汽车用品</a>
                </li>
                <li><a href="#">母婴、玩具乐器</a>
                </li>
            </ul>
        </div>
        <div class="col-md-6">
            <div id="carousel-explorer" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-explorer" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-explorer" data-slide-to="1"></li>
                    <li data-target="#carousel-explorer" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="${ctxStatic}/images/1.jpg" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="${ctxStatic}/images/2.jpg" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                    <div class="item">
                        <img src="${ctxStatic}/images/3.jpg" alt="...">
                        <div class="carousel-caption">
                        </div>
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-explorer" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-explorer" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <div class="col-md-3">
            <ul class="list-group list-group-2">
                <li class="list-group-item"><img src="${ctxStatic}/images/4.jpg" alt=""></li>
                <li class="list-group-item"><img src="${ctxStatic}/images/5.jpg" alt=""></li>
            </ul>
        </div>
    </div>
    <!--第三块，热卖商品-->
    <div class="row row-goods">
        <div class="col-md-12 title">
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 ">热卖商品</div>
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/4.jpg" alt=""></a>
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/5.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/7.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/6.jpg" alt="">
        </div>
    </div>
    <!--第四块，特价商品-->
    <div class="row row-goods">
        <div class="col-md-12 title">
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 ">特价商品</div>
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/4.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/5.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/7.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/6.jpg" alt="">
        </div>
    </div>
    <!--第五块，最新商品-->
    <div class="row row-goods">
        <div class="col-md-12 title">
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-2 ">最新商品</div>
            <div class="col-md-5 ">
                <div class="k-border">
                    <div class="border bor-l">
                        <div class="border bor-r">
                            <div class="bor-m"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/4.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/5.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/7.jpg" alt="">
        </div>
        <div class="col-md-3">
            <img src="${ctxStatic}/images/6.jpg" alt="">
        </div>
    </div>
</div>
<footer>
    <p class="pull-right"><a href="#top-part">回到顶部</a></p>
</footer>
</body>
<script src="${ctxStatic}/js/jquery-1.11.0.min.js"></script>
<script src="${ctxStatic}/dist/js/bootstrap.min.js"></script>
<script type="text/javascript">
    window.onload = function () {
        var Lis = document.getElementById("topmenu").getElementsByTagName("li");
        for (i = 0; i<Lis.length; i++) {
            Lis[i].onmouseover = function () {
                this.className = "lihover";
            }
            Lis[i].onmouseout = function () {
                this.className = "";
            }
        }
    }
</script>
</html>