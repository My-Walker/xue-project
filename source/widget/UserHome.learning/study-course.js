/**
 * 
 * @authors Your Name (you@example.org)
 * @date    2015-10-27 18:15:14
 * @version $Id$
 */
var xue = xue || {};
var study = study || {};
var briefTab = $('.list-title-tabs li');
var briefBox = $('.scrolls-item');
// 大概切换效果
study.briefToggle = function (index) {
        var index = index || 1;
        briefTab.eq(index - 1).addClass('current').siblings().removeClass('current');
        $('#outline' + index).show().siblings().hide();
        // 切换大纲的时候需要重新计算下隐藏部分的高度
        $('#outline1').jScrollPane();
        $('#outline2').jScrollPane();
    }

//发布看点
var $btnSub = $('#btnSubmitFocus');
var $one = $('.lookFocusShow');
var $two = $('.lookFocusPush');
function FocusPushItem(){
    if ($btnSub.hasClass('btn_disabled')) {
        return false;
    }else{
        $one.hide();
        $two.show();  
        $btnSub.hide(); 
    }
}
//转换时间
 function formatTime(s) {
      var t;
      if (s > -1) {
        hour = Math.floor(s / 3600);
        min = Math.floor(s / 60) % 60;
        sec = s % 60;
        day = parseInt(hour / 24);
        if (day > 0) {
          hour = hour - 24 * day;
          t = day + "day " + hour + ":";
        } else t = hour + ":";
        if (min < 10) {
          t += "0";
        }
        t += min + ":";
        if (sec < 10) {
          t += "0";
        }
        t += sec;
      }
      return t;
    }
//parameters:false/true关闭评论和显示评论接口
function showLookFocus(parameters){
  var that = $('.lookFocusItem');
   if (parameters !== 'ture') {
        that.hide();
   };
   if(parameters !== 'false'){
       that.show();
   };
  
}
function showTimeSubTitle(content,time_point,create_name,id){
  var $con =$('.focusCon'),
      $name = $con.find('.name'),
      $text = $con.find('.text'),
      $reply = $con.find('a.js_reply');
       $name.text(create_name);
       $('<em>：</em>').appendTo($name)
       $text.html(content);
        setTimeout(function() {
           $name.empty();
           $text.empty();
           $reply.hide();
        }, 4600);
    if ($('.focusCon .text').text().length > 0) {
        $reply.show();
    } else {
        $reply.hide();
    }
  //回复
  $('body').on('click', '.js_reply', function() {
      FocusPushItem();
      var c = formatTime(time_point);
      $('.lookFocusPush').find('.timeEnd').text('0'+c).attr('alt',time_point);
      $con.attr('alt',id);
  });  
}
//发布评价
$('body').on('click', '#btnSubmitFocus', function() {
    FocusPushItem()
    var a = $('#EncryptPlayer')[0];
    var b = a.videoPlayingTime();
    var c = formatTime(b);
    $('.lookFocusPush').find('.timeEnd').text('0'+c).attr('alt',b);
    $('.focusCon').removeAttr('alt');
});
$('body').on('mouseenter','#btnSubmitFocus',function() {
    var that = $(this),
        _left = that.offset().left + (that.width() / 2),
        _top = that.offset().top + that.height(),
        _html = $('.contentTxt').html();
     xue.win({
            id : 'focusTips',
            title : false,
            arrow : 'bl',
            follow : that,
            content : _html,
            lock : false,
            close : false,
            submit : false,
            cancel : false
        });
      var _tips = $('#xuebox_focusTips');
        _tips.css({
            'position': 'absolute'
        });
        // 设置弹窗定位
        xue.win('focusTips').position(_left - (_tips.width() / 3), _top - 100);

});
$('body').on('mouseleave', '#btnSubmitFocus', function(){
        if($('#xuebox_focusTips').length > 0){
             xue.win('focusTips').close();
        }
    });

//取消发布
$('body').on('click', '.lookFocusPush .btn_cancel', function() {
     $btnSub.show(); 
     $one.show();
     $two .hide();  
});

//提交 
$('body').on('click', '.lookFocusPush .btn_submit', function(event) {
    var that = $(this);
    var _con = $.trim(that.prev('input.inputText').val());
    var _len =_con.length;
    var _err = $('.errorTips');
    function tipsErr(){
        setTimeout(function() {
           _err.hide();
        }, 3000);
    }
     if (_len == 0) {
            _err.show().text('少年,什么也不写无法发布哦！');
            tipsErr();
            return false;
      }
      if (_len <= 4) {
            _err.show().text('少年,请至少输入5个字哦！');
            tipsErr();
            return false;
      }
      if (_len > 40) {
            _err.show().text('少年,请不要超过40个字哦！');
            tipsErr();
            return false;
      }
      var $mask = $('<div class="form_submiting"></div>');
       $mask.css({
              width : that.outerWidth(),
              height: that.outerHeight(),
              left  : that.offset().left,
              top  : that.offset().top,
              background : '#fcfcfc',
              opacity : 0.3,
              filter : 'alpha(opacity=30)',
              zIndex:100000
          });
       if($('.form_submiting').length !== 0){
            $mask.prependTo('body');
        }
        //通过验证以后，使用ajax进行提交数据，成功后返回
        if (_con !== '请输入看点，(5-40个字)') {
                  ajaxHighlight();
        }else{
           _err.show().text('少年,什么也不写无法发布哦！');
            tipsErr();
            return false;
        };
});

