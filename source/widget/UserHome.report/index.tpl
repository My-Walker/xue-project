
<!--
    
    @require ../../lib/fullPage/jquery.fullPage.css
	@require report.less
    @require ../../lib/jQuery/1.11.1/jquery.min.js
    @require vue.js
    @require ../../lib/fullPage/jquery.fullPage.js
    @require ../../lib/jQuery/1.11.1/jquery.slimscroll.min.js

    @require circle_report.js
    @require report.js
    @require Chart.js
-->



<div id="fullpage" class="studyReport">
	<div class="section section-1 section_top lesson_course_section">
		<img class="title_report" src="img/report_title.png" alt="">
        <div class="box">
            <!--第一行(lineFirst)-->
            <div class="lineF">
                <div class="boxF">
                    <div class="boxS">
                        <div class="boxT" :style="{background: 'url('+stuInfo_headImg+')'}">
                        
                        </div>
                    </div>
                </div>
            </div>   
        </div>
        <p class="report_author">{{stuInfo_name}}</p>
        <div class="title_report_wrap">
                <h4 class="title">
            <span class="top_dot"><img src="img/top_dot.png" alt=""></span>
            <b v-text='catalogName'></b>
            <span class="bottom_dot"><img src="img/bottom_dot.png" alt=""></span></h4>
        </div>
            <ul class="time_total_wrap"  v-show= 'isHaveEnglishInfo ==1'>
                <li >
                    <p><span>{{englishInfo_cumulativeSpeak}}</span>mins</p>
                    <p>累计说英语</p>
                </li>
                <li>
                    <p><span>{{englishInfo_thisSpeak}}</span>mins</p>
                    <p>本讲说英语</p>
                </li>
                <li  v-show = 'isHavePictureBook == 1'>
                    <p><span>{{englishInfo_cumulativeBook}}</span>本
                    </p>
                    <p>累计读绘本</p>
                </li>
            </ul>
        
        <ul class="level_wrap">
             <li>
                <div>
                    <span><img src="img/arrow_white.png" alt=""></span><span>查看课上表现点评</span>
                    <div v-if = 'comment_testMsg == ""' class="level_5">
                        <img v-for="item in comment_testStarNum" src="img/yellow_star.png" alt="">
                        <img v-for="item in comment_testGrayStarNum" src="img/gray_star.png" alt="">
                    </div>
                    <div v-else >
                        本讲缺勤
                    </div>
                </div>
            </li>
             <li>
                <div>
                    <span><img src="img/arrow_white.png" alt=""></span><span>查看课下表现点评</span>
                    <div v-if = 'comment_homeworkMsg == ""' class="level_5">
                        <img v-for="item in comment_homeworkStarNum" src="img/yellow_star.png" alt="">
                        <img v-for="item in comment_homeworkGrayStarNum" src="img/gray_star.png" alt="">
                    </div>
                    <div v-else >
                        本讲缺勤
                    </div>
                </div>
            </li>
        </ul>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
	</div> 
<!-- 课前测1 -->
    <div class="section section-1 lesson_course_section" > 
        <h1 class="report_page_title">课前测<p>Warm-up Test</p></h1>
        <div class="pre_class_test">
             <div class="dom_inner">   
                    <p><span>{{beforeCourseTest_stuScore}}</span>分</p>
                    <p>出门考成绩</p>
                    <p>平均正确率{{beforeCourseTest_averageRate}}</p>                 
                </div>
                <div class="Circle_wrap">
                    <canvas width="176" height="176" class="Circle_cancvs" :data-value="beforeCourseTest_stuScore"></canvas>
                </div>
        </div>
        <div v-if='beforeCourseTest_stuScore < beforeCourseTest_average' class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>看来上节课的知识还需要复习！</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>上节课的知识掌握的很不错哦~</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div> 
<!-- 课前测2 -->
    <div class="section section-1 lesson_course_section"> 
        <h1 class="report_page_title">课前测<p>Warm-up Test</p></h1>
        <div class="pre_class_test">
             <div class="dom_inner">   
                    <p><span>{{beforeCourseH5_stuScore}}</span>分</p>
                    <p>出门考成绩</p>
                    <p>平均正确率{{beforeCourseH5_averageRate}}</p>                 
                </div>
                <div class="Circle_wrap">
                    <canvas width="176" height="176" class="Circle_cancvs" :data-value="beforeCourseH5_stuScore"></canvas>
                </div>
        </div>
        <div v-if='beforeCourseH5_stuScore < beforeCourseH5_average' class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>看来上节课的知识还需要复习！</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>上节课的知识掌握的很不错哦~</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div> 
