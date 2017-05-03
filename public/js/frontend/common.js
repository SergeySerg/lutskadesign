$(function(){

/***********height screen*************/
    $('.slide,.header-section, .portfolio-item-main').css({height : $( window ).height()});
/***********END height screen*************/
    
/**********open-close menu**************/
    $('.button-menu').click(function(){
        $(this).toggleClass('active');
        $('.sidebar-menu').toggleClass('active');
        $('.button-menu .icon').toggleClass('menu-i').toggleClass('close');
    });
/**********END open-close menu**************/

/***********setting slider on main*************/
    $(".owl-carousel").owlCarousel({
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        items:1,
        loop: true,
        autoplay: true,
        smartSpeed: 1000,
        nav: true,
        navText: ["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
        dots: false
    });
/***********END setting slider on main*************/

/**********scrollTo**************/
    $("#arrow-down").click(function() {
        var scrollElement = $(this).attr('data-scroll-to');
        $('html, body').animate({
            scrollTop: $("#" + scrollElement).offset().top
        }, 1500);
    });
/**********END scrollTo**************/

/**********gallery for publication **************/
    $('#page-publication-item').unitegallery({
        gallery_theme: "tiles",
        tiles_type:"justified",
        tiles_justified_row_height: 400,
        tiles_justified_space_between: 20,
        tile_enable_shadow:true,			//enable shadow of the tile
        tile_shadow_h:1,					//position of horizontal shadow
        tile_shadow_v:1,					//position of vertical shadow
        tile_shadow_blur:3,					//shadow blur
        tile_shadow_spread:2,				//shadow spread
        tile_shadow_color:"#8B8B8B",		//shadow color
    });
/**********END gallery for publication **************/

/**********gallery for portfolio on main**************/
    var textPanelVisible = false;
    var textPanelTitleFontSize = 30;
    if ($( window ).width() < 992) {
        textPanelVisible = true;
        textPanelTitleFontSize = 14;
    }
    $('.flex-gallery').each(function(){
        $(this).unitegallery({
            gallery_theme:"tiles",
            tiles_type:"justified",
            tile_border_color:"#F0F0F0",
            tile_outline_color:"#8B8B8B",
            tile_enable_shadow:true,
            tile_shadow_color:"#8B8B8B",
            tile_enable_icons: false,
            tile_show_link_icon:false,
            tile_enable_action:	false,			//enable tile action on click like lightbox
            tile_as_link: true,				//act the tile as link, no lightbox will appear
            tile_link_newpage: true,
            theme_gallery_padding:20,
            tiles_justified_space_between:20,
            tiles_justified_row_height:350,
//tile text panel options:
            tile_enable_textpanel: true,		 	//enable textpanel
            tile_textpanel_source: "title",		 	//title,desc,desc_title. source of the textpanel. desc_title - if description empty, put title
            tile_textpanel_always_on: textPanelVisible,	 	//textpanel always visible
            tile_textpanel_appear_type: "fade", 	//slide, fade - appear type of the textpanel on mouseover
            tile_textpanel_position:"inside_top", //inside_bottom, inside_top, inside_center, top, bottom the position of the textpanel
            tile_textpanel_offset: 0,			    //vertical offset of the textpanel

            tile_textpanel_padding_top:20,		 	//textpanel padding top
            tile_textpanel_padding_bottom:20,	 	//textpanel padding bottom
            tile_textpanel_padding_right: 11,	 	//cut some space for text from right
            tile_textpanel_padding_left: 11,	 	//cut some space for text from left
            tile_textpanel_bg_opacity: 0.9,		 	//textpanel background opacity
            tile_textpanel_bg_color:"#ffffff",	 	//textpanel background color
            tile_textpanel_bg_css:{},			 	//textpanel background css

            tile_textpanel_title_color: "#000000",		 //textpanel title color. if null - take from css
            tile_textpanel_title_font_family: "SolomonSansNormal",	 //textpanel title font family. if null - take from css
            tile_textpanel_title_text_align: "center",	 //textpanel title text align. if null - take from css
            tile_textpanel_title_font_size: textPanelTitleFontSize,	 //textpanel title font size. if null - take from css
            tile_textpanel_title_bold:null,			 //textpanel title bold. if null - take from css
            tile_textpanel_css_title:{},			 //textpanel additional css of the title

            tile_textpanel_desc_color: "#000000",			 //textpanel description font family. if null - take from css
            tile_textpanel_desc_font_family: "SolomonSansNormal",	 //textpanel description font family. if null - take from css
            tile_textpanel_desc_text_align:"center",	 //textpanel description text align. if null - take from css
            tile_textpanel_desc_font_size: 20,		 //textpanel description font size. if null - take from css
            tile_textpanel_desc_bold:null,			 //textpanel description bold. if null - take from css
            tile_textpanel_css_description:{},		 //textpanel additional css of the description        });
        });
    });
/**********END gallery for portfolio on main**************/

/**********show services list**************/
    $('.services-content-link').on('click', function (e) {
        var servicesId = $(this).attr('data-services-id');
        $("#" + servicesId).toggleClass('active');
        $(this).toggleClass('active');
        e.preventDefault();
    });
/**********END show services list**************/

    $('.calendar-section-wrap' ).masonry({
        itemSelector: '.calendar-item'
    });

    $('.section-publication' ).masonry({
        itemSelector: '.publication-item'
    });

/**********hide lang**************/
    $(window).scroll(function(){                              // отслеживаем событие
        if ( $(window).scrollTop() >= 50 ){                   // ставим условие
            $('.langs').css('width','0');         // определяем действие
        }
        else {
            $('.langs').css('width','128px');         // определяем действие
        }
    });
/**********END hide lang**************/

});