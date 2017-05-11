$(function(){
	/**常规大圆**/
	// drawBigCircle();
	// drawSmallCircle();			
})	
function drawBigCircle(){
	var Canvas = $('.Circle_cancvs');
	for(var i=0;i<Canvas.length;i++){
		console.log(i)
		var dataVale = Canvas.eq(i).data('start');
		var ctx =  Canvas[i].getContext('2d');
			function Circle() {
			    this.radius = 68;    // 圆环半径
			    this.lineWidth = 16;  // 圆环边的宽度
			    this.strokeStyle = 'rgba(255,255,255,0.2)'; //边的颜色
			    this.fillStyle = '#a1ffa1';  //填充色
			    this.lineCap = 'round';
			}
			 
			Circle.prototype.draw = function(ctx) {
			    ctx.beginPath();
			    ctx.arc(76, 76, this.radius, 0, Math.PI*2, true);  // 坐标为250的圆，这里起始角度是0，结束角度是Math.PI*2
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
					    ctx.arc(76, 76, that.radius, startAngle, endAngle, false); //这里的圆心坐标要和cirle的保持一致 
					    ctx.strokeStyle = that.fillStyle; 
					    ctx.lineCap = that.lineCap; 
					    ctx.stroke();
					    ctx.closePath(); 
					    startAngle += anglePerSec; 
					    count++; 
					}, 60); // 这里定义每60ms绘制一次 
				}
				 var dataVale = Canvas.eq(i).data('value')
			    var ring = new Ring(0, dataVale);  // 从2*Math.PI/3弧度开始，进度为50%的环
				ring.drawRing(ctx);

	}	
	/**画小圆**/
	var canvasSamll = $('.canvasSamll');
	for(var i=0;i<canvasSamll.length;i++){
		var ctx =  canvasSamll[i].getContext('2d');
		var fillStyleColor = canvasSamll.eq(i).data('color');
		function CircleSamll() {
		    this.radius = 60;    // 圆环半径
		    this.lineWidth = 6;  // 圆环边的宽度
		    this.strokeStyle = 'rgba(255,255,255,0.2)'; //边的颜色
		    this.fillStyle = fillStyleColor;  //填充色
		    this.lineCap = 'round';
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
if(window.addEventListener){
    window.addEventListener("hashchange", function(){
    	drawBigCircle();
    },false);
}else if(window.attachEvent){
    window.attachEvent("hashchange", function(){
    	drawBigCircle();
    });
}

