/*
 * 화면너비 체크
 */
function wCatch() {

	var
		status
	,	wc	= $('.w_catch')
	,	wcP = wc.find('.wc_p').css('display')
	,	wcT = wc.find('.wc_t').css('display')
	,	wcM = wc.find('.wc_m').css('display')
	;

	return "block" === wcP ? status = "p" : "block" === wcT ? status = "t" : "block" === wcM ? status = "m" : void 0;

}

function mVisualHeight (){

	var
		status	=	wCatch()
	,	ms		=	$('.m_slide')
	,	msh		=	$('.m_slide .ms_h')
	,	ratio	=	(16/9)
	;

	if(status === "p"){
		ms.css({
				'height'		:	'440px'
		});
		msh.css({
				'height'		:	'440px'
		});
	} else if(status === "t"){
		ms.css({
				'height'		:	'360px'
		});	
		msh.css({
				'height'		:	'360px'
		});	
	} else if(status === "m"){
		ms.css({
				'height'		:	((msh.outerWidth())/ratio) + 'px'
		});
		msh.css({
				'height'		:	((msh.outerWidth())/ratio) + 'px'
		});
	}

}

function slideVisual(s_area) {

	var 
		svArea		=	$(s_area)
	,	svAreaUl	=	svArea.find('.slide_list ul')
	,	svCount		=	svArea.find('.slide_count')	
	,	svPrev		=	svArea.find('.btn_prev')
	,	svNext		=	svArea.find('.btn_next')
	,	svPlay		=	svArea.find('.btn_play')
	,	svPause		=	svArea.find('.btn_pause')
	,	svPager	    =	svArea.find('.slide_pager')
	,	svListCnt	=	svAreaUl.find('li').length
	,	svSlide		=	svAreaUl.lightSlider({
			mode		:	'fade'
		,	item		:	1
		,	auto		:	true
		,	loop		:	true
		,	pager		:	false
		,	slideMargin	:	0
		,	slideMove	:	1
		,	speed		:	600
		,	pause		:	5000
		,	controls 	:	false
		,	keyPress	:	true
		,	onBeforeStart	:	function(){
			
			svCount.find('strong').text('1');
			svCount.find('span').text(svListCnt);
			
		}
		,	onSliderLoad	:	function(){
			
			var 
				html	=	''
            ;
        
            html += '<ul>';
            for(var i = 1; i <= svListCnt; i++) {
                html += '<li><a href="#none"><span class="hdn">' + i +' 페이지로 이동</span></a></li>';
            }
            html += '</ul>';
        
            svPager.append(html);
			svPager.find('li').first().addClass('active');
        
			svPager.find('li').click(function(){
				svSlide.goToSlide($(this).index() + 1);
				return false;
			});
        
            svAreaUl.find('li').find('a').attr('tabindex','-1');
            svAreaUl.find('li').first().find('a').attr('tabindex','0');
            
        }
        ,	onBeforeSlide	:	function(a, b){
			
			svCount.find('strong').text(b + 1);
        
            svPager.find('li').removeClass('active');
            svPager.find('li').eq(b).addClass('active');
        
            svAreaUl.find('li').find('a').attr('tabindex','-1');
            svAreaUl.find('li').eq(b).find('a').attr('tabindex','0');
        
		}
	});

	svPrev.click(function(){
		svSlide.goToPrevSlide();
		return false;
	});
	svNext.click(function(){
		svSlide.goToNextSlide();
		return false;
	});
	svPlay.hide();
	svPlay.click(function(){
		svSlide.play();
		$(this).hide().next().show().focus();
		return false;
	});
	svPause.click(function(){
		svSlide.pause();
		$(this).hide().prev().show().focus();
		return false;
	});	
	svAreaUl.focusin(function(){
		svSlide.pause();
		svPause.hide().prev().show();
	});
	svAreaUl.focusout(function(){
		svSlide.play();
		svPlay.hide().next().show();
	});
	
}

