<!--
    @require css/index.less
    @require css/slider.css
-->
<div class="forum-main">
    <div id="demo01" class="flexslider forum-banner">
        <ul class="slides">

            <li><div class="img"><img src="img/indexBanner1.png" width="100%" alt="" /></div></li>

            <li><div class="img"><img src="img/indexBanner1.png" width="100%" alt="" /></div></li>

            <li><div class="img"><img src="img/indexBanner1.png" width="100%" alt="" /></div></li>

            <li><div class="img"><img src="img/indexBanner1.png" width="100%" alt="" /></div></li>

        </ul>
    </div>

    <div class="index-content">
        <ul class="index-model-first">
            <li>
                <a href=""><img src="img/indexIcon1.png" alt=""><p>魔幻奥数社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon2.png" alt=""><p>哈皮语文社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon3.png" alt=""><p>ABC英语社</p></a>
            </li>
        </ul>
        <ul class="index-model-second">
            <li>
                <a href=""><img src="img/indexIcon4.png" alt=""><p>满分数学社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon5.png" alt=""><p>博学语文社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon6.png" alt=""><p>流利英语角</p></a>
            </li>
        </ul>
        <ul class="index-model-third">
            <li>
                <a href=""><img src="img/indexIcon7.png" alt=""><p>理科活动社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon8.png" alt=""><p>文科活动社</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon9.png" alt=""><p>初中英联邦</p></a>
            </li>
        </ul>
        <ul class="index-model-fourth">
            <li>
                <a href=""><img src="img/indexIcon10.png" alt=""><p>理科生联盟</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon11.png" alt=""><p>文科生联盟</p></a>
            </li>
            <li>
                <a href=""><img src="img/indexIcon12.png" alt=""><p>高中英联邦</p></a>
            </li>
        </ul>
    </div>

    <div class="index-footer">
        <p>技术交流社</p>
    </div>
</div>

<script type="text/javascript" src="js/slider.js"></script>

<script type="text/javascript">

    $(function(){

        $('#demo01').flexslider({

            animation: "slide",

            direction:"horizontal",

            easing:"swing"

        });

    });
   /* animation: "slide", //转换方式 fade淡入淡出 slide滚动
        direction:"horizontal", //滚动方向 horizontal左右 vertical上下
        slideshowSpeed: 3000, //停留时间
        directionNav: true, //是否显示左右控制按钮 true&false
        controlNav: true, //是否显示下方控制按钮 true&false
        mousewheel: false, //是否允许鼠标控制滚动 true&fals*/
</script>