<!-- 互动题开始 -->
    <div id='isHaveInteractiveTest' class="section section-2 lesson_course_section">
        <h1 class="report_page_title">互动题<a class="homework-wait-submit" data-trigger='hover'  data-toggle="popover" data-placement="bottom" data-content="互动题不包含语音测评题目"></a><p>Interactive Test Items</p></h1>
        <p class="report_page_title_detail">本节课上，{{interactiveTest_teacherName}}老师发布了<span class="dataTal">{{interactiveTest_testCnt}}</span>道互动题</p>
        <div class="pre_class_test ringCanvas_wrap">
            <div v-if='interactiveTest_isJoinPlan == 1' class="dom_inner">   
                <p><span>{{interactiveTest_stuRate}}</span></p>
                <p>你的正确率</p>
                <p>平均正确率{{interactiveTest_averageRate}}</p>                 
            </div>
            <div v-else class="dom_inner dom_inner_uncourse">
                <p><span>直播缺勤</span></p>
                <p>平均正确率{{interactiveTest_averageRate}}</p>                 
            </div>
            <div class="Circle_wrap">
                <canvas id="ringCanvas" :data-true="interactiveTest_rightNum" :data-unDo='interactiveTest_noAnswerNum' :data-error="interactiveTest_wrongNum"  class="ringCanvas" width="176" height="176"></canvas>
            </div>
        </div>
        <ul class="ringCanvas_legend">
            <li><span></span><span>答对</span><span>{{interactiveTest_rightNum}}</span></li>
            <li><span></span><span>答错</span><span>{{interactiveTest_wrongNum}}</span></li>
            <li><span></span><span>未作答</span><span>{{interactiveTest_noAnswerNum}}</span></li>
        </ul>
        <template v-show ='interactiveTest_isJoinPlan == 1'>
            <div v-if='interactiveTest_stuRate < interactiveTest_averageRate' class="monkey_check">
                <img src="img/cry_monkey.png" alt="">
                <p>还有知识需要巩固，一定要认真做随堂测呀！</p>
            </div>
            <div v-else class="monkey_check">
                <img src="img/smile_monkey.png" alt="">
                <p>表现很不错，随堂测也要加油哦~</p>
            </div>
        </template>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 互动游戏开始 -->
    <div class="section section-3 lesson_course_section">
        <h1 class="report_page_title">互动游戏<p>Interactive Game</p></h1>
        <p class="report_page_title_detail">本节课上，{{interactiveGame_teacherName}}老师发布了<span>{{interactiveGame_gameCnt}}</span>次互动游戏</p>
        <div class="pre_class_test">
                <div class="dom_inner">   
                    <p><span>{{interactiveGame_stuRate}}</span></p>
                    <p>出门考成绩</p>               
                </div>
                
                <div class="Circle_wrap">
                    <canvas  width="176" height="176" class="Circle_cancvs" :data-value="interactiveGame_stu"></canvas>
                </div>
        </div>
        <div v-if='interactiveGame_stu >= 60' class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 出门考开始 -->
    <div id='isHaveAfterCourseTest' class="section section-4 lesson_course_section">
        <h1 class="report_page_title">{{afterCourseTest_typeName}}<p>Summary Test</p></h1>
        <div class="pre_class_test">
            <div id="dom">
                <div class="dom_inner">   
                    <p><span>{{afterCourseTest_stuRate}}</span></p>
                    <p>出门考成绩</p>
                    <p>平均正确率{{afterCourseTest_averageScore}}</p>                 
                </div>
                
                <div class="Circle_wrap">
                    <canvas width="176" height="176" class="Circle_cancvs" :data-value="afterCourseTest_stu"></canvas>
                </div>
            </div>
        </div>
        <div v-if='afterCourseTest_stuRate > afterCourseTest_average' class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>本节课的知识掌握的很不错哦~</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>做随堂测之前建议复习一下本讲内容！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 出门考2开始 -->
    <div class="section section-4 lesson_course_section">
        <h1 class="report_page_title">{{outCourseTest_typeName}}<p>Summary Test</p></h1>
        <div class="pre_class_test">
            <div id="dom">
                <div class="dom_inner">   
                    <p><span>{{outCourseTest_stuRate}}</span></p>
                    <p>出门考成绩</p>
                    <p>平均正确率{{outCourseTest_averageRate}}</p>                 
                </div>
                
                <div class="Circle_wrap">
                    <canvas width="176" height="176" class="Circle_cancvs" :data-value="outCourseTest_stu"></canvas>
                </div>
            </div>
        </div>
        <div v-if='outCourseTest_stu > outCourseTest_average' class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>本节课的知识掌握的很不错哦~</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>做随堂测之前建议复习一下本讲内容！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 上课详情 -->
    <div  class="section section-4 lesson_course_section">
        <h1 class="report_page_title">上课详情<p>Class Details</p></h1>
        <div class="timeline clearfix">
            <div class="headBall"></div>
            <div class="item clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p v-if='courseDetail_type == 1' class="message">
                    进入直播间
                </p>
                <p v-else='courseDetail_type == 2' class="message">
                    进入直播回放
                </p>
            </div>
            <div v-for ='item in courseDetail_testList' class="item clearfix">
                <span class="time">{{item.anwserTime}}</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span v-if="item.answerType == 1" class="not">未</span>
                    <span v-else-if='item.answerType == 2' class="wrong">错</span>
                    <span v-else class="right">对</span>
                    {{item.testName}}，用时{{item.anwserLongTime}}，班内其他同学平均用时{{item.averageTime}}
                </p>
            </div>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>

    <!-- 直播错题 -->
    <div id="isHaveWrongTest"  class="section section-6 lesson_course_section">
        <h1 class="report_page_title">直播错题<a class="homework-wait-submit" data-trigger='hover'  data-toggle="popover" data-placement="bottom" data-content="课上发布的测试题目（如果前测）请在学习中心错题本中查看"></a><p>Wrong Test Items</p></h1>
        <div class="liveWrong">
            <div v-for = "item in WrongTestDetail" class="item">
                <p>
                    <span class="subjectName">{{item.testName}}</span>
                    <span v-if='item.answerType == 1' class="notComplete">未</span>
                    <span v-else-if='item.answerType == 2' class="mistake">错</span>
                </p>
                <img :src="item.testImgUrl" alt="">
            </div>
            
        </div>
        <div>
            <div class="look_outcourse">
                <img src="img/look_outcourse.png" alt="">
            </div>   
        </div>
    </div>
