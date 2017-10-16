<!--
    @require all.order.less
    @require order.modal.less
     @require ../UM.address/ui-address.less
    @require all.order.js
    @require Modal.js
    @require ../Module.Pagination/paginations.js
     @require ../UM.address/address.js
-->

<div class="ao-content">
    <ul id="order_tab" class="ao-list">
        <li class="current" data-pages="" data-params="1"><a href="#">全部订单<em class="order-num">19</em></a></li>
        <li data-pages="" data-params="2"><a href="#">已完成<em>19</em></a></li>
        <li data-pages="" data-params="3"><a href="#">待支付 22</a></li>
        <li data-pages="" data-params="4"><a href="#">已取消 11</a></li>
        <li data-pages="" data-params="5"><a href="#">待审核 10</a></li>
        <li data-pages="" data-params="6"><a href="#">审核未通过 5</a></li>
        <li data-pages="" data-params="7"><a href="#">待发货 5</a></li>
        <li data-pages="" data-params="8"><a href="#">待收货 6</a></li>
    </ul>
    <div id="page_list" class="some-order">
        <ul class="ao-title">
            <li class="ao-first">订单详情</li>
            <li class="ao-second">总计</li>
            <li class="ao-third">状态</li>
            <li class="ao-fourth">操作</li>
        </ul>
        <!--2017-10-update-huangtao first demo -->
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                    <p class="order-warning">请在24小时内完成此订单支付，否则订单会自动取消</p>
                </li>
                <li class="sub-second">¥ 2778.00</li>
                <li class="sub-third">待付款</li>
                <li class="sub-fourth">
                    <div>
                        <a class="btn btn-danger oncepay" href="#">立即支付</a>
                    </div>
                    <div>
                        <span>
                            <a class="desc" data-id="123"  href="#">查看详情</a>
                        </span>
                        <span>
                            <a class="del" data-id="123" href="#">取消订单</a>
                        </span>
                    </div>
                    
                    
                </li>
            </ul>
            <ul class="ao-order">
                <li class="ao-first ao-course">
                    <div class="ao-time-desc">
                        <div class="date">9月9日-1月13日</div>
                        <div class="time">每周六19:00-21:00</div>
                    </div>
                    <div class="ao-course-desc">
                        <em class="lesson">语文</em>
                        <span class="text">[课程升级] 2015学年五升六年级奥数年卡（竞赛班）2015学年五升六年级奥数年卡</span>
                    </div>
                </li>
                <li class="ao-second ao-price-desc">￥1389.00</li>
                <li class="ao-third ao-apply-status">未报名</li>
                <li class="ao-fourth ao-handle"></li>
            </ul>
            <ul class="ao-welfare">
                <li class="ao-first ao-welfare-text">
                    <div class="ao-welfare-content">
                        <em class="welfare">福利</em>
                        <span class="text">纸质讲义</span>
                    </div>
                </li>
                <li class="ao-second ao-welfare-desc"></li>
                <li class="ao-third ao-welfare-status"></li>
                <li class="ao-fourth ao-handle"></li>
            </ul>
        </div>
        <!--2017-10-update-huangtao second demo -->
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已完成</li>
                <li class="sub-fourth">
                    <div>
                        <span>
                            <a class="desc" data-id="123" href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>

            <ul class="ao-order">
                <li class="ao-first ao-course">
                    <div class="ao-time-desc">
                        <div class="date">9月9日-1月13日</div>
                        <div class="time">每周六19:00-21:00</div>
                    </div>
                    <div class="ao-course-desc">
                        <em class="lesson">语文</em>
                        <span class="text">[课程升级] 2015学年五升六年级奥数年卡（竞赛班）2015学年五升六年级奥数年卡</span>
                    </div>
                </li>
                <li class="ao-second ao-price-desc">￥1389.00</li>
                <li class="ao-third ao-apply-status">已报名</li>
                <li class="ao-fourth ao-handle">
                    <div class="ao-text">
                        <span>
                            <a class="apply-cancel" data-id="123" href="#">申请退课</a>
                        </span>
                    </div>
                </li>
            </ul>
            <!-- ao-bottom -->
            <ul class="ao-welfare">
                <li class="ao-first ao-welfare-text">
                    <div class="ao-welfare-content">
                        <em class="welfare">福利</em>
                        <span class="text">纸质讲义</span>
                    </div>
                </li>
                <li class="ao-second ao-welfare-desc"></li>
                <li class="ao-third ao-welfare-status">已发货</li>
                <li class="ao-fourth ao-handle">
                    <div class="ao-text">
                        <span>
                            <a class="check-logistics" data-id="123" href="#">查看物流</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <!--2017-10-update-huangtao third demo -->
        <div class="ao-details">
            <ul class="ao-order">
                <li class="ao-first ao-course">
                    <div class="ao-time-desc">
                        <div class="date">9月9日-1月13日</div>
                        <div class="time">每周六19:00-21:00</div>
                    </div>
                    <div class="ao-course-desc">
                        <em class="lesson">语文</em>
                        <span class="text">[课程升级] 2015学年五升六年级奥数年卡（竞赛班）2015学年五升六年级奥数年卡</span>
                    </div>
                </li>
                <li class="ao-second ao-price-desc">￥1389.00</li>
                <li class="ao-third ao-apply-status">已报名</li>
                <li class="ao-fourth ao-handle">
                    
                </li>
            </ul>
            <ul class="ao-welfare ao-bottom">
                <li class="ao-first ao-welfare-text">
                    <div class="ao-welfare-content">
                        <em class="welfare">福利</em>
                        <span class="text">纸质讲义</span>
                    </div>
                </li>
                <li class="ao-second ao-welfare-desc"></li>
                <li class="ao-third ao-welfare-status">待发货</li>
                <li class="ao-fourth ao-handle">
                    <div class="ao-text">
                        <span>
                            <a class="check-logistics" data-id="123" href="#">修改地址</a>
                        </span>
                    </div>
                </li>
            </ul>

            <ul class="ao-welfare">
                <li class="ao-first ao-welfare-text">
                    <div class="ao-welfare-content">
                        <em class="welfare">福利</em>
                        <span class="text">纸质讲义</span>
                    </div>
                </li>
                <li class="ao-second ao-welfare-desc"></li>
                <li class="ao-third ao-welfare-status">待发货</li>
                <li class="ao-fourth ao-handle">
                    <div class="ao-text">
                        <span>
                            <a class="check-logistics" data-id="123" href="#">修改地址</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <!--2017-10-update-huangtao fourth demo -->
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
                <li class="sub-fourth">
                    <div>
                        <span>
                            <a class="desc" data-id="123" href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>

            <ul class="ao-order">
                <li class="ao-first ao-course">
                    <div class="ao-time-desc">
                        <div class="date">9月9日-1月13日</div>
                        <div class="time">每周六19:00-21:00</div>
                    </div>
                    <div class="ao-course-desc">
                        <em class="lesson">语文</em>
                        <span class="text">[课程升级] 2015学年五升六年级奥数年卡（竞赛班）2015学年五升六年级奥数年卡</span>
                    </div>
                </li>
                <li class="ao-second ao-price-desc">￥1389.00</li>
                <li class="ao-third ao-apply-status">已退课</li>
                <li class="ao-fourth ao-handle">
                    <div>
                        <a class="btn btn-danger re-apply" data-id="123" href="#">重新报名</a>
                    </div>
                </li>
            </ul>

            <ul class="ao-welfare">
                <li class="ao-first ao-welfare-text">
                    <div class="ao-welfare-content">
                        <em class="welfare">福利</em>
                        <span class="text">纸质讲义</span>
                    </div>
                </li>
                <li class="ao-second ao-welfare-desc"></li>
                <li class="ao-third ao-welfare-status">待发货</li>
                <li class="ao-fourth ao-handle">
                    <div class="ao-text">
                        <span>
                            <a class="check-logistics" data-id="123" href="#">修改地址</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>



        <!-- 2017-huangtao-注释掉 start -->
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher ot-first">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                                <div class="avatar-roll">
                                    <a href="javascript:void(0);" class="prev none">
                                        <em class="icon-chevron-left">左</em>
                                    </a>
                                    <a href="javascript:void(0);" class="next">
                                        <em class="icon-chevron-right">右</em>
                                    </a>
                                </div>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师<br/>赠品：奥数思维训练汇编六年级</p>
                            <a class="order-quit" href="javascript:void(0);">申请退课</a>
                        </div>
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                            <a class="order-quit" href="javascript:void(0);">申请退课</a>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">待支付</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>
            
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                            <a class="order-quit" href="javascript:void(0);">申请退课</a>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">已完成</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span><a href="#">查看详情</a></span>
                    </div>
                </li>
            </ul>
            <ul class="ao-welfare">
                <li>
                    <div class="ao-subtitle-left">
                        <div class="handwrap">
                            <span class="handout"><em>褔利</em>纸质讲义</span>
                            <span class="handnum">X1</span>
                        </div>
                    </div>
                    <div class="ao-subtitle-left">
                        <div class="handwrap">
                            <span class="handout"><em>褔利</em>纸质讲义</span>
                            <span class="handnum">X1</span>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">&nbsp;</li>
                <li class="ao-third ao-li">待发货</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#" class="alterAddress" data-id="1234">修改地址</a>
                        </span>
                    </div>
                </li>

            </ul>
            <div class="order-setAddress">
                <div id="ui-setAddress">
                    
                    <div class="ui_ship_addr">

                        <ul class="shipadd_list">
                            <li id="159970" class="active">
                                <input type="hidden" autocomplete="off" id="addid_159970" name="data[addid]" value="159970" data-realname="小主" data-province="1" data-city="2" data-country="18" data-address="111" data-zipcode="" data-recipientphone="15733333333" checked="">
                                <div class="addr_detail">
                                    <span title="小主" class="addr_name">小主</span>
                                    <span title="北京市 县 延庆县111" class="addr_info">北京市 县 延庆县 111</span>
                                    <span class="addr_tel">157****3333</span>
                                </div>
                                <div class="ship_btns">
                                  
                                    <a href="javascript:updateAddress(159970);" class="edit_consignee">编辑</a>
                                </div>
                            </li>
                        </ul>
                        <ul class="shipadd_list" id="shopAdderTo">
                            <li id="160403" class=""> <input type="hidden" data-recipientphone="13211111111" data-zipcode="111111" data-address="123" data-area="天津市 县 静海县" data-county="35" data-city="4" data-province="2" data-realname="133" value="160403" name="data[addid]" id="addid_160403">
                                <div class="addr_detail"> <span class="addr_name" title="133">133</span> <span class="addr_info" title="天津市 县 静海县 123">天津市 县 静海县 123</span> <span class="addr_tel">13211111111</span></div>
                                <div class="ship_btns"> <a class="setdefault_consignee" href="/MyInfos/setDefaultAddress/160403">选择此地址</a> <a class="edit_consignee" href="javascript:updateAddress(160403);">编辑</a></div>
                            </li>
                        </ul>
                         <ul class="shipadd_list f_detailAddress" id="shopAdderTo">
                            <li id="160403" class=""> <input type="hidden" data-recipientphone="13211111111" data-zipcode="111111" data-address="123" data-area="天津市 县 静海县" data-county="35" data-city="4" data-province="2" data-realname="133" value="160403" name="data[addid]" id="addid_160403">
                                <div class="addr_detail"> <span class="addr_name" title="133">133</span> <span class="addr_info" title="天津市 县 静海县 123">天津市 县 静海县 123</span> <span class="addr_tel">13211111111</span></div>
                                <div class="ship_btns"> <a class="setdefault_consignee" href="/MyInfos/setDefaultAddress/160403">选择此地址</a> <a class="edit_consignee" href="javascript:updateAddress(160403);">编辑</a></div>
                            </li>
                        </ul>
                    </div>
                    <div class="setAddress-title">
                        <span class="newCreateAddress" style="color:#3bafda;padding-right: 10px;cursor: pointer;">新增收货地址</span>
                        <span class="addr_switch" style="float: left;padding-left:20px;cursor: pointer;">
                           展开地址
                        </span>
                    </div>
                </div>
                <div class="new_consignee_items">
                    <div class="info_from" id="details_form" style="display: none;">
                        <p>
                            <label for="">收货人</label>
                            <span class="add-opt">
                            <input type="text" autocomplete="off" id="realname" name="realname" value=""></span>
                            <span class="text">请准确填写真实姓名</span>
                        </p>
                        <p>
                            <label for="">所在地区</label>
                            <span class="add-opt">
                            <input type="hidden" autocomplete="off" id="province" value="1">
                            <input type="hidden" autocomplete="off" id="city" value="2">
                            <input type="hidden" autocomplete="off" id="country" value="18">
                            <select id="add_province" name="province" class="select" style="display: inline-block;"><option value="">省份</option><option value="1" selected="selected">北京市</option><option value="2">天津市</option><option value="3">河北省</option><option value="4">山西省</option><option value="5">内蒙古自治区</option><option value="6">辽宁省</option><option value="7">吉林省</option><option value="8">黑龙江省</option><option value="9">上海市</option><option value="10">江苏省</option><option value="11">浙江省</option><option value="12">安徽省</option><option value="13">福建省</option><option value="14">江西省</option><option value="15">山东省</option><option value="16">河南省</option><option value="17">湖北省</option><option value="18">湖南省</option><option value="19">广东省</option><option value="20">广西壮族自治区</option><option value="21">海南省</option><option value="22">重庆市</option><option value="23">四川省</option><option value="24">贵州省</option><option value="25">云南省</option><option value="26">西藏自治区</option><option value="27">陕西省</option><option value="28">甘肃省</option><option value="29">青海省</option><option value="30">宁夏回族自治区</option><option value="31">新疆维吾尔自治区</option><option value="32">台湾省</option><option value="33">香港特别行政区</option><option value="34">澳门特别行政区</option></select>
                            &nbsp;
                            <select id="add_city" name="city" class="select"><option value="1">市辖区</option><option value="2" selected="selected">县</option></select>
                            &nbsp;
                            <select id="add_country" name="country" class="select"><option value="17">密云县</option><option value="18" selected="selected">延庆县</option></select>
                        </span>
                            <span></span>
                        </p>
                        <p>
                            <label for="">详细地址</label>
                            <span class="add-opt">
                            <input type="text" autocomplete="off" id="address" name="address" class="add-input"></span>
                            <span class="text">请填写详细路名及门牌号</span>
                        </p>

                        <p>
                            <label for="">手机号码</label>
                            <span class="add-opt">
                            <input type="text" autocomplete="off" id="recipientphone" name="recipientphone" value=""></span>
                            <span class="text">用于接收发货通知短信和送货前通知</span>
                        </p>
                        <p>
                            <label for="">邮政编码</label>
                            <span class="add-opt">
                            <input type="text" autocomplete="off" id="zipcode" name="zipcode" value=""></span>
                            <span class="text">用于快递确定送货地址</span>
                        </p>
                        <p>
                            <label></label>
                            <input type="hidden" autocomplete="off" id="add_id" value="">
                            <a href="javascript:void(0);" id="order_address_submit_btn" class="btn btn_red">保存收货人信息</a>
                        </p>
                        <p class="error_tips_address"></p>
                        <span class="close_address"></span>
                    </div>
                </div>

