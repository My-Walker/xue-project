$(function() {
    // 收起筛选
    $('.close-searchFilter').on('click', function() {
        var filter = $('.searchFilter');
        var contentH = ((filter.find('.row').length - 1) * 42 + 56) + 'px';
        var spanval = $(this).find('span').eq(0);
        if (spanval.text() == '收起筛选') {
            spanval.text('显示筛选');
            $(this).parent().find('img').eq(0).css({
                '-webkit-transform': 'rotate(180deg)',
                '-moz-transform': 'rotate(180deg)',
                'transform': 'rotate(180deg)'
            });
            filter.animate({
                height: 0
            }, 200);
        } else {
            spanval.text('收起筛选');
            $(this).parent().find('img').eq(0).css({
                '-webkit-transform': 'rotate(0)',
                '-moz-transform': 'rotate(0)',
                'transform': 'rotate(0)'
            });
            filter.animate({
                height: contentH
            }, 200);
        }
    })

    // 面包屑
    // 关闭按钮
    $('.bread-close').on('click', function() {
            // var index = $(this).parent().parent().index();
            // var brLi = $('.search-breadcrumb>li');
            // var del = index;
            // for (var i = index; i < brLi.length - 1; i++) {
            //     brLi.eq(del).css('display', 'none');
            //     del++;
            // }
            $(this).parent().parent().css('display', 'none');
        })
        // 品类 select
    var breadcrumbList = $('.breadcrumb-select-list');
    $('.breadcrumb-select').hover(function() {
        breadcrumbList.css('display', 'block');
    }, function() {
        breadcrumbList.css('display', 'none');
    });
    $('.breadcrumb-select-list li').on('click', function() {
        if ($(this).hasClass('current')) return;
        breadcrumbList.css('display', 'none');
        var val = $(this).children().eq(0).text();
        var index = $(this).index();
        seChange($(this));
        seChange($('.searchFilter .nav-course-list li').eq(index));
        $('.breadcrumb-sel-title').children().eq(1).text(val);
    })

    function seChange(el) {
        el.addClass('current');
        el.siblings().removeClass('current');
    }

    // 筛选项
    // 品类
    $('.searchFilter .nav-course-list li').on('click', function() {
        var index = $(this).index();
        var val = $(this).children().eq(0).text();
        if (!$(this).hasClass('current')) {
            seChange($(this));
            seChange($('.breadcrumb-select-list li').eq(index));
        }

        $('.breadcrumb-sel-title').children().eq(1).text(val);
    })

    // 品类之下菜单级
    $('.searchFilter .nav-pills li[role="presentation"]').on('click', function() {
        var _this = $(this);
        _this.addClass('active');
        _this.siblings().removeClass('active');
    })

});