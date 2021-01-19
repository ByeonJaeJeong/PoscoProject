/*
 main page java script 
 */
$(function(){
////////////////////Popup Ribbon     ////////////////////
			
			var ribbon = 80;

			//페이지 로드 후 배너 안보이게 removeclass 
			$("body").removeClass("ribbon-on");

			//페이지 업,다운 스크롤 시 헤더 transition 추가/삭제
			var lastScroll = 0;
			$(window).scroll(function(event){
				//Sets the current scroll position
				var st = $(this).scrollTop();
				//Determines up-or-down scrolling
				if (st > lastScroll){
					//스크롤 다운할 때
					$("header").css({"transition":"none"});
				}
				else {
					//스크롤 업 할때
					$("header").css({"transition":'Top .5s'});
				}
				//Updates scroll position
				lastScroll = st;
			});

			
			$(".ribbon button").click(function(){
				console.log("실행1");
				$("header").css({"transition":"none"});
				console.log("실행2");
				$(".ribbon").slideUp(500,"easeInOutExpo");
				console.log("실행3");
				$("header").animate({"top":0},500,"easeInOutExpo");
				console.log("실행4");
				$("body").removeClass("ribbon-on");
				ribbon = 0;
				if ($("#ribbon-chk").is(":checked")){
					setCookie("ribbonBanner", "done", 1);
				}
			});

			//오늘 하루 열지 않음  해당 쿠키가 있으면 헤더 안움직이게
			cookiedata = document.cookie;
			if ( cookiedata.indexOf("ribbonBanner=done") < 0 ){

			setTimeout(function(){
				$("body").addClass("ribbon-on");
				$(".ribbon").addClass("on");
				$("header").css({"transition":'Top .5s'});
			}, 500);
			}
			//해당 쿠키가 없으면 헤더 움직이게
			else {
			   $("body").removeClass("ribbon-on");
			}

			
			$(window).scroll(function(){
				
				var st = $(window).scrollTop();
				
				if ( $("body").hasClass("ribbon-on") ) {
					
					if(st < ribbon){
						$("header").css({"top":ribbon-st});
						$("header #gnb .menu li .bg").css({"top":ribbon-st + 80});
						$("header #util .search-act").css({"top":ribbon-st + 80});
					}else{
						$("header").css({"top":0});
						$("header #gnb .menu li .bg").css({"top":80});
						$("header #util .search-act").css({"top":80});
					}
					
				} else {
					
					$("header").css({"top":0});
					$("header #gnb .menu li .bg").css({"top":80});
					$("header #util .search-act").css({"top":80});
				}
			});
		    
		    // Ribbon banner Slide 띠배너 슬라이드
		    var loveSlide=$(".loveSlide").bxSlider({
		    	mode:"horizontal",
		    	        speed:1500,
		    	        pause:4500,
		    	        pager:false,
		    	        moveSlides:1,
		    	        slideWidth:"716",
		    	        minSlides:1,
		    	        maxSlides:1,
		    	        infiniteLoop:true,
		    	        slideMargin:0,
		    	        auto:true,
		    	        autoHover:true,
		    	        controls:false,
		    	        autoControls:false,
		    	        autoControlsCombine:false,
		    	        
		    });

		    // 띠배너 웹 접근성
		     $('.loveSlide a').focusin(function () {
		    	loveSlide.stopAuto();
		    }); 

		    $(".prev").on("click",function(){
		        loveSlide.goToPrevSlide();
		        return false;
		    });

		    $(".next").on("click",function(){
		        loveSlide.goToNextSlide();
		        return false;
		    });
			
			
				/* section height */
		var ht = $(window).height();	
	//브라우저의 높이값을 section의 높이값으로 지정
	$("section").height(ht);
	
	//브라우저가 리사이즈 될 때마다 브라우저와 section의 높이값을 갱신
	$(window).on("resize",function(){
		var ht = $(window).height();	
		$("section").height(ht);
	});	
	//section위에서 마우스 휠을 움직이면	
	 $("section").on("mousewheel",function(event,delta){    
		
	//마우스 휠을 올렸을때	
	if (delta > 0) {  
	//변수 prev에 현재 휠을 움직인 section에서 이전 section의 offset().top위치 저장
		var prev = $(this).prev().offset().top;
		//문서 전체를 prev에 저장된 위치로 이동
		$("html,body").stop().animate({"scrollTop":prev},1000);
			 
		//마우스 휠을 내렸을때	 
			}else if (delta < 0) {  
			//변수 next에 현재 휠을 움직인 section에서 다음 section의 offset().top위치 저장
			var next = $(this).next().offset().top;
			//문서 전체를 next에 저장된 위치로 이동
			$("html,body").stop().animate({"scrollTop":next},1000);
			
		}
	});		 
			
		window.onload = function() {
			var elm = ".posco_section";
			$(elm).each(function(index) {
				// 개별적으로 Wheel 이벤트 적용
				$(this).on("mousewheel DOMMouseScroll", function(e) {
					
					e.preventDefault();
					var delta = 0;
					if (!event)
						event = window.event;
					if (event.wheelDelta) {
						delta = event.wheelDelta / 120;
						if (window.opera)
							delta = -delta;
					} else if (event.detail)
						delta = -event.detail / 3;
					var moveTop = $(window).scrollTop();
					var elmSelecter = $(elm).eq(index);

					// 마우스휠을 위에서 아래로
					if (delta < 0) {
						if ($(elmSelecter).next() != undefined) {
							try {
								moveTop = $(elmSelecter).next().offset().top;
							} catch (e) {
							}
						}
						// 마우스휠을 아래에서 위로
					} else {
						if ($(elmSelecter).prev() != undefined) {
							try {
								moveTop = $(elmSelecter).prev().offset().top;
							} catch (e) {
							}
						}
					}

				});
			});
		}

		/* dot_menu li on */
		$(window).on("scroll", function() {
			//변수 ht에 현재 브라우저의 넓이값 저장
			var ht = $(window).height();
			//변수 scroll에 현재 문서가 스크롤된 거리 저장
			var scroll = $(window).scrollTop();
			for (var i = 0; i < 7; i++) {
				if (scroll >= ht * i && scroll < ht * (i + 1)) {
					$(".dot_menu li").removeClass();
					$(".dot_menu li").eq(i).addClass("on");
				}
				;
			}
		});
		/* 스크롤 높이에 따른 top 버튼 사라짐 */
		$(window).on("scroll",function(){
			var ht= $(window).height();
			//현재 브라우저의 넓이값 저장
			//변수 scroll에 현재 문서가 스크롤된 거리 저장
			var scroll = $(window).scrollTop();
			//현재브라우저 넓이값 이 스크롤된 거리보다 길때)
			if(scroll<1){
				$(".top-btn").fadeOut();
			}else{
				$(".top-btn").fadeIn();
			}
		});
	
	
		/////////////////////문화행사(공연안내) 슬라이드///////////////////////
		
		var mySlider=$(".mySlider").bxSlider({
	      mode:"horizontal",
	        speed:700,
	        pager:false,
	        moveSlides:1,
	        slideWidth:"500%",
	        minSlides:1,
	        maxSlides:1,
	        infiniteLoop:true,
	        slideMargin:0,
	        auto:false,
	        autoHover:true,
	        controls:false,
	        autoControls:true,
	        autoControlsCombine:true,

	      	// 웹접근성 추가
		onSliderLoad: function(){
			$(".mySlider .bx-clone").find("a").prop("tabIndex","-1");
		},
		onSlideAfter: function($slideElement, oldIndex, newIndex){
	        if(newIndex == 0) {
	                $(".mySlider li").find("a").prop("tabIndex","0");
	                $(".mySlider .bx-clone").find("a").prop("tabIndex","-1");
	            } else {
	                for(var i = 0; i < 4; i++ ) {
	                    $('.mySlider li').eq(oldIndex + i).find('a').attr('tabindex' , -1);
	                    $('.mySlider li').eq((newIndex + 2) + i).find('a').attr('tabindex' , 0);
	                }
	            }
	        

		}

	  });

	// 웹 접근성
	$('.mySlider a').focusin(function () {
		mySlider.stopAuto();
	});

	  $(".prev_btn").on("click",function(){
	  mySlider.goToPrevSlide();
	  return false;
	  });

	  $(".next_btn").on("click",function(){
	  mySlider.goToNextSlide();
	  return false;
	  });
	
	$(".submenu").on("click",function(){
		if((this).className=="submenu"){
			(this).className="submenu on";
			(this).innerText="하위메뉴 전체닫기";
			$(".all-menu-body .container .col dd ul").show();
		}
		else{
			(this).className="submenu";
			(this).innerText="하위메뉴 전체열기";
			$(".all-menu-body .container .col dd ul").hide();
		}
	});
	$(".all-menu-close").on("click",function(){
		$("[data-focus=modal-all]").hide();
	});
	
	});
	/* 쿠키 생성 script */
	function setCookie(cname, cvalue, exdays) {
	    var d = new Date();
	    d.setTime(d.getTime() + (exdays*24*60*60*1000));
	    var expires = "expires="+ d.toUTCString();
	    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}
	
	// 접근성 관련 포커스 강제 이동
	function accessibilityFocus() {
	  
	  $(document).on('keydown', '[data-focus-prev], [data-focus-next]', function(e){
	    var next = $(e.target).attr('data-focus-next'),
	        prev = $(e.target).attr('data-focus-prev'),
	        target = next || prev || false;
	    
	    if(!target || e.keyCode != 9) {
	      return;
	    }
	    
	    if( (!e.shiftKey && !!next) || (e.shiftKey && !!prev) ) {
	      setTimeout(function(){
	        $('[data-focus="' + target + '"]').focus();
	      }, 1);
	    }
	    
	  });
	  
	}

	function tooltip() {
	  var openBtn = '[data-tooltip]',
	      closeBtn = '.quick-close';
	  
	  function getTarget(t) {
	    return $(t).attr('data-tooltip');
	  }
	  
	  function open(t) {
	    var showTarget = $('[data-focus="' + t + '"]');
	    showTarget.show().focus();
	    showTarget.find('.quick-close').data('activeTarget', t);
	  }
	  
	  function close(t) {
	    var activeTarget = $('[data-focus="' + t + '"]');
	    activeTarget.hide();
	    $('[data-tooltip="' + t + '"]').focus();
	  }
	  
	  $(document)
	    .on('click', openBtn, function(e){
	      e.preventDefault();
	      console.log(getTarget(e.target));
	      open(getTarget(e.target));
	    })
	    .on('click', closeBtn, function(e) {
	      e.preventDefault();
	      close($(this).data('activeTarget'));
	    })
	  
	}
	$(document).ready(function(){
		  
		  tooltip();
		  accessibilityFocus();
		  
});	
