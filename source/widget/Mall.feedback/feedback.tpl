<!--
   咨询反馈页
    @require feedback.less
    @require feedback.js
-->

<div class="feedback-body">
    <!--反馈完成页倒计时跳回首页
<div class="feedback-finish">
    <img src="../Mall.feedback/img/aidou-pic.png" alt="">
    <div class="t-finish-title">反馈成功，感谢您的宝贵意见！</div>
    <div class="t-finish-tips"><em>5</em>秒后自动跳转回首页<a href="//www.xueersi.com/">若不能自动跳转，请点击这里</a></div>
</div>
-->
    <!-- 反馈表单-->
    <form class="form-feedback" id="form-feedback" action="/glorys/uploadGlory" enctype="multipart/form-data" method="POST">
        <div class="f-item">
            <h1><em>*</em>1.您想对那方面提出建议</h1>
            <input id="fListVal" type="hidden" value="1"/>
            <ul class="f-list">
                <li class="active" data-val="1">界面意见</li>
                <li data-val="2">产品意见</li>
                <li data-val="3">操作意见</li>
                <li data-val="4">投诉意见</li>
                <li data-val="5">使用意见</li>
                <li data-val="6">其他意见</li>
            </ul>
        </div>
        <div class="f-item">
            <h1><em>*</em>2.我们存在哪些不足</h1>
            <div class="f-text"><textarea name="" id="" cols="30" rows="10" placeholder="请将您的建议或您遇到的问题告诉我们，我们会认真的听取并及时反馈"></textarea></div>
        </div>
        <div class="f-item">
            <h1 class="three"> 3.如果用图片来说明问题，请上传</h1>
            <div class="input-file-item">
                <span class="input-file-bg"></span>
                <input onchange="getFullPath(this)" type="file" class="input-file" name="feedbackImg" id="feedbackImg" autocomplete="off">
            </div>
            <div id="gImgs">
                <img src="" alt="">
            </div>
        </div>
        <div class="f-item">
            <h1><em>*</em>4.请留下您的信息，以便我们及时反馈</h1>
            <div class="f-phone">联系方式：<input type="text" value="" class="phone" placeholder="请输入手机号" maxlength="11"></div>
        </div>
        <div class="f-item">
            <div class="btnSubmit"><button>提交</button></div>
            <div class="timesOne">我们会在一小时内给您反馈！</div>
        </div>
    </form>
    <!-- 反馈表单完成-->
</div>
