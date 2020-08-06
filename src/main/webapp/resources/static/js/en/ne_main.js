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
		,	keyPress	:	false
		,	onSliderLoad	:	function(){

			svCount.find('strong').text('1');
			svCount.find('span').text(svListCnt);
			
			var html = '';        
            html += '<ul>';
            for(var i = 1; i <= svListCnt; i++) {
				//html += '<li><a href="#none"><span class="hdn">' + i +' 페이지로 이동</span></a></li>';
				html += '<li><a href="#none"><span>' + i +' 페이지로 이동</span></a></li>';
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
			
			svAreaUl.find('li').each(function(){
				$(this).find('a').each(function(idx){
					$(this).attr('data-index', (idx + 1));
				});
			});
            
        }
        ,	onAfterSlide	:	function(a, b){
			
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
	svAreaUl.find('li').find('a').keydown(function(e){

		var
			codeKey	=	e.keyCode || e.which,
			cnt		=	$(this).parents('li').find('a').length,
			idx		=	Number($(this).attr('data-index'));

		if (e.shiftKey && codeKey == 9) {

			if(cnt > 1 && idx > 1) {
				return;
			}

		} else if (codeKey == 9) {

			if(cnt > 1 && idx < cnt) {
				return;
			}

		}
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
					,	onAfterSlide	:	function(a, b){

						var
							thIdx	=	b - itemT
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
					,	onAfterSlide	:	function(a, b){

						var
							thIdx	=	b - itemM
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
		,	onSliderLoad	:	function(){
			
			scCount.find('strong').text('1');
			scCount.find('span').text(scListCnt);
			
			var html = '';        
            html += '<ul>';
            for(var i = 1; i <= scListCnt; i++) {
                //html += '<li><a href="#none"><span class="hdn">' + i +' 페이지로 이동</span></a></li>';
                html += '<li><a href="#none"><span>' + i +' 페이지로 이동</span></a></li>';
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
			
			scAreaUl.find('li').each(function(){
				$(this).find('a').each(function(idx){
					$(this).attr('data-index', (idx + 1));
				});
			});
            
		}
		,	onAfterSlide	:	function(a, b){

			var 
				thIdx	=	b - itemP
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
		var thPIdx = $(this).parents('.lslide').index() - itemP + 1;
		scSlide.goToSlide(thPIdx);
	});
	scAreaUl.focusin(function(){
		scSlide.pause();
		scPause.hide().prev().show();
	});

	scAreaUl.find('li:nth-child(' + (itemP + 1) + ') a').keydown(function(e){
		var 
			codeKey	= e.keyCode || e.which,
			idx 	= Number($(this).attr('data-index'));
		if (e.shiftKey && codeKey == 9 && idx === 1) {
			scSlide.play();
			scPlay.hide().next().show();
		}
	});

	scAreaUl.find('li:nth-child(' + (itemP + scListCnt) + ') a').keydown(function(e){
		var 
			codeKey	= e.keyCode || e.which,
			idx 	= Number($(this).attr('data-index')),
			cnt		= $(this).parents('li').find('a').length;
		if (codeKey == 9 && idx === cnt) {
			scSlide.play();
			scPlay.hide().next().show();
		}
	});
	
}

function mChartImgResponse() {
	var
		chartImg	= $('.m_country_status .mcs_chart')
	,	status		= wCatch()
	;

	if (status === 'p' || status === 't') {
		chartImg.html('<img src="/static/image/en/main_chart/live_fo500_0325.png" alt="" />');
	} else {
		chartImg.html('<img src="/static/image/en/main_chart/live_fo500_0325_mini.png" alt="" />');
	}
}

$(function(){
	slideVisual('.m_slide');
	//mChartImgResponse();
});
$(window).resize(function(){
	//mChartImgResponse();
});