<script>
    function renderAreaSelect() {
        var defaults = {
            s1: 'add_province',
            s2: 'add_city',
            s3: 'add_country',
            v1: $("#province").val(),
            v2: $("#city").val(),
            v3: $("#country").val()
        };
        $('#add_province').empty('');
        threeSelect(defaults);
    };
//    renderAreaSelect();
     //提交生成收货地址列表
function saveNewAddress(addInput) {
     if($('#address_submit_btn').hasClass('submit_in_use')){//提交时，检测是否有标识的类名
         return false;
      }
     $('#address_submit_btn').addClass('submit_in_use');//增加类名，用来防止ajax提交过程中用户重复点击
    var input = $(addInput);
    var data = {
        id: 0
    };
    data.id = $('#add_id').val();
    var id;
    input.each(function() {
        id = this.id;
        id = id.replace('add_', '');
        data[id] = $(this).val();
    });
    data['province_text'] = $('#add_province option:checked').text();
    data['city_text'] = $('#add_city option:checked').text();
    data['country_text'] = $('#add_country option:checked').text();
    var _tpl = '  <input type="hidden" ' 
            + '      data-recipientphone="$phone$" ' 
            + '      data-zipcode="$zipcode$" ' 
            + '      data-address="$address$" ' 
            + '      data-area="$province_text$ $city_text$ $country_text$" ' 
            + '      data-county="$country$" ' 
            + '      data-city="$city$" ' 
            + '      data-province="$province$" ' 
            + '      data-realname="$realname$" ' 
            + '      value="$id$" ' 
            + '      name="data[addid]" ' 
            + '      id="addid_$id$"' 
            + '  />' 
            + '<div class="addr_detail">' 
            + '  <span class="addr_name" title="$realname$">$realname$</span>' 
            + '  <span class="addr_info" title="$province_text$ $city_text$ $country_text$ $address$">$province_text$ $city_text$ $country_text$ $address$</span>' 
            + '  <span class="addr_tel">$phone$</span>' 
            + '</div>' 
            + '<div class="ship_btns">' 
            + '  <a class="setdefault_consignee" href="/MyInfos/setDefaultAddress/$addId$">设为默认地址</a>' 
            + '  <a class="edit_consignee" href="javascript:updateAddress($id$);">编辑</a>'
            + '  <a class="del_consignee" href="#none" onclick="delAddress($id$)">删除</a>' 
            + '</div>';
    var o = {
        id: data.id,
        recipient: data.realname,
        province: data.province,
        city: data.city,
        county: data.country,
        address: data.address,
        zipcode: data.zipcode,
        phone: data.recipientphone

    };
    $.ajax({
        url: '/MyInfos/editAddressInfo',
        type: 'POST',
        dataType: 'json',
        data: o,
        success: function(result) {
            $('#address_submit_btn').removeClass('submit_in_use');
            if (!result.sign) {
                alert(result.msg);
                return false;
            }
            var _id = result.addId;
            var tp = _tpl;
            tp = tp.replace(/\$id\$/g, _id);
            tp = tp.replace(/\$phone\$/g, data.recipientphone);
            tp = tp.replace(/\$zipcode\$/g, data.zipcode);
            tp = tp.replace(/\$address\$/g, data.address);
            tp = tp.replace(/\$country\$/g, data.country);
            tp = tp.replace(/\$city\$/g, data.city);
            tp = tp.replace(/\$province\$/g, data.province);
            tp = tp.replace(/\$realname\$/g, data.realname);
            tp = tp.replace(/\$province_text\$/g, data.province_text);
            tp = tp.replace(/\$city_text\$/g, data.city_text)
            tp = tp.replace(/\$country_text\$/g, data.country_text);
            tp = tp.replace(/\$addId\$/g, _id);
            var _addid = $('#addid_' + data.id).parent();
            if (result.type === 1) {
                $('<li id="' + _id + '">' + tp + '</li>').prependTo('ul#shopAdderTo');
                $('#numberAddress').text(result.rows);
            }
            if (result.type === 2) {
                _addid.html(tp);
                $('#numberAddress').text(result.rows);
            }
            if (result.isDefault == 1) {
                _addid.html(tp);
                _addid.find('.addr_detail').append('<span class="default_addr">默认地址</span>');
                _addid.find('.setdefault_consignee').remove();
            }
            $('.info_from').hide();
        },
        error:function(){
            alert('数据加载失败！');
            $('#address_submit_btn').removeClass('submit_in_use');
        }
    });
}
    // 保存收货地址
