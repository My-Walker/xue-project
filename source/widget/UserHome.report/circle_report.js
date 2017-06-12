function drawBigCircle(obj,dataVale){
	var Canvas = $(obj).find('.Circle_cancvs');
	// console.log(Canvas.length)
	// var dataStart = $(obj).siblings('section').find('.Circle_cancvs').data('start');
	// $(obj).siblings('section').find('.Circle_cancvs').data('value',dataStart);
	//var dataVale = Canvas.data('value');
	var ctx =  Canvas[0].getContext('2d');
	ctx.clearRect(0,0,176,176);
	function Circle() {
	    this.radius = 72;    // 圆环半径
	    this.lineWidth = 16;  // 圆环边的宽度
	    this.strokeStyle = 'rgba(255,255,255,0.2)'; //边的颜色
	    this.fillStyle = '#a1ffa1';  //填充色
	    if(dataVale>0){
          this.lineCap = 'round';
	    }else{
	    	this.lineCap = 'butt';
	    }
	    
	}
	 
	Circle.prototype.draw = function(ctx) {
	    ctx.beginPath();
	    ctx.arc(88, 88, this.radius, 0, Math.PI*2, true);  // 坐标为250的圆，这里起始角度是0，结束角度是Math.PI*2
	    ctx.lineWidth = this.lineWidth;
	    ctx.strokeStyle = this.strokeStyle;
	    ctx.stroke();  // 这里用stroke画一个空心圆，想填充颜色的童鞋可以用fill方法
	};
	function Ring(startAngle, percent) {
	    Circle.call(this);
	    this.startAngle = startAngle || -Math.PI/2; //弧起始角度
	    this.percent = percent;  //弧占的比例
	}
	 
	Ring.prototype = Object.create(Circle.prototype);
	 
	Ring.prototype.drawRing = function(ctx) { 
	         var count = 0, that = this, times = 10, // 分十次绘制蓝弧 
	         startAngle = this.startAngle, endAngle = startAngle; // draw background cirle 
	         this.draw(ctx); 
	         var handle = setInterval(function() { 
	            if (count == times - 1) { 
	                clearInterval(handle); 
	            } // angle 
	            ctx.beginPath(); 
	            var anglePerSec = 2 * Math.PI * (that.percent / 100) / times; // 每个间隔滑动的弧度
	            endAngle = startAngle + anglePerSec;
	            ctx.arc(88, 88, that.radius, startAngle, endAngle, false); //这里的圆心坐标要和cirle的保持一致 
	            ctx.strokeStyle = that.fillStyle; 
	            ctx.lineCap = that.lineCap; 
	            ctx.stroke();
	            ctx.closePath(); 
	            startAngle += anglePerSec; 
	            count++; 
	        }, 60); // 这里定义每60ms绘制一次 
	    }
	    // var dataVale = Canvas.eq(i).data('value')
	    var ring = new Ring(0, dataVale);  // 从2*Math.PI/3弧度开始，进度为50%的环
	    ring.drawRing(ctx);

	
}

