
<!--
    
    @require ../../lib/fullPage/jquery.fullPage.css
	@require report.less
    @require ../../lib/jQuery/1.11.1/jquery.min.js
    @require ../../lib/fullPage/jquery.fullPage.js
    @require ../../lib/jQuery/1.11.1/jquery.slimscroll.min.js
    
    @require circle_JT.js
    @require report.js 

-->


<!-- 随堂测 -->
<div id="fullpage" class="studyReport study_course_end">
	<div class="section section-1">
		<h1 class="report_page_title">随堂测<p>Homework Score</p></h1>
        <p class="report_page_title_detail">XX同学，老师已经批改完你的随堂测啦。</p>
        <div class="pre_class_test">
            <div class="dom_inner">   
                <p><span>56</span>分</p>
                <p>随堂测得分</p>
                <p>平均正确率56%</p>                 
            </div>
            <div class="Circle_wrap">
                <canvas  width="200" height="200" class="Circle_cancvs" data-value="40"></canvas>
            </div>
        </div>
        <div class="for_test_canvas_wrap">
            <div class="for_test_canvas margin_right26">
                 <canvas  width="128px" height="128px" data-color="#a1ffa1" class="canvasSamll" data-value="40"></canvas>
                 <div class="for_test_canvas_dot for_test_canvas_dot_first">
                     
                 </div>
                 <img src="img/check_true.png" alt="">
                 <div class="for_test_canvas_inner">
                     <p>7</p>
                     <p>正确题目</p>
                 </div>   
            </div>
            <div class="for_test_canvas">
                 <canvas width="128px" height="128px" data-color="#ff5a5a" class="canvasSamll" data-value="100"></canvas>
                 <div class="for_test_canvas_dot">
                     
                 </div>
                 <img src="img/check_false.png" alt="">
                 <div class="for_test_canvas_inner">
                     <p>7</p>
                     <p>错误题目</p>
                     <p>待改错</p>
                 </div> 
            </div>
        </div>
		<div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
	</div> 
<!-- 能力细分 -->
    <div class="section section-2">
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
    </div>
<!-- 绘本阅读 -->
    <div class="section section-3">
        <h1 class="report_page_title">绘本阅读<p>Picture Books</p></h1>
        <div class="pre_class_test">
            <div class="dom_inner">   
                <p><span>90</span>分</p>
                <p>绘本跟读平均分</p>               
            </div>
            
            <div class="Circle_wrap">
                <canvas width="200" height="200" class="Circle_cancvs" data-value="90"></canvas>
            </div>
        </div>
        <div class="monkey_check">
            <img src="img/smile_monkey.png" alt="">
            <p>已完成本次课的绘本阅读！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>

<!-- 结束页 -->
    <div class="section-8 section">
        <img src="img/share1.png" alt="">
        <a href="javasceipt:">点击分享</a>
        <img src="img/logo_share.png" class="logo" alt="">
    </div>
</div>
<div class="cover"></div>



