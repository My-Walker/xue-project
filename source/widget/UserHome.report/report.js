$(function() {
     $.ajax({
         url: '/static/js/report.json',
            type: 'GET',
            dataType: 'json',
            async: false,
            success: function(res) {
                console.log(res)
                //用户信息
                app.stuInfo_headImg = res.stuInfo.headImg;
                app.stuInfo_name = res.stuInfo.name;
                //英语直播课信息，如果么有英语直播信息，改字段为空
                app.isHavePictureBook = res.isHavePictureBook;
                app.isHaveEnglishInfo = res.isHaveEnglishInfo;
                // console.log(app.isHaveEnglishInfo )
                app.catalogName = res.catalogName;
                app.englishInfo_cumulativeSpeak = res.englishInfo.cumulativeSpeak;
                app.englishInfo_thisSpeak= res.englishInfo.thisSpeak;
                app.englishInfo_cumulativeBook = res.englishInfo.cumulativeBook;
                 //第一屏点评
                app.comment_testStarNum = new Array(parseInt(res.comment.testStarNum));//黄色星星数组
                app.comment_testGrayStarNum = new Array(parseInt(5 - Number(res.comment.testStarNum))); //灰色星星数组
                app.comment_testMsg = res.comment.testMsg;
                app.comment_homeworkStarNum = new Array(parseInt(res.comment.homeworkStarNum));//黄色星星数组
                app.comment_homeworkGrayStarNum = new Array(parseInt(5 - Number(res.comment.homeworkStarNum))); //灰色星星数组
                app.comment_homeworkMsg = res.comment.homeworkMsg;
                // 课前测
                app.isHaveBeforeCourseTest = res.isHaveBeforeCourseTest;
                app.beforeCourseTest_stuScore = res.beforeCourseTest.stuScore;
                app.beforeCourseTest_averageRate = res.beforeCourseTest.averageRate;
                app.beforeCourseTest_average = parseInt(res.beforeCourseTest.averageRate);

                //H5课前测试
                app.beforeCourseH5_stuScore = res.beforeCourseH5.stuScore
                app.beforeCourseH5_averageRate = res.beforeCourseH5.averageRate
                app.beforeCourseH5_average = parseInt(res.beforeCourseH5.averageRate)
                // 互动题
                app.isHaveInteractiveTest = res.isHaveInteractiveTest
                app.interactiveTest_isJoinPlan = res.interactiveTest.isJoinPlan;
                app.interactiveTest_teacherName = res.interactiveTest.teacherName;
                app.interactiveTest_testCnt = res.interactiveTest.testCnt;
                app.interactiveTest_stuRate = res.interactiveTest.stuRate;
                app.interactiveTest_averageRate= res.interactiveTest.averageRate;
                app.interactiveTest_rightNum = res.interactiveTest.rightNum;
                app.interactiveTest_wrongNum= res.interactiveTest.wrongNum;
                app.interactiveTest_noAnswerNum = res.interactiveTest.noAnswerNum;
                // 互动游戏
                app.interactiveGame_teacherName = res.interactiveGame.teacherName
                app.interactiveGame_gameCnt = res.interactiveGame.gameCnt
                app.interactiveGame_stuRate = res.interactiveGame.stuRate
                app.interactiveGame_stu = parseInt(res.interactiveGame.stuRate)
                // 出门考
                app.isHaveAfterCourseTest = res.isHaveAfterCourseTest
                app.afterCourseTest_typeName = res.afterCourseTest.typeName
                app.afterCourseTest_stuRate= res.afterCourseTest.stuRate
                app.afterCourseTest_stu = parseInt(res.afterCourseTest.stuRate)
                app.afterCourseTest_averageScore = res.afterCourseTest.averageScore
                app.afterCourseTest_average = parseInt(res.afterCourseTest.averageScore)
                //出门考2
                app.outCourseTest_typeName = res.outCourseTest.typeName
                app.outCourseTest_stuRate = res.outCourseTest.stuRate
                app.outCourseTest_stu = parseInt(res.outCourseTest.stuRate)
                app.outCourseTest_averageRate = res.outCourseTest.averageRate
                app.outCourseTest_average = parseInt(res.outCourseTest.averageRate)

                //上课详情
                app.courseDetail_type = res.courseDetail.type
                app.courseDetail_testList = res.courseDetail.testList

                // 直播错题
                app.isHaveWrongTest = res.isHaveWrongTest
                app.WrongTestDetail = res.WrongTestDetail
                // 随堂测试
                app.homework_status = res.homework.status
                app.homework_showMsg= res.homework.showMsg
                app.homework_stuScore = res.homework.stuScore
                app.homework_averageRate = res.homework.averageRate
                app.homework_rightNum = parseInt(res.homework.rightNum)
                app.homework_wrongNum = parseInt(res.homework.wrongNum)
                app.homework_totalNum = app.homework_rightNum + app.homework_wrongNum 
                // 正确题目率
                app.homework_rightRate = app.homework_rightNum/app.homework_totalNum*100
                // 错误题目率
                app.homework_wrongRate = app.homework_wrongNum/app.homework_totalNum*100
                app.homework_wrongStatusMsg = res.homework.wrongStatusMsg

                // 绘本
                app.pictureBook_averageScore = res.pictureBook.averageScore
                app.pictureBook_isCompleted = res.pictureBook.isCompleted

                // 课程评价
                app.quesUrl_isShowQues = res.quesUrl.isShowQues
                app.quesUrl_quesUrl = res.quesUrl.quesUrl



               // if(app.isHaveBeforeCourseTest == 0){
               //    $('#isHaveBeforeCourseTest').remove();
               // }
               // if(app.isHaveInteractiveTest == 0){
               //    $('#isHaveInteractiveTest').remove();
               // }
               // if(app.isHaveAfterCourseTest == 0){
               //    $('#isHaveAfterCourseTest').remove();
               // }
               // if(app.isHaveWrongTest == 0){
               //    $('#isHaveWrongTest').remove();
               // }
               // if(app.isHavePictureBook == 0){
               //    $('#isHavePictureBook').remove();
               // }
            },
            error: function() {}
     })
    if ($('.studyReport').length == 1) {
        var userAgent = navigator.userAgent; //取得浏览器的userAgent字符串
        var bodyWidth = $('body').width();
        var flag = true;
        var animateFlag = false;

        var lastTime = 0;
        var prefixes = 'webkit moz ms o'.split(' '); //各浏览器前缀

        var requestAnimationFrame = window.requestAnimationFrame;
        var cancelAnimationFrame = window.cancelAnimationFrame;

        var prefix;
        //通过遍历各浏览器前缀，来得到requestAnimationFrame和cancelAnimationFrame在当前浏览器的实现形式
        for (var i = 0; i < prefixes.length; i++) {
            if (requestAnimationFrame && cancelAnimationFrame) {
                break;
            }
            prefix = prefixes[i];
            requestAnimationFrame = requestAnimationFrame || window[prefix + 'RequestAnimationFrame'];
            cancelAnimationFrame = cancelAnimationFrame || window[prefix + 'CancelAnimationFrame'] || window[prefix + 'CancelRequestAnimationFrame'];
        }

        //如果当前浏览器不支持requestAnimationFrame和cancelAnimationFrame，则会退到setTimeout
        if (!requestAnimationFrame || !cancelAnimationFrame) {
            requestAnimationFrame = function(callback, element) {
                var currTime = new Date().getTime();
                //为了使setTimteout的尽可能的接近每秒60帧的效果
                var timeToCall = Math.max(0, 16 - (currTime - lastTime));
                var id = window.setTimeout(function() {
                    callback(currTime + timeToCall);
                }, timeToCall);
                lastTime = currTime + timeToCall;
                return id;
            };

            cancelAnimationFrame = function(id) {
                window.clearTimeout(id);
            };
        }

        //得到兼容各浏览器的API
        window.requestAnimationFrame = requestAnimationFrame;
        window.cancelAnimationFrame = cancelAnimationFrame;

        // $('.section-4 .timeline .item').height((window.innerHeight - 128)/10)

        function myAnimate_Mob() {
            id = requestAnimationFrame(myAnimate_Mob);
            line.css({
                height: '+=2'
            })

            switch (line.height()) {
                case 40:
                    $('.overview .item:eq(0) .pull-left img').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(0) .pull-left .ball').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(0) .pull-right p span').eq(0).animate({
                        opacity: 1,
                    }, speed)

                    break;
                case 70:
                    $('.overview .item:eq(0) .line_1').animate({
                        width: 30
                    }, speed)
                    $('.overview .item:eq(0) .pull-right p span').eq(1).animate({
                        opacity: 1,
                    }, speed)

                    break;
                case (interval == 80 ? 94 : 98):
                    $('.overview .item:eq(0) .line_2').animate({
                        width: '58vw'
                    }, speed)

                    break;
                case (40 + interval):
                    $('.overview .item:eq(1) .pull-left img').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(1) .pull-left .ball').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(1) .pull-right p span').eq(0).animate({
                        opacity: 1,
                    }, speed)
                    break;
                case (70 + interval):
                    $('.overview .item:eq(1) .line_1').animate({
                        width: 30
                    }, speed)
                    $('.overview .item:eq(1) .pull-right p span').eq(1).animate({
                        opacity: 1,
                    }, speed)
                    break;

                case (interval + (interval == 80 ? 94 : 98)):
                    $('.overview .item:eq(1) .line_2').animate({
                        width: '58vw'
                    }, speed)
                    break;
                case (40 + interval * 2):
                    $('.overview .item:eq(2) .pull-left img').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(2) .pull-left .ball').animate({
                        opacity: 1
                    }, speed)
                    $('.overview .item:eq(2) .pull-right p span').eq(0).animate({
                        opacity: 1,
                    }, speed)
                    break;
                case (70 + interval * 2):
                    $('.overview .item:eq(2) .line_1').animate({
                        width: 30
                    }, speed)
                    $('.overview .item:eq(2) .pull-right p span').eq(1).animate({
                        opacity: 1,
                    }, speed)
                    cancelAnimationFrame(id);
                    break;
            }

        }
        function stopAnimation(stop) {
            animateFlag = false;
            if (stop) {
                cancelAnimationFrame(id);
            }

            $('.overview .item .pull-right p span').css({
                opacity: 0
            })
            $('.overview .item .pull-left .line_1,.overview .item .pull-left .line_2').css({
                width: 0
            })
            $('.headBall .line').css({
                height: 0
            })
            $($('.overview .item .pull-left img,.overview .item .pull-left .ball')).css({
                opacity: 0
            })

        }
        /* 全屏滚动效果配置项 */
        // setTimeout(function() {
            $('#fullpage').fullpage({
            anchors: ['page1', 'page2', 'page3', 'page4', 'page5', 'page6', 'page7', 'page8', 'page9', 'page10', 'page11', 'page12', 'page13', 'page14', 'page15'],
            css3: true,
            continuousVertical: false,
            controlArrow: false,
            loopBottom: false,
            touchSensitivity: 1,
            navigation: bodyWidth < 980 ? false : true,
            navigationColor: '#fff',
            scrollOverflow: true,
            afterLoad: function(anchorLink, index) {
                var indexNum = parseInt(index + 1);
                var sectionLength = parseInt($('.lesson_course_section').length)+1;
                $('.level_wrap').find('li').eq(1).click(function() {
                    location.hash = 'page'+sectionLength;
                });
                
                $('.level_wrap').find('li').eq(0).click(function() {
                    location.hash = 'page2';
                });

                $('body').on('click','.look_outcourse',function(){
                   location.hash = 'page'+ indexNum;
                });
                // var _this = this;
                // if($(_this).siblings('.section').length >0){
                //     for (var i=0;i<$(_this).siblings('.section').length;i++) {
                //         var otherCanvas = $(_this).siblings('.section').eq(i).find('.Circle_cancvs');
                //         if(otherCanvas.length>0){
                //              drawBigCircle($(_this).siblings('.section').eq(i),0)
                //              //otherCanvas[0].getContext('2d').clearRect(0,0,200,200);

                //         }
                //     }
                    
                // }
               
                if($(this).find('.Circle_cancvs').length !=0){
                    var dataVale = Number($(this).find('.Circle_cancvs').data('value'));
                    // console.log(dataVale)
                    drawBigCircle(this,dataVale)
                    
                };
                if($(this).find('.canvasSamll').length !=0){
                    for(var i=0;i<$(this).find('.canvasSamll').length;i++){
                        var dataVale = $(this).find('.canvasSamll').eq(i).data('value');
                        drawSmallCircle(this,dataVale)
                    }
                };
                if($(this).find('#ringCanvas').length !=0){
                    drawRingCanvas();
                }
                // interactCircle();
                // switch (index) {
                //     case 1:
                //         stopAnimation(false)
                //         break;
                //     case 2:
                //         myAnimate_Mob();
                //         break;
                //     case 3:
                //         stopAnimation(false)
                //         break;
                // }
            },
            onLeave: function(index) {
                // switch (index) {
                //     case 2:
                //         stopAnimation(true)
                //         break;
                // }
            }
        });
        // }, 80)


        var line = $('.headBall .line');
        var lineH = line.height();
        var speed = 500;
        var interval = 90;
        if ($('.fp-tableCell').height() <= 568) {
            interval = 80;
        }
        // $('.section-6 img,.section-7 img').css({
        //     height: $('body').height() * 0.32//0.23
        // })

        /* 适配Mac本 */

        if (userAgent.indexOf('Mac OS X') > 0 && bodyWidth > 768) {
            $('body ').addClass('mac')
        }
        /* 图片点击放大效果 */
        $('body').on('click','.section-6 .item img', function(){
            console.log(111)
            $('.cover').html(' ')
            $(this).clone().css({
                // height: $('body').height() * 0.8,
                marginTop: -$('body').height() * 0.28
            }).appendTo($('.cover'))

            $('.cover').fadeIn().on('click', function() {
                $('.cover').fadeOut().html(' ')
                $(this).off('click')
            })
        })
        $('body').on('click','.section-7 .item img', function() {
            $('.cover').html(' ')
            $(this).clone().css({
                // height: $('body').height() * 0.8,
                marginTop: -$('body').height() * 0.28
            }).appendTo($('.cover'))
            $('.cover').fadeIn().on('click', function() {
                $('.cover').fadeOut().html(' ')
                $(this).off('click')
            })
        })



        $('body').on('click', '.cover .close', function() {
            $('.cover').hide().removeClass('tab')
        })

    }
})