function drawRingCanvas(){
	/**画默认圆**/
	var ringCanvas = document.getElementById('ringCanvas');
	var ctx =  ringCanvas.getContext('2d');
	ctx.clearRect(0,0,176,176);
	var dataTal = Number($('.report_page_title_detail span.dataTal').text());
	var dataError = Number($("#ringCanvas").data('error'))/dataTal*100;//红色百分比
	
	var dataTrue = Number($("#ringCanvas").data('true'))/dataTal*100;// 绿色的弧度
	var dataUnDo = Number($("#ringCanvas").data('undo'))/dataTal*100;
	console.log('答对'+dataError +'答错'+dataTrue+'未答'+dataUnDo)
	var percentError = dataError + dataTrue;// 红色的弧度
	var startAngle = startAngle || -Math.PI/2; //弧起始角度
	ctx.beginPath();
    //设置弧线的颜色为蓝色
    ctx.strokeStyle = "rgba(255,255,255,0.2)";
    ctx.lineWidth = 16;
    ctx.lineCap ='round';
    var circle = {
        x : 88,    //圆心的x轴坐标值
        y : 88,    //圆心的y轴坐标值
        r : 72 ,    //圆的半径
    };
    //以canvas中的坐标点(100,100)为圆心，绘制一个半径为50px的圆形
    ctx.arc(circle.x, circle.y, circle.r, 0, Math.PI * 2, true);    
    //按照指定的路径绘制弧线
    ctx.stroke();

    // 画第一条黄色圆
    console.log(dataUnDo)
	if(dataUnDo != 0){

	    ctx.strokeStyle = "#faff6d";
	    ctx.arc(circle.x, circle.y, circle.r, 0, Math.PI * 2, true); 
	    ctx.stroke();
	}

	// 画第一条红色弧线
	ctx.beginPath();
	var anglePerSecRed = 2 * Math.PI / (100 / percentError); // 红色的弧度
	ctx.arc(circle.x, circle.y, circle.r, startAngle, startAngle+anglePerSecRed, false); //这里的圆心坐标要和cirle的保持一致
	ctx.strokeStyle = "#ff5a5a";
    ctx.lineCap ='round';
	ctx.stroke();
	ctx.closePath();

	var count = 0, times = 10, startAngle = startAngle, endAngle = startAngle;
	// var handle = setInterval(function(){
	// 	if(count == times - 1){
	// 		clearInterval(handle);
	// 	}
	// 	ctx.beginPath();
	// 	var anglePerSec = 2 * Math.PI * (percentError/ 100) / times; // 每个间隔滑动的弧度
	// 	endAngle = startAngle + anglePerSec;
	// 	ctx.arc(circle.x, circle.y, circle.r, startAngle, endAngle, false); //这里的圆心坐标要和cirle的保持一致
	// 	ctx.strokeStyle = "#ff5a5a";
	//     ctx.lineCap ='round';
	// 	ctx.stroke();
	// 	ctx.closePath();
 //        startAngle += anglePerSec; 
 //        count++; 
	// },60);


 // 画第一条弧线绿色
    ctx.beginPath();
	var anglePerSec = 2 * Math.PI / (100 / dataTrue); // 绿色的弧度
	ctx.arc(circle.x, circle.y, circle.r, startAngle, startAngle+anglePerSec, false); //这里的圆心坐标要和cirle的保持一致
	ctx.strokeStyle = "#a1ffa1";
    ctx.lineCap ='round';
	ctx.stroke();
	ctx.closePath();
	if(dataUnDo > 0){
		// 画一个黄色小圆
		var circleMini = {
	        x : 88,    //圆心的x轴坐标值
	        y : 16,    //圆心的y轴坐标值
	        r : 0.3,    //圆的半径
	    };
		ctx.beginPath();
		ctx.strokeStyle = "#faff6d";
	    ctx.arc(circleMini.x, circleMini.y, circleMini.r, 0, Math.PI * 2, true); 
	    ctx.stroke();
	}else if(dataUnDo == 0 && percentError !=0 && percentError < 100){
		console.log(percentError)
		// 画一个红色小圆
		var circleMini = {
	        x : 88,    //圆心的x轴坐标值
	        y : 16,    //圆心的y轴坐标值
	        r : 0.3,    //圆的半径
	    };
		ctx.beginPath();
		ctx.strokeStyle = "#ff5a5a";
	    ctx.arc(circleMini.x, circleMini.y, circleMini.r, 0, Math.PI * 2, true); 
	    ctx.stroke();
	}

}

