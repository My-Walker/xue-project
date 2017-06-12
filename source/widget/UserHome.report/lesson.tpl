
<!--
    @require ../../lib/fullPage/jquery.fullPage.css
    @require report.less
    @require ../../lib/jQuery/1.11.1/jquery.min.js
    @require ../../lib/fullPage/jquery.fullPage.js
    @require ../../lib/jQuery/1.11.1/jquery.slimscroll.min.js
    
    @require vue.js
    @require circle_JT.js
    @require Chart.js
    @require report.js

-->


<!-- 课前测开始 -->
<div id="fullpage" class="studyReport study_course">
    <div class="section section-1">
        <h1 class="report_page_title">课前测<p>Warm-up Test</p></h1>
        <div class="pre_class_test">
            
                <div class="dom_inner">   
                    <p><span>56</span>分</p>
                    <p>出门考成绩</p>
                    <p>平均正确率56%</p>                 
                </div>
                <div class="Circle_wrap">
                    <canvas width="200" height="200" class="Circle_cancvs" data-value="40"></canvas>
                </div>
        </div>
        <div class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div> 
<!-- 互动题开始 -->
    <div class="section section-2">
        <h1 class="report_page_title">互动题<p>Interactive Test Items</p></h1>
        <p class="report_page_title_detail">本节课上，Joanna老师发布了<span>8</span>道互动题</p>
        <div class="pre_class_test ringCanvas_wrap">
            <div class="dom_inner">   
                <p><span>56</span>分</p>
                <p>出门考成绩</p>
                <p>平均正确率56%</p>                 
            </div>
            
            <div class="Circle_wrap">
                <canvas id="ringCanvas" ></canvas>
            </div>
        </div>
        <ul class="ringCanvas_legend">
            <li><span></span><span>答对</span><span>2</span></li>
            <li><span></span><span>答错</span><span>4</span></li>
            <li><span></span><span>未作答</span><span>4</span></li>
        </ul>
        <div class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 互动游戏开始 -->
    <div class="section section-3">
        <h1 class="report_page_title">互动游戏<p>Interactive Game</p></h1>
        <p class="report_page_title_detail">本节课上，Joanna老师发布了<span>8</span>次互动游戏</p>
        <div class="pre_class_test">
            <div id="dom">
                <div class="dom_inner">   
                    <p><span>56</span>分</p>
                    <p>出门考成绩</p>               
                </div>
                
                <div class="Circle_wrap">
                    <canvas  width="200" height="200" class="Circle_cancvs" data-value="40"></canvas>
                </div>
           </div>
        </div>
        <div class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 出门考开始 -->
    <div class="section section-4">
        <h1 class="report_page_title">出门考<p>Summary Test</p></h1>
        <div class="pre_class_test">
            <div id="dom">
                <div class="dom_inner">   
                    <p><span>56</span>分</p>
                    <p>出门考成绩</p>
                    <p>平均正确率56%</p>                 
                </div>
                
                <div class="Circle_wrap">
                    <canvas width="200" height="200" class="Circle_cancvs" data-value="40"></canvas>
                </div>
            </div>
        </div>
        <div class="monkey_check">
            <img src="img/cry_monkey.png" alt="">
            <p>还有知识需要巩固哦，一定要认真做随堂测呀！</p>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>
<!-- 上课详情 -->
    <div class="section section-4">
        <h1 class="report_page_title">上课详情<p>Class Details</p></h1>
        <div class="timeline clearfix">
            <div class="headBall"></div>
            <div class="item clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    进入直播间
                </p>
            </div>
            <div class="item clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span class="right">对</span>
                    互动题1，用时30min，班内其他同学平均用时50min
                </p>
            </div>
            <div class="item clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span class="wrong">错</span>
                    互动题1，用时30min，班内其他同学平均用时50min
                </p>
            </div>
             <div class="item  clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span class="not">未</span>
                    互动题1，用时30min，班内其他同学平均用时50min
                </p>
            </div>
             <div class="item  clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span class="not">未</span>
                    互动题1，用时30min，班内其他同学平均用时50min
                </p>
            </div>
            <div class="item  clearfix">
                <span class="time">09:00</span>
                <div class="line">
                    <div class="ball"></div>
                </div>
                <p class="message">
                    <span class="not">未</span>
                    互动题1，用时30min，班内其他同学平均用时50min
                </p>
            </div>
        </div>
        <div class="arrow-animation">
            <div class="arrow"></div>
            <p>向上滑动</p>      
        </div>
    </div>

    
   
    <div class="section section-6">
        <h1 class="report_page_title">直播错题<p>Wrong Test Items</p></h1>
        <div class="liveWrong">
            <div class="item">
                <p>
                    <span class="subjectName">互动题1</span>
                    <span class="notComplete">未</span>
                </p>
                <img src="img/subject.png" alt="">
            </div>
            <div class="item">
                <p>
                    <span class="subjectName">互动题2</span>
                    <span class="mistake">错</span>
                </p>
                <img src="img/subject.png" alt="">
            </div>
            <div class="item">
                <p>
                    <span class="subjectName">互动题1</span>
                    <span class="mistake">错</span>
                </p>
                <img src="img/subject.png" alt="">
            </div>
            <div class="item">
                <p>
                    <span class="subjectName">互动题2</span>
                    <span class="notComplete">未</span>
                    
                </p>
                <img src="img/subject.png" alt="">
            </div>
        </div>
        <div>
            <a href="courseed.html" class="look_outcourse">
                <img src="img/look_outcourse.png" alt="">
            </a>   
        </div>
    </div>
</div>
<div class="cover"></div>



