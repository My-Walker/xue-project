 function getFullPath(obj) {
      console.log(1);
        if (obj) {
            if (window.navigator.userAgent.indexOf("MSIE") >= 1) {
                var imgs = $(' #gImgs');
                try {
                    imgs.each(function () {
                        var that = this,
                                id = that.id,
                                width = $(that).width(),
                                height = $(that).height();
                        $(that).find('span').empty();
                        var newPreview = document.getElementById(id);
                        var imgDiv = document.createElement("div");
                        document.body.appendChild(imgDiv);
                        imgDiv.style.width = width + "px";
                        imgDiv.style.height = height + "px";
                        imgDiv.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod = scale)";
                        imgDiv.filters.item("DXImageTransform.Microsoft.AlphaImageLoader").src = obj.value;

                        $(newPreview).find('span').append(imgDiv);
                    });
                    $('.up_avatar_content').show();
                } catch (e) {		// ie禁用本地路径时
                    $('.up_avatar_content').hide();
                    var btn = $('#loadFile');
                    var filepath = $('.filespath');
                    if (filepath.length > 0) {
                        filepath.html(btn.val());
                    } else {
                        btn.next('.btn_up').after('<span class="filespath">' + btn.val() + '</span>');
                    }
                }

            }
            //firefox
            else {
                if (obj.files) {
                    // 360下不支持window.URL
                    if (!window.URL) {
                        var btn = $('#feedbackImg');
                        var filepath = $('.filespath');
                        if (filepath.length > 0) {
                            filepath.html(btn.val());
                        } else {
                            btn.next('.btn_up').after('<span class="filespath">' + btn.val() + '</span>');
                        }

                    } else {
                        setImg(window.URL.createObjectURL(obj.files.item(0)));
                        return window.URL.createObjectURL(obj.files.item(0));
                    }
                }
                console.log(obj.value);
                setImg(obj.value);
                return obj.value;
            }
            setImg(obj.value);
            return obj.value;
        }

        function setImg(url) {
            var strSrc = $("#feedbackImg").val();
            var pos = strSrc.lastIndexOf(".");
            var lastname = strSrc.substring(pos, strSrc.length);
            if (lastname.toLowerCase() != ".jpg" && lastname.toLowerCase() != ".gif" && lastname.toLowerCase() != ".png" && lastname.toLowerCase() != ".jpeg") {
                $('#feedbackImg').val('');
                alert("您选择的文件类型为" + lastname + "，图片必须为 JPG,GIF,PNG 类型");
                return false;
            }
            $('#gImgs').show();
            $('#gImgs img').attr('src', url);
        }
    }
$(function(){
   
    $('.form-feedback .f-list li').click(function(){
       var that = $(this);
        var _val = that.data('val');
        that.addClass('active').siblings().removeClass('active');
        $('#fListVal').val(_val);
    });
    $('.btnSubmit button').click(function(){
       var _text = $('.f-text textarea').val();
        var _tel = $('.f-phone .phone').val();
        if(_text == ''){
            alert('请写下您的宝贵建议！');
            return false;
        }
         if(_tel == ''){
            alert('请输入手机号！');
            return false;
        }
        $('#form-feedback').submit();
    });
    //反馈完成页5秒倒计时
      function feedbackTimes(){
            var tim = 5;
            var timer = setInterval(function(){
                tim --;
                $('.t-finish-tips em').html(tim);
                if(tim == 0){
                    clearInterval(timer);
                    window.location.href = '//www.xueersi.com/'
                }
            },1000);
      }
    if($('.t-finish-tips').length > 0){
       feedbackTimes();  
    }
    

});