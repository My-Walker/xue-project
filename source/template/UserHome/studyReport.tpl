<!DOCTYPE html>
<html>

<head>
    <title>学习中心</title>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" name="viewport">
</head>
<body class="body-bgColor">

<link rel="import" href="../../widget/UserHome.report/index.tpl?__inline">
    <link rel="stylesheet" type="text/css" href="http://lib01.xesimg.com/lib/bootstrap/3.3.5-custom/css/bootstrap.min.css">

<script src="http://lib01.xesimg.com/lib/bootstrap/3.3.5-custom/js/bootstrap.min.js"></script>
<script>
	var app = new Vue({
	  el: '#fullpage',
	  data: {
	    stuInfo_headImg: '',
	    stuInfo_name: '',
	    catalogName: '',
	    isHaveEnglishInfo: '',//是否有英语信息
	    isHavePictureBook: '',//是都有绘本
	    englishInfo_cumulativeSpeak:'',
	    englishInfo_thisSpeak: '',
	    englishInfo_cumulativeBook: '',
	    comment_testMsg: [],//点评黄色星星个数数组
	    comment_testGrayStarNum: [],
	    comment_testStarNum: '',
	    comment_homeworkStarNum: [],
	    comment_homeworkGrayStarNum: [],
	    comment_homeworkMsg: '',
	    //课前测
	    isHaveBeforeCourseTest: '',
	    beforeCourseTest_stuScore: '',
	    beforeCourseTest_averageRate: '',
	    beforeCourseTest_average: '',
	    beforeCourseH5_stuScore: '',
	    beforeCourseH5_averageRate: '',
	    beforeCourseH5_average: '',
	    // 互动题
	    interactiveTest_isJoinPlan: '',
	    interactiveTest_teacherName: '',
	    interactiveTest_testCnt: '',
	    interactiveTest_stuRate: '',
	    interactiveTest_averageRate: '',
	    interactiveTest_rightNum: '',
	    interactiveTest_wrongNum: '',
	    interactiveTest_noAnswerNum: '',
	    // 互动游戏
	    interactiveGame_teacherName: '',
	    interactiveGame_gameCnt: '',
	    interactiveGame_stu:'',
	    interactiveGame_stuRate:'',
	    //出门考
	    isHaveAfterCourseTest:'',
	    afterCourseTest_typeName:'',
	    afterCourseTest_stu: '',
	    afterCourseTest_stuRate: '',
	    afterCourseTest_averageScore: '',
	    afterCourseTest_average: '',
	    //出门考2
	    outCourseTest_typeName: '',
	    outCourseTest_stuRate: '',
	    outCourseTest_stu: '',
	    outCourseTest_averageRate: '',
	    outCourseTest_average: '',
	    //上课详情
	    courseDetail_type:'',
	    courseDetail_testList: '',
	    // 直播错题
	    isHaveWrongTest: '',
	    WrongTestDetail: '',
	    // 随堂测
	    homework_status: '',
	    homework_showMsg: '',
	    homework_stuScore: '',
	    homework_averageRate: '',
	    homework_rightNum: '',
	    homework_rightRate: '',
	    homework_wrongNum: '',
	    homework_wrongRate: '',
	    homework_wrongStatusMsg: '',
	    homework_totalNum: '',

	    // 绘本
	    pictureBook_averageScore: '',
	    pictureBook_isCompleted: '',
	    //课程评价
	    quesUrl_isShowQues: '',
	    quesUrl_quesUrl: ''
  },
  methods:function() {
    
  },
  mounted: function(){
    
  }
});
$(function(){
    $('[data-toggle="popover"]').popover({
        content: 1111
    });


})
</script>


</body>

</html>