function drawSmallCircle(obj,dataVale){
	/**画小圆**/
	var canvasSamll = $(obj).find('.canvasSamll');
	for(var i=0;i<canvasSamll.length;i++){
		var ctx =  canvasSamll[i].getContext('2d');
		ctx.clearRect(0,0,128,128);
			var fillStyleColor = canvasSamll.eq(i).data('color');
			function CircleSamll() {
			    this.radius = 60;    // 圆环半径
			    this.lineWidth = 6;  // 圆环边的宽度
			    this.strokeStyle = 'rgba(255,255,255,0.2)'; //边的颜色
			    this.fillStyle = fillStyleColor;  //填充色
			    if(dataVale>0){
		          this.lineCap = 'round';
			    }else{
			    	this.lineCap = 'butt';
			    }
			    if(dataVale == 0){
			    	$('.for_test_canvas_dot').eq(i).css('display','none');
			    }
			}
			 
			CircleSamll.prototype.draw = function(ctx) {
			    ctx.beginPath();
			    ctx.arc(this.radius + this.lineWidth/2, this.radius + this.lineWidth/2, this.radius, 1.7*Math.PI, Math.PI*1.3, false);  // 坐标为250的圆，这里起始角度是0，结束角度是Math.PI*2
			    ctx.lineWidth = this.lineWidth;
			    ctx.strokeStyle = this.strokeStyle;
			    ctx.stroke();  // 这里用stroke画一个空心圆，想填充颜色的童鞋可以用fill方法

			     // ctx.fillStyle = "#FF0000"  
		                
			};
			
			function RingSamll(startAngle, percent) {
				if(dataVale>0){
		          this.lineCap = 'round';
			    }else{
			    	this.lineCap = 'butt';
			    }
			    CircleSamll.call(this);
			    // ringCircleSamll.call(this);
			    this.startAngle = startAngle || -Math.PI/2; //弧起始角度
			    this.percent = percent;  //弧占的比例
			}
			 
			RingSamll.prototype = Object.create(CircleSamll.prototype);
			 
			RingSamll.prototype.drawRing = function(ctx) { 
				     var minCircle = $('.for_test_canvas_dot').eq(i);
					 var count = 0, that = this, times = 10, // 分十次绘制蓝弧 
					 startAngle = this.startAngle, endAngle = startAngle; // draw background cirle 
					 this.draw(ctx); 
					 var handle = setInterval(function() { 
					 	if (count == times - 1) { 
					 		clearInterval(handle); 
					 	} // angle 
					 	ctx.beginPath(); 
					 	var anglePerSec = 1.6 * Math.PI * (that.percent / 100) / times; // 每个间隔滑动的弧度
					 	// 旋转角度
					 	// var angleRotate = (180*anglePerSec)/(Math.PI*60);
					 	// console.log(angleRotate)
					 	endAngle = startAngle + anglePerSec;
					 	// console.log(that.percent/times)
					 	// console.log(30+3*that.percent/times*count)
					 	minCircle.css({
					    	'transform':'rotate('+ (30+(3*that.percent/times*(count+1))) +'deg)'
					    })
					    ctx.arc(that.radius + that.lineWidth/2, that.radius + that.lineWidth/2, that.radius, startAngle, endAngle, false); //这里的圆心坐标要和cirle的保持一致 
					    ctx.strokeStyle = that.fillStyle; 
					    ctx.lineCap = that.lineCap; 
					    ctx.stroke();
					    ctx.closePath(); 
					    startAngle += anglePerSec; 
					    count++; 
					}, 60); // 这里定义每60ms绘制一次 
				}

				var dataVale = canvasSamll.eq(i).data('value')
			    var ringSamll = new RingSamll(1.7*Math.PI, dataVale);  // 从2*Math.PI/3弧度开始，进度为50%的环
				    ringSamll.drawRing(ctx);	

	}
	
}








function interactCircle(){
	var ctx = document.getElementById("ringCanvas");
    var myDoughnutChart = new Chart(ctx, {
        type: 'doughnut',
            data: {
                 labels: [
                    "Red",
                    "Blue",
                    "Yellow"
                ],
                datasets: [
                    {
                        data: [60, 20, 50],
                        backgroundColor: [
                            "#a1ffa1",
                            "#ff5a5a",
                            "#faff6d"
                        ],
                        hoverBackgroundColor: [
                            "#a1ffa1",
                            "#ff5a5a",
                            "#faff6d"
                        ]
                    }]
            },
            options: {
                responsive: true,
                legend: {
                    position: 'bottom',
                    display: false
                },
                title: {
                    display: false,
                    // text: 'Chart.js Doughnut Chart',
                },
                segmentStrokeWidth : 0,
                animation: {
                    animateScale: true,
                    animateRotate: true
                },
                cutoutPercentage: 80
            }
    }); 
}

