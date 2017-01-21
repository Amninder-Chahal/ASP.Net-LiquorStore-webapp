$(document).ready(function () {
//------------------- Disabled Default Function -------------------//
$('a.Product-Img-Link, a.Fav-Img-Link').click(function (e) {
    e.preventDefault();
});

    dropdown();

});

//------------------- Ajax Load function -------------------//

function dropdown() {
    //-------------------Index Page Loading Icon Animation -------------------//
    $("#login_Button11").click(function () {
        $('#fa_icon_login').css({ "visibility": "visible" });
    });
    $("#signup_Button").click(function () {
        $('#fa_icon_signup').css({ "visibility": "visible" });
    });
    //-------------------Products Page Loading Icon Animation -------------------//
    $("#Item_1_Buy").click(function () {
        $('#fa_icon_1').css({ "visibility": "visible" });
    });
    $("#Item_1_Fav").click(function () {
        $('#fa_icon_1').css({ "visibility": "visible" });
    });
    $("#Item_2_Buy").click(function () {
        $('#fa_icon_2').css({ "visibility": "visible" });
    });
    $("#Item_2_Fav").click(function () {
        $('#fa_icon_2').css({ "visibility": "visible" });
    });
    $("#Item_3_Buy").click(function () {
        $('#fa_icon_3').css({ "visibility": "visible" });
    });
    $("#Item_3_Fav").click(function () {
        $('#fa_icon_3').css({ "visibility": "visible" });
    });
    $("#Item_4_Buy").click(function () {
        $('#fa_icon_4').css({ "visibility": "visible" });
    });
    $("#Item_4_Fav").click(function () {
        $('#fa_icon_4').css({ "visibility": "visible" });
    });
    $("#Item_5_Buy").click(function () {
        $('#fa_icon_5').css({ "visibility": "visible" });
    });
    $("#Item_5_Fav").click(function () {
        $('#fa_icon_5').css({ "visibility": "visible" });
    });
    $("#Item_6_Buy").click(function () {
        $('#fa_icon_6').css({ "visibility": "visible" });
    });
    $("#Item_6_Fav").click(function () {
        $('#fa_icon_6').css({ "visibility": "visible" });
    });
    $("#Item_7_Buy").click(function () {
        $('#fa_icon_7').css({ "visibility": "visible" });
    });
    $("#Item_7_Fav").click(function () {
        $('#fa_icon_7').css({ "visibility": "visible" });
    });
    $("#Item_8_Buy").click(function () {
        $('#fa_icon_8').css({ "visibility": "visible" });
    });
    $("#Item_8_Fav").click(function () {
        $('#fa_icon_8').css({ "visibility": "visible" });
    });
    $("#Item_9_Buy").click(function () {
        $('#fa_icon_9').css({ "visibility": "visible" });
    });
    $("#Item_9_Fav").click(function () {
        $('#fa_icon_9').css({ "visibility": "visible" });
    });
    $("#Item_10_Buy").click(function () {
        $('#fa_icon_10').css({ "visibility": "visible" });
    });
    $("#Item_10_Fav").click(function () {
        $('#fa_icon_10').css({ "visibility": "visible" });
    });
    //-------------------Cart Page Loading Icon Animation -------------------//
    $("#Cart_Button_1").click(function () {
        $('#fa-icon-1').css({ "visibility": "visible" });
    });
    $("#Hidden_Button_1").click(function () {
        $('#fa-icon-1').css({ "visibility": "visible" });
    });
    $("#Cart_Button_2").click(function () {
        $('#fa-icon-2').css({ "visibility": "visible" });
    });
    $("#Button2").click(function () {
        $('#fa-icon-2').css({ "visibility": "visible" });
    });
    $("#Cart_Button_3").click(function () {
        $('#fa-icon-3').css({ "visibility": "visible" });
    });
    $("#Button3").click(function () {
        $('#fa-icon-3').css({ "visibility": "visible" });
    });
    $("#Cart_Button_4").click(function () {
        $('#fa-icon-4').css({ "visibility": "visible" });
    });
    $("#Button4").click(function () {
        $('#fa-icon-4').css({ "visibility": "visible" });
    });
    $("#Cart_Button_5").click(function () {
        $('#fa-icon-5').css({ "visibility": "visible" });
    });
    $("#Button5").click(function () {
        $('#fa-icon-5').css({ "visibility": "visible" });
    });
    $("#Cart_Button_6").click(function () {
        $('#fa-icon-6').css({ "visibility": "visible" });
    });
    $("#Button6").click(function () {
        $('#fa-icon-6').css({ "visibility": "visible" });
    });
    $("#Cart_Button_7").click(function () {
        $('#fa-icon-7').css({ "visibility": "visible" });
    });
    $("#Button7").click(function () {
        $('#fa-icon-7').css({ "visibility": "visible" });
    });
    $("#Cart_Button_8").click(function () {
        $('#fa-icon-8').css({ "visibility": "visible" });
    });
    $("#Button8").click(function () {
        $('#fa-icon-8').css({ "visibility": "visible" });
    });
    $("#Cart_Button_9").click(function () {
        $('#fa-icon-9').css({ "visibility": "visible" });
    });
    $("#Button9").click(function () {
        $('#fa-icon-9').css({ "visibility": "visible" });
    });
    $("#Cart_Button_10").click(function () {
        $('#fa-icon-10').css({ "visibility": "visible" });
    });
    $("#Button10").click(function () {
        $('#fa-icon-10').css({ "visibility": "visible" });
    });
    $("#Cart_Remove_All").click(function () {
        $('#fa-icon-11').css({ "visibility": "visible" });
    });


    //------------------- Dropdown Menu functions -------------------//
    $(".dropdown-option-Whisky").click(function () {
        $('.Whisky').fadeIn(800);
        $(".Beer, .Tequila").hide(600);
        e.preventDefault();
    });
    $(".dropdown-option-Beer").click(function () {
        $('.Beer').fadeIn(800);
        $(".Whisky, .Tequila").hide(600);
        e.preventDefault();
    });
    $(".dropdown-option-Tequila").click(function () {
        $(".Tequila").fadeIn(800);
        $(".Beer, .Whisky").hide(600);
        e.preventDefault();
    });
    $(".dropdown-menu-All").click(function () {
        $(".Whisky, .Beer, .Tequila").fadeIn(800);
        e.preventDefault();
    });
    //------------Footer code--------------//
    if ($(window).width() <= 767)
    {
        $('.Footer-Sticky').hide();
    }
    else {
        $(window).scroll(function () {
            if ($(window).scrollTop() + $(window).height() > $(document).height() - 60) {
                $('.Footer-Sticky').fadeOut(400);
            }
            else {
                $('.Footer-Sticky').fadeIn(800);
            }
        });
    }
    //------------Hover Popover--------------//
    $('[data-toggle="popover"]').popover({ delay: 250 });
    $('[data-toggle="tooltip"]').tooltip({ delay: 250 });
};