$('body').on('click', '#order_address_submit_btn', function() {
    var saveAddress ='#realname, #add_province, #address, #zipcode, #recipientphone';
    var addInput = '#realname, #add_province, #add_city, #add_country, #address, #zipcode, #recipientphone';
    var errorbox = $('.error_tips_address');
    var inputs = $(saveAddress);

    var ids = {
        realname: '收货人姓名',
        province: '省份',
        city: '城市',
        country: '地区',
        address: '详细地址',
        zipcode: '邮政编码',
        recipientphone: '手机号码',
        add_province: '省份',
        add_city: '城市',
        add_country: '地区'
    };
    var _reg = {
        recipientphone: (/^(13|14|15|17|18)[0-9]{9}$/.test($('#recipientphone').val()) ? true : false),
        zipcode: (/^[0-9][0-9]{5}$/.test($('#zipcode').val()) ? true : false)
    };
    //邮编
    var id, error = [],
        error_text = '',
        tpl = '$input$ 不能为空',
        error_reg = [],
        reg_text = '';
    inputs.each(function() {
        id = this.id;
        if ($.trim($(this).val()) === '') {
            error.push(ids[id]);
            $(this).addClass('error');
        } else {
            // 判断手机号与邮编格式
            if (id == 'recipientphone' || id == 'zipcode') {
                if (!_reg[id]) {
                    error_reg.push(ids[id]);
                    reg_text += ids[id];
                    $(this).addClass('error');
                } else {
                    $(this).removeClass('error');
                }
            } else {
                $(this).removeClass('error');
            }

        }
    });
    var temp_text = '';
    if (error.length > 0) {
        error_text = error.toString();
        temp_text = tpl.replace('$input$', error_text);
    }
    // 判断手机号与邮编格式
    if (error_reg.length > 0) {
       
        reg_text = error_reg.toString() + '格式不正确';
        if (error.length > 0) {
            temp_text += ', ';
        }
        temp_text += reg_text;
    }
    if (temp_text != '') {
        errorbox.text(temp_text);
        return;
    }
    errorbox.empty();
    saveNewAddress(addInput);

});

 //展开收起更多收货地址
    $('.addr_switch').on('click', function(event) {
        var that = $(this);
        if (that.hasClass('switch_off') !== true) {
            that.addClass('switch_off').text('收起地址');
            $('.f_detailAddress').show();
        } else {
            that.removeClass('switch_off').text('展开地址');
            $('.f_detailAddress').hide();
        }
    });