<!-- 课上内容结束 -->
    <!-- 随堂测 -->
    <div class="section section-1 sourse_end_bg" id="">
        <h1 class="report_page_title">随堂测<p>Homework Score</p></h1>
        <p v-show = 'homework_status ==1' class="report_page_title_detail">{{homework_showMsg}}</p>
        <div class="pre_class_test">
            <div class="dom_inner">   
                <p><span>{{homework_stuScore}}</span>分</p>
                <p>随堂测得分</p>
                <p>平均正确率{{homework_averageRate}}</p>                 
            </div>
            <div class="Circle_wrap">
                <canvas  width="176" height="176" class="Circle_cancvs" :data-value="homework_stuScore"></canvas>
            </div>
        </div>
        <div class="for_test_canvas_wrap">
            <div class="for_test_canvas margin_right26">
                 <canvas  width="128px" height="128px" data-color="#a1ffa1" class="canvasSamll" :data-value="homework_rightRate"></canvas>
                 <div class="for_test_canvas_dot for_test_canvas_dot_first">
                     
                 </div>
                 <img src="img/check_true.png" alt="">
                 <div class="for_test_canvas_inner">
                     <p>{{homework_rightNum}}</p>
                     <p>正确题目</p>
                 </div>   
            </div>
            <div class="for_test_canvas">
                 <canvas width="128px" height="128px" data-color="#ff5a5a" class="canvasSamll" :data-value="homework_wrongRate"></canvas>
                 <div class="for_test_canvas_dot">
                     
                 </div>
                 <img src="img/check_false.png" alt="">
                 <div class="for_test_canvas_inner">
                     <p>{{homework_wrongNum}}</p>
                     <p>错误题目</p>
                     <p>{{homework_wrongStatusMsg}}</p>
                 </div> 
            </div>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div> 
<!-- 能力细分 -->
    <!-- <div class="section section-2 sourse_end_bg">
        <h1 class="report_page_title">能力细分<p>Capacity Evaluation</p></h1>
        <p class="report_page_title_detail">点评文案点评文案点评文案点评文案点评文案点评文案点评文案点评文案</p>
        
        <ul class="evaluation_level">
            <li class="evaluation_level_listening">
                <div class="evaluation_level_avatar"><img src="img/listening_avatar.png" alt=""></div>
                <div class="evaluation_level_detail">
                    <p>Listening</p>
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                </div>
            </li>
            <li class="evaluation_level_speaking">
                <div class="evaluation_level_avatar"><img src="img/speaking_avatar.png" alt=""></div>
                <div class="evaluation_level_detail">
                    <p>Speaking</p>
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                </div>
            </li>
            <li class="evaluation_level_reading">
                <div class="evaluation_level_avatar"><img src="img/reading_avatar.png" alt=""></div>
                <div class="evaluation_level_detail">
                    <p>Reading</p>
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/yellow_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                    <img src="img/gray_star.png" alt="">
                </div>
            </li>
        </ul>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div> -->
<!-- 绘本阅读 -->
    <div  id="isHavePictureBook" class="section section-10 sourse_end_bg">
        <h1 class="report_page_title">绘本阅读<p>Picture Books</p></h1>
        <div class="pre_class_test">
            <div class="dom_inner">   
                <p><span>{{pictureBook_averageScore}}</span>分</p>
                <p>绘本跟读平均分</p>               
            </div>
            
            <div class="Circle_wrap">
                <canvas width="200" height="200" class="Circle_cancvs" :data-value="pictureBook_averageScore"></canvas>
            </div>
        </div>
        <div v-if="pictureBook_isCompleted == 1" class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>已完成本次课的绘本阅读！</p>
        </div>
        <div v-else class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>未完成本次课的绘本阅读！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>

<!-- 结束页 -->
    <div class="section-8 section sourse_end_bg">
        <img src="img/share1.png" alt="">
        <a v-show='quesUrl_isShowQues == 1' :href="quesUrl_quesUrl">课程评价</a>
        <!-- <a href="javasceipt:">点击分享</a> -->
        <img src="img/logo_share.png" class="logo" alt="">
    </div>
</div>
<div class="cover"></div>
<script>

</script>


