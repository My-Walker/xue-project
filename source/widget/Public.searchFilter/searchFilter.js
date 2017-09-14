$(function () {
    // 面包屑
    // 品类 select
    var breadcrumbList = $('.breadcrumb-select-list');
    $('.breadcrumb-select').hover(function(){
        breadcrumbList.css('display','block');
    },function(){
        breadcrumbList.css('display','none');
    });
    $('.breadcrumb-select-list li').on('click',function () {
        if($(this).hasClass('current')) return;
        breadcrumbList.css('display','none');
        var val = $(this).children().eq(0).text();
        var index = $(this).index();
        seChange($(this));
        seChange($('.searchFilter .nav-course-list li').eq(index));
        $('.breadcrumb-sel-title').children().eq(1).text(val);
    })
    function seChange(el){
        el.addClass('current');
        el.siblings().removeClass('current');
    }

    // 筛选项
    // 品类
    $('.searchFilter .nav-course-list li').on('click',function () {
        var index = $(this).index();
        var val = $(this).children().eq(0).text();
        if(!$(this).hasClass('current')){
           seChange($(this));
           seChange($('.breadcrumb-select-list li').eq(index));
        }
        
        $('.breadcrumb-sel-title').children().eq(1).text(val);
    })

    // 品类之下菜单级
    $('.searchFilter .nav-pills li[role="presentation"]').on('click',function(){
        var _this = $(this);
        _this.addClass('active');
        _this.siblings().removeClass('active');
    })

});