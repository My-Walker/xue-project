<!--
    @require User.less
-->
<div class="forum-user">
    <div class="forum-user-basic">
        <img src="img/userHead.png" alt="头像">
        <h3>屠龙宝刀</h3>
        <ul>
            <li class="my-collection"><a href="">我的收藏</a></li>
            <li class="my-evaluate"><a href="">我的评论<em>1</em></a></li>
            <li class="my-browse-log"><a href="">浏览记录</a></li>
        </ul>
    </div>
</div>

<script type="text/javascript">
    //用户模块定位
    function userModel() {
        if(window.scrollY > 133){
            var right = (document.body.clientWidth - 1190)/2 + "px";
            $(".forum-user").css({"position": "fixed","right":right,"top":"3px"});
        }else {
            $(".forum-user").css({"position": "absolute","right":0,"top":"0px"});
        }
    }
    $(window).scroll(function(){
        userModel()
    });

    $(window).resize(function(){
        userModel()
    });

</script>