function slideColumn(s_area, s_item_p, s_item_t, s_item_m, width_t, width_m){

	var 
		scArea		=	$(s_area)
	,	scAreaUl	=	scArea.find('.slide_list ul')
	,	scCount		=	scArea.find('.slide_count')	
	,	scPrev		=	scArea.find('.btn_prev')
	,	scNext		=	scArea.find('.btn_next')
	,	scPlay		=	scArea.find('.btn_play')
	,	scPause		=	scArea.find('.btn_pause')
	,	scPager	    =	scArea.find('.slide_pager')
	,	scListCnt	=	scAreaUl.find('li').length
	,	itemP		=	s_item_p
	,	itemT		=	s_item_t
	,	itemM		=	s_item_m
	,	wT			=	width_t
	,	wM			=	width_m
	,	scSlide		=	scAreaUl.lightSlider({
			item		:	itemP
		,	auto		:	true
		,	loop		:	true
		,	pager		:	false
		,	slideMargin	:	0
		,	slideMove	:	1
		,	speed		:	600
		,	pause		:	5000
		,	controls 	:	false
		,	keyPress	:	false
		,	responsive	:	[
			{
					breakpoint	:	wT
				,	settings	:	{
						item			:	itemT
					,	slideMove		:	1
					,	onBeforeSlide	:	function(a, b){

						var 
							jsIdx	=	b
						,	thIdx	=	jsIdx - itemT
						,	fltIdx	=	thIdx + 1
						;

						if (fltIdx <= 0){
							fltIdx = scListCnt + fltIdx;
						} else if (fltIdx > scListCnt) {
							fltIdx = fltIdx - scListCnt;
						}
						
						scCount.find('strong').text(fltIdx);
					
						scPager.find('li').removeClass('active');
						scPager.find('li').eq(thIdx).addClass('active');

						scAreaUl.find('li a').attr('tabindex','0');        
						scAreaUl.find('.clone a').attr('tabindex','-1');
					
					}
				}
			},
			{
					breakpoint	:	wM
				,	settings	:	{
						item			:	itemM
					,	slideMove		:	1
					,	onBeforeSlide	:	function(a, b){

						var 
							jsIdx	=	b
						,	thIdx	=	jsIdx - itemM
						,	fltIdx	=	thIdx + 1
						;

						if (fltIdx <= 0){
							fltIdx = scListCnt + fltIdx;
						} else if (fltIdx > scListCnt) {
							fltIdx = fltIdx - scListCnt;
						}

						scCount.find('strong').text(fltIdx);
					
						scPager.find('li').removeClass('active');
						scPager.find('li').eq(thIdx).addClass('active');

						scAreaUl.find('li a').attr('tabindex','0');        
						scAreaUl.find('.clone a').attr('tabindex','-1');
					
					}
				}
			}
		]
		,	onBeforeStart	:	function(){
			
			scCount.find('strong').text('1');
			scCount.find('span').text(scListCnt);
			
		}
		,	onSliderLoad	:	function(){
			
			var
				html	=	''
			;
        
            html += '<ul>';
            for(var i = 1; i <= scListCnt; i++) {
                html += '<li><a href="#none"><span class="hdn">' + i +' 페이지로 이동</span></a></li>';
            }
            html += '</ul>';
        
            scPager.append(html);
			scPager.find('li').first().addClass('active');
        
			scPager.find('li').click(function(){
				scSlide.goToSlide($(this).index() + 1);
				return false;
			});
			
			scAreaUl.find('li a').attr('tabindex','0');        
            scAreaUl.find('.clone a').attr('tabindex','-1');
            
		}
		,	onAfterSlide	:	function(a, b){

			var 
				jsIdx	=	b
			,	thIdx	=	jsIdx - itemP
			,	fltIdx	=	thIdx + 1
			;

			if (fltIdx <= 0){
				fltIdx = scListCnt + fltIdx;
			} else if (fltIdx > scListCnt) {
				fltIdx = fltIdx - scListCnt;
			}
			
			scCount.find('strong').text(fltIdx);
        
            scPager.find('li').removeClass('active');
			scPager.find('li').eq(thIdx).addClass('active');

            scAreaUl.find('li a').attr('tabindex','0');        
			scAreaUl.find('.clone a').attr('tabindex','-1');
        
		}
	});
	scPrev.click(function(){
		scSlide.goToPrevSlide();
		return false;
	});
	scNext.click(function(){
		scSlide.goToNextSlide();
		return false;
	});
	scPlay.hide();
	scPlay.click(function(){
		scSlide.play();
		$(this).hide().next().show().focus();
		return false;
	});
	scPause.click(function(){
		scSlide.pause();
		$(this).hide().prev().show().focus();
		return false;
	});
	scAreaUl.find('li a').focusin(function(){

		var
			thPIdx = $(this).parent().index() - itemP + 1
		;

		scSlide.goToSlide(thPIdx);

	});
	scAreaUl.focusin(function(){
		scSlide.pause();
		scPause.hide().prev().show();
	});
	scAreaUl.focusout(function(){
		scSlide.play();
		scPlay.hide().next().show();
	});
	
}

/*
 * 서브메뉴배경 높이값 체크
 */
