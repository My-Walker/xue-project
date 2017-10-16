<!-- 
    @require live.less
    @require  ../Module.Modal/Modal.js
-->
<div class="select-foreign-teacher">
    <div class="title">
        <span class="col-sm-6">课程绑定卡名称</span>
        <span class="col-sm-3">状态</span>
        <span class="col-sm-3">操作</span>
    </div>
    <div class="item">
        <div class="col-sm-6">第1讲 最新啥都有001</div>
        <div class="col-sm-3"><span class="nonactivated"><img src="http://res12.xesimg.com/i/img/exclaicon.png?v1?18x18" alt="">未激活</span></div>
        <div class="col-sm-3"><span class="gray">去选课</span></div>
    </div>
    <div class="item">
        <div class="col-sm-6">第2讲 最新啥都有001</div>
        <div class="col-sm-3"><span class="nonactivated"><img src="img/exclamation_confirm.png" alt="">已激活</span></div>
        <div class="col-sm-3"><a href="javascript:void(0);" class="j-s-course" data-url="请求地址">去选课</a></div>
    </div>

</div>

<script>
    //去激活
    var selectForeignTeacher = selectForeignTeacher || {};
    selectForeignTeacher.showModal = function(con) {
        var that = $(this);
        createModal.show({
            id: 'selectForeignTeacher',
            width: '750',
            title: "预约直播",
            cls: "selectForeignTeacher aaa ccc",
            content: con
        })
        $('#selectForeignTeacher').modal({
            backdrop: 'static',
            keyboard: false
        })
    };
    var con = '';
    con += '<div class="foreign-teacher-inner">';
    con += '<p class="foreign-teacher-titletips">为了保证孩子的学习效果，选定时间的外教课程前、后会有辅导老师进行直播辅导，跟进孩子的学习。 如某些场次时间不合适，可以选择临时调换至其他时间段上直播课，保证不错过任何一讲！ </p >';
    con += '<p class="foreign-teacher-tips">温馨提示：<span>临时调换的场次无直播辅导，请谨慎选择。</span></p>';
    con += '<p class="foreign-teacher-name">秋季双优外教课Level3</p>';
    con += ' <div class="foreign-teacher-list">';
    con += '<div class="foreign-list-title">';
    con += ' <span class="col-sm-3">上课时间</span>';
    con += ' <span class="col-sm-3">周一</span>';
    con += ' <span class="col-sm-3">周三</span>';
    con += ' <span class="col-sm-3">周四</span>';
    con += '</div>';
    con += '<ul>';
    con += '<li>';
    con += ' <span class="col-sm-3">09:00-09:30</span>';
    con += '<span class="col-sm-3">U1-1</span>';
    con += ' <span class="col-sm-3">U1-1</span>';
    con += '<span class="col-sm-3">U1-1</span>';
    con += '</li>';
    con += '</ul>';
    con += '</div>';
    con += '<p class="foreign-teacher-btn-wrap"><button class="foreign-teacher-btn ajust-course-btn disabled">确定</button></p>';
    con += '</div>';
    $('body').off('click', '.j-s-course').on('click', '.j-s-course', function() {
        selectForeignTeacher.showModal(con)
    });
    // 调课场次调整点击事件
    $('body').off('click', '.foreign-teacher-list li').on('click', '.foreign-teacher-list li', function() {
        var that = $(this);
        var time = that.data('time');
        var name = that.data('name');
        if ($(this).hasClass("active")) {
            $(this).removeClass('active');
            $('.foreign-teacher-inner .ajust-course-btn').addClass('disabled');
        } else {
            $(this).addClass('active').siblings().removeClass('active');
            $('.foreign-teacher-inner .ajust-course-btn').removeClass('disabled');
        }
    })

</script>
