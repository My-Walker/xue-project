/**
 * Created by user on 2015/10/21.
 */
    //上半部年级以及知识点选择的处理
var select = select || {};

select.opti = {
    item      : '.choice-item-each',
    pointInput: '.choice-items-spe-input',
    itemSpe   : '.choice-items-spe',
    pointShow : '.choice-more-download',
    selector  : '.selector',
    choiceHide: '.choiceHide'
}

/**
* [chooseSpan description]
* @param  {string} all       [所有的标签]
* @param  {string} that      [点击选中的标签]
* @param  {[type]} className [description]
* @return {[type]} none      [description]
*/
select.chooseSpan = function(all,that,className){
    $(all).removeClass(className);
    $(that).addClass(className);
}



/* 年级+知识点+学科 点击选择交互 */
$(select.opti.item).on('click',function(){
	var that = this,
        all = $(that).parent('li').siblings(),
        thatLi = $(that).parent('li');
    select.chooseSpan(all,thatLi,'active');
})

/* 知识点展示“更多”交互 */
$(select.opti.pointShow).on('click',function(){
    var that = this;
    if($(that).hasClass('show-choice')){
        $(that).children('a').html('更多知识点');
        $(that).children('i').removeClass('fa-angle-up fa-chevron-up').addClass('fa-angle-down fa-chevron-down');
        if($(select.opti.itemSpe).length){
            $(select.opti.itemSpe).scrollTop(0);
            $(select.opti.itemSpe).removeClass('choice-items-open');    
        }else{
            $(select.opti.pointInput).css({
                'height':'2.9rem',
                'overflow':'hidden'
            }); 
            
        }
        
        $(that).removeClass('show-choice');
    }else{
        $(that).children('a').html('收起知识点');
        $(that).children('i').removeClass('fa-angle-down fa-chevron-down').addClass('fa-angle-up fa-chevron-up');
        if($(select.opti.itemSpe).length){
            $(select.opti.itemSpe).addClass('choice-items-open');    
        }else{
            $(select.opti.pointInput).css({
                'height':'7.4rem',
                'overflow':'auto'
            })
        }
        
        $(that).addClass('show-choice');
    }
})



