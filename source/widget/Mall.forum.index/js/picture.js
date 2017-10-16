(function ($) {
    $.Tupload = {
        fileNum: 0,
        uploadFile:[],
        options:null,
        init:function(defaults){
            this.options = defaults;
            this.fileNum = defaults.fileNum;
            this.createHtml(defaults);
            $(".uploading-img li").mouseenter(function(){
                $(this).find(".uploading-tip").stop().animate({height:'25px'},200);
            });
            $(".uploading-img li").mouseleave(function(){
                $(this).find(".uploading-tip").stop().animate({height:'0'},200);
            });
            this.photoImg();
        },
        photoImg:function(){
            var photoImgH = $('.uploading-imgBg').height();
            var ImgH = $('.uploading-imgBg img').height();
            if(ImgH>photoImgH){
                $('.uploading-imgBg img').addClass('cur');
            }else{
                $('.uploading-imgBg img').removeClass('cur');
            }
        },
        createHtml:function(defaults){
            var fileNum=defaults.fileNum, title = defaults.title,divId = defaults.divId,accept=defaults.accept;
            var html = "";
            if(fileNum<0&& fileNum==null){
                fileNum = 5;
            }

            html += 	'<div class="uploading-imgInput">';
            html += 		'<div class="andArea">';
            html += 			'<div class="filePicker"></div>';
            html += 			'<input id="fileImage" name="fileImage" type="file" multiple accept='+accept+'>';
            html += 		'</div>';
            html += 	    '<p><strong>图片</strong>（文件尺寸：<em>小于1MB</em>，可用扩展名：<em>jpg,jpeg,gif,png</em>、最多<em>9张</em>）</p>';
            html += 	'</div>';

            html += '<div class="uploading-img"  style="display: none">';
            html += 	'<input type="hidden" id="fileNum" value="0">';

            html += 	'<ul>';
            for(var i=0;i<fileNum;i++){
                html += '<li>';
                html += '<div class="uploading-imgBg">';
                html += 	'<img id="img_src'+i+'" class="upload_image" src="../../static/img/white-arrow.png"/>';
                html += '</div>';
                html += '<p id="uploadProgress_'+i+'" class="uploadProgress"></p>';
                html += '<p id="uploadTure_'+i+'" class="uploadTrue"></p>';
                html += '<div id="uploading-tip'+i+'" class="uploading-tip" style="display: none">';
                html += 	'<i class="onDelPic" data="'+i+'"></i>';
                html += '</div></li>';

            }
            html += 	'</ul>';
            html += '</div>';

            $("#"+divId).html(html);
        },
        imgLoad:function(i,file){
            var r = new FileReader();
            r.readAsDataURL(file);
            $(r).load(function(){
                while(true){
                    if($("#img_src"+i).attr("src") != "../../static/img/white-arrow.png"){
                        i++;
                    }else{
                        break;
                    }
                }
                arrFile[i] = file;
                $("#img_src"+i).attr("src",this.result);
                $("#uploading-tip"+i).show();
            });
        },
		formUpload:function (i,fileObj,FileController){
			// FormData 对象
		    var form = new FormData();
		    form.append("author", "hooyes");                        // 可以增加表单数据
		    form.append("file", fileObj);                           // 文件对象

		    // XMLHttpRequest 对象
		    var xhr = new XMLHttpRequest();
		    xhr.open("post", FileController, true);
		    xhr.onload = function (data) {
		    	var temp =eval('(' + data.currentTarget.response + ')')
		    	if(temp.fileName != undefined){
		    		$("#img_src"+i).attr('value',temp.fileName);
		    		$("#img_src"+i).attr('name',"upload_img");
		        	$("#uploadProgress_"+i).hide();
		        	$("#uploadTure_"+i).show();
		    	}
		    	arrFile[i] = '';
		    	$.Tupload.onSuccess(data,i);
		    	$("#uploadProgress_"+i).hide();
	        	$("#uploadTure_"+i).show();

		    };
		    xhr.send(form);
		},
		onSuccess:function(data,i){
			return $.Tupload.options.onSuccess(data,i);
		},
        onDelete:function(i){
            $.Tupload.options.onDelete(i);
            $("#uploadTure_"+i).hide();
            $("#img_src"+i).attr("value","");
            $("#img_src"+i).attr('name',"");
            var num = parseInt($("#fileNum").val())-1;
            $("#fileNum").val(num);
            arrFile[i] = '';
            $("#img_src"+i).attr("src","../../static/img/white-arrow.png");
            $("#uploading-tip"+i).hide();
        }
    }
})(jQuery);
var arrFile = [];
$("#fileImage").live('change',function(){
    var num = parseInt($("#fileNum").val())+parseInt(this.files.length);

    if(num < $.Tupload.fileNum+1){
        $("#fileNum").val(num);
        for(var i=0;i<num;i++){
            for(var j=0;j<num;j++){
                if($("#img_src"+j).attr("src") == "../../static/img/white-arrow.png"){
                    if(this.files.length-1 < i){
                        break;
                    }else{
                        $.Tupload.imgLoad(i,this.files[i]);
                        break;
                    }
                }
            }

        }
    }else{
        alert("只能上传"+$.Tupload.fileNum+"张");
    }
})
$("#uploadFile").live('click',function(){
    console.log($('#commentValue').val())

    for(var i=0;i<arrFile.length;i++){
        if($("#uploadTure_"+i).css("display") == 'none'){
			if(arrFile[i] != '' && arrFile[i] != undefined){
				$("#uploadProgress_"+i).show();
			}
		}

		if(arrFile[i] != undefined && arrFile[i] != ""){
			var fileObj = arrFile[i]; // js 获取文件对象
		    var FileController = $.Tupload.options.url; // 接收上传文件的后台地址
            $.Tupload.formUpload(i,fileObj,FileController);
		}


	}

});
$(".onDelPic").live('click',function(){
    $.Tupload.onDelete($(this).attr("data"));
})