function gnbSubH() {

	var
		gnbLi	=	$('.gnb > ul > li')
	,	status	=	wCatch()
	;

	if (status === "p") {

		gnbLi.find('.g_sub').css('opacity', '0').show();

		gnbLi.each(function () {

			var
				th 				=	$(this)
			,	thGnbSub 		=	th.find('.g_sub')
			,	thGnbSubInner 	=	th.find('.g_sub > div')
			,	thGnbSubInnerH 	=	thGnbSubInner.outerHeight()
			;

			thGnbSub.css({
					'height'	:	thGnbSubInnerH + 'px'
				,	'display'	:	'none'
				,	'opacity'	:	'1'
			});

		});

	}
}

/*
 * gnb
 */
function gnb() {

	var
		g							= 	$('.gnb')
	, 	gList						= 	$('.gnb > ul > li')
	, 	gListLink 					= 	$('.gnb > ul > li > a')
	, 	gFirstListLink 				= 	$('.gnb > ul > li:first-child > a')
	, 	gLastListSubLastListLink 	= 	$('.gnb > ul > li:last-child > .g_sub > div > ul > li:last-child > a')
	, 	gSub 						= 	$('.gnb .g_sub')
	;

	gList.bind({
		mouseenter	: function () {
			gSub.slideUp(240);
			$(this).find(".g_sub").stop().slideDown(480);
			$(this).addClass("over");
			gList.not($(this)).removeClass("over");
		},
		mouseleave	: function () {
			$(this).find(".g_sub").hide();
		}
	});

	g.mouseleave(function () {
		gList.removeClass("over").find(".g_sub").hide();
	});

	gListLink.bind({
		focusin	: function () {
			gSub.slideUp(240);
			$(this).siblings(".g_sub").stop().slideDown(480);
			$(this).parent().addClass("over");
			gList.not($(this).parent()).removeClass("over");
		}
	});

	gFirstListLink.keydown(function (e) {

		var
			codeKey = e.keyCode || e.which
		;

		if (codeKey == 9 && e.shiftKey) {
			$(this).parent().removeClass("over").find(".g_sub").hide();
		}

	});

	gLastListSubLastListLink.focusout(function () {
		gList.removeClass("over").find(".g_sub").hide();
	});

}

/*
 * 긴급배너 : 사회적거리두기
 */
function emBanner(){
	
	var isemBanner =  $(".main_embanner");	
	if (isemBanner.length > 0){
		var isemBanner_img = $(isemBanner).find("#emergency_b");
		var status	=	wCatch();
		
		if(status === "p"){
			$(isemBanner_img).html("<img src='/resources/static/image/main/em_banner6_pc.png' alt='생활 속 거리두기 구체적 실천방법 지침 보러가기' />");
		} else if(status === "t"){
			$(isemBanner_img).html("<img src='/resources/static/image/main/em_banner6_tablet.png' alt='생활 속 거리두기 구체적 실천방법 지침 보러가기' />");        	
		} else if(status === "m"){
			$(isemBanner_img).html("<img src='/resources/static/image/main/em_banner6_mobile.png' alt='생활 속 거리두기 구체적 실천방법 지침 보러가기' />");
		}		
	}
};

/*
 * live contents toggle box
 */
function main_toggleBox(){	
	var width = $(window).outerWidth();
	var btn = $("button.liveopenBtn");
	var tBox = $(".main_box_toggle");
	
	if ( width <= 767 ){
		tBox.hide();
	}else{
		tBox.show();
	}

	btn.click(function (e){
		e.preventDefault();
		
		var whereopen = $(this).attr("data-openarea");
		var st_txt = $(this).find(".txt").text();
		$(this).toggleClass("open");
		$(this).find(".txt").text(
				st_txt == "펼쳐보기" ? "접기" : "펼쳐보기"
			);		
		$(whereopen).slideToggle("slow");
	});	
}

function livehelp(){// 치료중 안내	
	var help_open =  $("#liveNum_help");
	var help_info =  $("#liveNum_help_info");
	var help_close = $("#liveNum_help_close");
	
	$(help_open).click(function(e){
		e.preventDefault();
		$(help_info).toggle();		
	});
	$(help_close).click(function(e){
		e.preventDefault();
		$(help_info).hide();		
	});	
};

function cityinfohelp(){// 발생률 안내	
	var cityhelp_open =  $("#info_map_btn");
	var cityhelp_info =  $("#info_map_script");
	var cityhelp_close = $("#info_map_script_close");
	
	$(cityhelp_open).click(function(e){
		e.preventDefault();
		$(cityhelp_info).toggle();		
	});
	$(cityhelp_close).click(function(e){
		e.preventDefault();
		$(cityhelp_info).hide();		
	});	
};


$(function(){
	wCatch();
	setTimeout(gnbSubH, 80);
	gnb();
	slideVisual('.m_popupzone');
	tabAccess('.m_board');
	emBanner();
	main_toggleBox();
	livehelp();
	cityinfohelp();
});

$(window).resize(function(){
	gnbSubH();
	emBanner();
});