$(function () {
    // 大纲头部绑定切换效果
    briefTab.off('click', 'a').on('click', 'a', function () {
        var _tab = $(this).parent('li'),
            _index = _tab.index();
        study.briefToggle(_index + 1);
    });
     //签到提示 start
    function showAlert(){
        var dom = $('#sign_in_data').data('value');
        var _day = Number(dom.days),
            _gold= Number(dom.gold),
            _nextgold = Number(dom.nextGold),
            _nextdays = Number(dom.nextDays),
            _rewardGold= Number(dom.rewardGold);
             // 成功后的提一条提示：奖励10金币
            tpl = '<p class="tp">今日签到成功！获得<strong>'+ _gold +'</strong>金币</p>';
            // 当额外奖励 > 0时出现下面的第二条信息
            if(_nextgold > 0){
                tpl += '<p>再连续签到<strong>'+ _nextdays +'</strong>天可额外获得<strong>'+_nextgold+'</strong>金币！</p>';
            }else{
                tpl += '<p>连续签到<strong>'+ _day +'</strong>天，额外获得<strong>'+_rewardGold+'</strong>金币！</p>';
            }
        $('<li id="singInLayer">' + tpl +'</li>').appendTo('.sideSingInItems ul');
         setTimeout(function(){
                $('#singInLayer').remove();
            }, 3000);
    }
     $('body').on('click', '.sideSingInItems ul li.singIn', function(){
        var that = $(this);
        showAlert()
    });
    $('body').on('mouseenter', '.singInFinish', function(){
        var that = $(this);
        showAlert()
    });
     $('body').on('mouseleave', '.singInFinish', function(){
         $('#singInLayer').remove();
     })
     //签到提示 end
});

/**
 * 弹窗做题时的结构：
 *
    <p class="answer" data-id="1" data-type="input">
        <input />
    </p>
    var ans = $('.answer');
    
    ans.each(function(i){
        $(this).data({
            id:i,
            type:'input'
        });
    });
    xue.use('examination', function(){
    var a = xue.getAnswers('.sub_answer:visible');
    });
 *
 *
 * 增加对JSON数据的序列化方法，
 * 主要用于IE6、7不支持JSON对象的浏览器
 */
study.json = study.json || {};
study.json.stringify = function (obj) {
    //如果是IE8+ 浏览器(ff,chrome,safari都支持JSON对象)，使用JSON.stringify()来序列化
    if (window.JSON) {
        return JSON.stringify(obj);
    }
    var t = typeof (obj);
    if (t != "object" || obj === null) {
        // simple data type
        if (t == "string") obj = '"' + obj + '"';
        return String(obj);
    } else {
        // recurse array or object
        var n, v, json = [],
            arr = (obj && obj.constructor == Array);

        // fix.
        var self = arguments.callee;

        for (n in obj) {
            v = obj[n];
            t = typeof (v);
            if (obj.hasOwnProperty(n)) {
                if (t == "string") v = '"' + v + '"';
                else if (t == "object" && v !== null)
                // v = jQuery.stringify(v);
                    v = self(v);
                json.push((arr ? "" : '"' + n + '":') + String(v));
            }
        }
        return (arr ? "[" : "{") + String(json) + (arr ? "]" : "}");
    }
};

study. getAnswers = function (wrap, tp) {
    var box = $(wrap);
    if (box.length == 0) {
        return false;
    }

    var list = box.find('.answer:visible');

    // var error = [], answers = {}, obj = { /*isall: false, answer: {} */};
    var error = [],
        answers = {},
        obj = {};

    list.each(function () {
        var that = $(this),
            data = that.data(),
            id = data.id,
            tp = data.type,
            input = null,
            vals = [];

        if (tp == 'radio' || tp == 'checkbox') {
            input = that.find('a.current');
            if (input.length > 0) {
                input.each(function () {
                    vals.push($(this).data('value'));
                });
            } else {
                error.push(that);
            }
        } else if (tp == 'input') {
            input = that.find('input');
            input.each(function () {
                var v = $.trim($(this).val());
                if (v) {
                    vals.push(v);
                } else {
                    if (v == '') {
                        vals.push('');
                    }
                    error.push(that);
                }
            });
        }
        answers[id] = vals;
    });

    obj.isall = error.length > 0 ? false : true;
    obj.answer = study.json.stringify(answers);
    var data = null,
        vals = null,
        tp = null,
        input = null,
        error = null,
        answers = null;
    //console.log(obj);
    return obj;
};


// 试题中单选/多选绑定点击事件
$('body').on('click', '.answer a', function () {
    var that = $(this);
    if (that.length > 0) {
        var tp = that.data('type');
        // 单选的时候只是移出其他的未选的current
        // 多选的时候如果已选则移出
        if (tp == 'radio') {
            that.addClass('current').siblings('a').removeClass('current');
        } else if (tp == 'checkbox') {
            if (that.hasClass('current')) {
                that.removeClass('current');
            } else {
                that.addClass('current');
            }
        }
    }
});

