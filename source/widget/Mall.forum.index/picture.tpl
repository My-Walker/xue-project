<!--
    @require css/index.less
-->
<div class="up-form-div">
    <p class="face">表情</p>

    <div id="T_upload">
    </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/picture.js"></script>
<script type="text/javascript">
    $(function() {
        var md = "product";
        var pid = "asdasdasdasdasd";
        $.Tupload.init({
            url: "product/uploadImage2?md=" + md + "&pid=" + pid,
            title	  : "图片（文件尺寸：小于1MB，可用扩展名：jpg,jpeg,gif,png、最多9张）",
            fileNum: 9, // 上传文件数量
            divId: "T_upload", // div  id
            accept: "image/jpg,image/jpeg,image/gif,image/x-png", // 上传文件的类型
            //fileSize  :51200000,     // 上传文件的大小
            onSuccess: function(data, i) {
                var temp =eval('(' + data.currentTarget.response + ')')
                 if(temp.fileName != undefined){
                 $("#img_src"+i).attr('value',temp.fileName);
                 $("#img_src"+i).attr('name',"upload_img");
                 }
            },
            onDelete: function(i) {
                var img_val = $("#img_src"+i).attr("value");
                 if(img_val != '' && img_val != undefined){
                 var md = "product";
                 var img= $.page.getImgUrl(img_val);
                 $.ajax({
                 type:"POST",
                 url: "base/delPic" ,
                 data : {img:img,id: pid,md:md},
                 success: function(rel){}
                 });
                 }
            }
        });
    })
</script>
