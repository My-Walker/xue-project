<!-- 公共头部 -->
<link rel="import" href="../Layer/layer.Mall.head.tpl?__inline">

<!-- 学习中心区域 -->
<div class="container">
    <ol id="module-breadcrumb" class="breadcrumb">
        <li><a href="#">课程分类</a></li>
        <li class="active">三年级</li>
    </ol>

	<link rel="import" href="../../widget/Mall.forum.twoList/twoList.tpl?__inline">
</div>
<!-- 页面配置 -->
<script>
	var PAGE_CONFIG = {
	    ID: 'Index',
	    MODULE: 'Mall',
	    TITLE: '二级-免费课',
	    NAV_FIXED: false // 如果想要头部分类展开的话，设为true，如果不想直接展开设为false
	};
	$('.ui-pages').pages({
	    total : 29, // 总记录数
	    size: 10, // 每页显示记录数
	    index : 1, // 当前页
	    // 点击分页时的回调，返回被点击的页数
	    click : function(e){
/*           $.ajax({
               type: "get",
               url: "/MyOrders/ajaxOrderList",
               dataType: "html",
               data:'type=' + ordertype + '&curpage=' + index, 
               success: function(list){
                   var box = $('#page_list');
                   box.html(list);
               },
               error:function(){  
                   alert("异步失败");  
               }  
           });*/
	    }
	});
</script>

<!-- 公共底部 -->
<link rel="import" href="../Layer/layer.Mall.foot.tpl?__inline">