/* 提交讲测评选项 */
//study.submitAnswers = function  (wrap) {
//    var answers = study.getAnswers(wrap);
//    if (answers.isall) {
//        /* 在这里调用ajax方法,将返回的html放入弹出层就好 */
//        alert('调用后台接口，判断是否正确');
//        
//        var result =   '<div class="class_answer class_test"><div class="class_test_sum"><span>测试结果：答对0题 ， 答错6题。要继续努力啊！</span><ul class="test_more"><li><a href="http://www.xueersi.com/MyCourses/courseStudy/20508-55173-158357/8fcbe725a1c6413a7c66a83bfa76ea34">重学本讲</a></li><li><a href="/LearningCenter/wrongQuestion" target="_blank">去错题本</a></li></ul></div><div class="wrong_list_new"><p class="wrong_list_title">题号：1</p><p><img src="http://x02.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_1.jpg"></p><div class="wrong_list_anwser"><p class="wrong_list_anwser"><span>学员答案：<strong>C</strong></span></p><p><span>正确答案：<strong class="red"> B </strong></span></p></div><p class="wrong_list_knowledge">词汇类-词汇</p><p class="wrong_list_analysis"><img src="http://x02.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_2.jpg"></p></div><div class="wrong_list_new"><p class="wrong_list_title">题号：2</p><p><img src="http://r01.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_3.jpg"></p><div class="wrong_list_anwser"><p class="wrong_list_anwser"><span>学员答案：<strong>C</strong></span></p><p><span>正确答案：<strong class="red">B </strong></span></p></div><p class="wrong_list_knowledge">词汇类-词汇</p><p class="wrong_list_analysis"><img src="http://r03.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_4.jpg"></p></div><div class="wrong_list_new"><p class="wrong_list_title">题号：6</p><p><img src="http://x04.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_11.jpg"></p><div class="wrong_list_anwser"><p class="wrong_list_anwser"><span>学员答案：<strong>C</strong></span></p><p><span>正确答案：<strong class="red"> B </strong> </span></p></div><p class="wrong_list_knowledge">词汇类-词汇</p><p class="wrong_list_analysis"> <img src="http://s02.xesimg.com/test/2014/04/01/PDF1396333751686/pdf_12.jpg"></p></div></div>';
//        $('#chapterTestStart').modal('hide');
//        createModal.show({
//            id: "chapterTestResult",
//            width: "848",
//            title: "本讲测试题",
//            content: result,
//            cls: 'testresult'
//        });
//        $('#chapterTestResult').modal('show');
//    } else {
//        alert('你有未完成的试题');
//    }
//
//}
//
///* 弹出讲测评页面 */
// study.chapterTestStart = function () {
//    var con = '<div class="class_test">\
//    <div class="testcon">\
//      <p class="testcon_title">第1题(填空)</p>\
//      <img src="http://s01.xesimg.com/test/2015/03/02/PDF1425279224614/pdf_1.jpg" alt="">\
//      <p class="answer" data-id="147850" data-type="input">\
//        <span>\
//          <em>填写答案：</em>\
//          <input type="text" data-type="input">\
//        </span>\
//      </p>\
//    </div>\
//    <div class="testcon">\
//      <p class="testcon_title">第2题(单选)</p>\
//      <img src="http://r04.xesimg.com/test/2015/03/02/PDF1425279224614/pdf_3.jpg" alt="">\
//      <p class="answer" data-type="radio" data-id="147851">\
//        <span>\
//          <em>选择答案：</em>\
//          <a data-type="radio" data-value="1" href="###">A</a>\
//          <a data-type="radio" data-value="2" href="###">B</a>\
//          <a data-type="radio" data-value="4" href="###">C</a>\
//          <a data-type="radio" data-value="8" href="###">D</a>\
//        </span>\
//      </p>\
//    </div>\
//    <div class="testcon">\
//      <p class="testcon_title">第5题(多选)</p>\
//      <img src="http://r04.xesimg.com/test/2015/03/02/PDF1425279224614/pdf_9.jpg" alt="">\
//      <p class="answer" data-type="radio" data-id="147854">\
//        <span>\
//          <em>选择答案：</em>\
//          <a data-type="checkbox" data-value="1" href="###">A</a>\
//          <a data-type="checkbox" data-value="2" href="###">B</a>\
//          <a data-type="checkbox" data-value="4" href="###">C</a>\
//          <a data-type="checkbox" data-value="8" href="###">D</a>\
//        </span>\
//      </p>\
//    </div>\
//    <input type="hidden" id="type" value="0">\
//    <a href="###" class="btn btn_red btn_small" onclick="study.submitAnswers(\'.class_test\')">提交答案</a>\
//  </div>';
//    createModal.show({
//        id: "chapterTestStart",
//        width: "848",
//        title: "本讲测试题",
//        content: con,
//        cls: 'testAnswer'
//    });
//    $('#chapterTestStart').modal('show');
//     
//
//}