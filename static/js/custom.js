$(document).ready(function () {

    $(".submenu > a").click(function (e) {
        e.preventDefault();
        var $li = $(this).parent("li");
        var $ul = $(this).next("ul");

        if ($li.hasClass("open")) {
            $ul.slideUp(350);
            $li.removeClass("open");
        } else {
            $(".nav > li > ul").slideUp(350);
            $(".nav > li").removeClass("open");
            $ul.slideDown(350);
            $li.addClass("open");
        }
    });

    $("#send_data").click(function(e) {
       e.stopPropagation();
    });

});


window.WS = {};
WS.Index = "/console/index";
WS.Login = "/";

WS.API = {
  // 登陆接口
  login: "/console/auth_login",
  // 首页数据接口
  index: "/console/index",
  // 门店列表数据接口
  device: "/console/device",
  // 品牌（广告主）列表数据接口
  brand: "/console/brand"
}

//login.html:用户登录校验
$('#btnLogin').on('click', function () {
    var username = $('#js-username').val();
    var password = $('#js-userpw').val();
    var csrf_token = $('[name=csrfmiddlewaretoken]').val();
    if (!username) {
        $('.error-tip').text('用户名不能为空,请重新输入.').removeClass('f-vh').addClass('f-vv');
        return false;
    }
    else if (!password) {
        $('.error-tip').text('密码不能为空,请重新输入.').removeClass('f-vh').addClass('f-vv');
        return false;
    }

    $.ajax({
    url: WS.API.login,
    type: 'POST',
    data:{
      csrfmiddlewaretoken: csrf_token,
      username: username,
      password: password
    },
    dataType: 'json'
   }).done(function(data){
    if(data.code == 0){
      window.location.href = WS.Index;
    } else if(data.code == -1){
      $('.error-tip').text('帐号和密码不匹配,请重试.').removeClass('f-vh').addClass('f-vv');
    } else {
      $('.error-tip').text('其他错误,请联系系统管理员.').removeClass('f-vh').addClass('f-vv');
    }
  }).fail(function(data){
    $('.error-tip').text('系统出错,请稍后重试.').removeClass('f-vh').addClass('f-vv');
  });

})

