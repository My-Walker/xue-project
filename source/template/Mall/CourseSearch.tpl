<!-- 公共头部 -->
<link rel="import" href="../Layer/layer.Mall.head.tpl?__inline">

<!-- 学习中心区域 -->
<div class="container">
   <!-- <ol id="module-breadcrumb" class="breadcrumb">
        <li><a href="#">课程分类</a></li>
        <li class="active">三年级</li>
    </ol> -->
    <div class="row top ">
        <!--   12栏的用这个    -->
        <div class="col-md-12">
            <link rel="import" href="../../widget/Public.searchFilter/index.tpl?__inline">
        </div>
        <!--   12栏结束    -->
        <!--   左右分栏的用这个    -->
        <div class="col-md-12">

            <!-- *********************** 内容区域开始 *********************** -->
            <ul class="screen-rank mt0">
                <li class="popular-rank">综合</li>
                <li>学员数</li>
                <li>价格<img src="../../widget/Mall.FindTeacher/img/down.png"></li>
            </ul>
            <div class="search_tips">
                <p>根据关键字“<span>张瑾</span>”搜素,为您匹配到12条结果</p>
            </div>
            <div class="panel panel-default ">
                <div class="panel-body pd0 wd110">
                     <link rel="import" href="../../widget/Public.Module/course08.tpl?__inline">
                      <link rel="import" href="../../widget/Public.Module/course08.tpl?__inline">
                      <link rel="import" href="../../widget/Public.Module/course08.tpl?__inline">
                       <link rel="import" href="../../widget/Public.Module/course08.tpl?__inline">
                      <link rel="import" href="../../widget/Public.Module/course10.tpl?__inline">
                      <link rel="import" href="../../widget/Public.Module/course09.tpl?__inline">
                   
                </div>
            </div>

            <!-- *********************** 内容区域结束 *********************** -->
        </div>
<!--
        <div class="col-md-2 col-sm-2 wrap-side wrap-mall pull-right">
            <div class="panel panel-default ">
                <div class="panel-body sideright-body pd0 mt0">
                	<div class="sideright-hotcourse">
                		<h3 class='search-rank-title'>搜索排行</h3>
                        <ul class="search-rank-list">
                            <li><label class="search-rank-first">1</label><a href="##">数学花园密探</a></li>
                            <li><label class="search-rank-first">2</label><a href="##">数学花园密探</a></li>
                            <li><label class="search-rank-first">3</label><a href="##">数学花园密探</a></li>
                            <li><label>4</label><a href="##">数学花园密探</a></li>
                            <li><label>5</label><a href="##">数学花园密探</a></li>
                            <li><label>6</label><a href="##">数学花园密探</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
-->
        <!--    左右分栏结束    -->
        
    </div><!-- row end -->
    
    <div class="ui-pages text-center"></div>
</div>
<!-- 页面配置 -->
<script>
var PAGE_CONFIG = {
    ID: 'Index',
    MODULE: 'Mall',
    TITLE: '二级-课程搜索页',
        NAV_FIXED: false // 如果想要头部分类展开的话，设为true，如果不想直接展开设为false
    };
    $('.ui-pages').pages({
            total : 29, // 总记录数
            size: 10, // 每页显示记录数
            index : 1, // 当前页
            // 点击分页时的回调，返回被点击的页数
            click : function(e){
             
            }
        });
    $(function(){
        $('.ui_follow').follow();
    });
    </script>

    

    <!-- 公共底部 -->
    <link rel="import" href="../Layer/layer.Mall.foot.tpl?__inline">