</script>
            </div>
            <!--            收货地址-->
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">已退课</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <a class="btn btn-danger" href="#" data-toggle="modal" data-target="#orderModal" onclick="orderModal();">重新报名</a>
                        <span>
                            <a href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">待审核</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#">查看详情</a>
                            <a class="del" data-num="23">取消订单</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">待收货</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">待发货</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="ao-details">
            <ul class="ao-subtitle">
                <li class="sub-first">
                    <span class="order-time">2015-08-02 14:32:12</span>
                    <span class="order-num">订单号：201508021432120909</span>
                </li>
                <li class="sub-second">¥ 1389.00</li>
                <li class="sub-third">已支付</li>
            </ul>
            <ul>
                <li>
                    <div class="ao-subtitle-left">
                        <div class="order-teacher">
                            <div class=" teacher-main teacher-main-border majar-items">
                                <ul class="avatar-items">
                                    <li>
                                        <a class="avatar-photo">
                                            <img src="img/order-teacher.png">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <em>语文</em>
                            <span>[课程升级] 2015学年五升六年级奥数年卡（竞赛班）</span>
                            <p>顾斐老师</p>
                        </div>
                    </div>
                </li>
                <li class="ao-second ao-li">￥1389.00</li>
                <li class="ao-third ao-li">审核未通过</li>
                <li class="ao-li">
                    <div class="ao-operation">
                        <span>
                            <a href="#">查看详情</a>
                        </span>
                    </div>
                </li>
            </ul>
        </div>
        <div class="ui-pages text-center"></div>
    </div>
</div>
