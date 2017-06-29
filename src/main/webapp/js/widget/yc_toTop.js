				
				var defaults = {
						bgcolor:"#111",
						color:"#e6e6e6"
				}

				var yc_toTop = function(options){
					var opts = $.extend({},defaults,options);
					this.init(opts);
				};
				
				yc_toTop.prototype = {
					
					init:function(opts){
						var $toTop = this.template(opts);
						if($toTop){
							this.events($toTop);
						}
						
					},
					template : function(opts){
						
						var $toTop = $("#uptoTop");
						if($toTop.length == 0){
							
							$toTop = $("<div class=\"uptoTop animated flip\" id=\"uptoTop\" >"+
											"<i class=\"iconfont icon-jiantouxiangshang\"></i>"+	
										"</div>");
							$toTop.css({"background":opts.bgcolor,"color":opts.color});
							$("body").append($toTop);
						}
						
						if(opts.callback)$toTop.height(opts.callback);
						return $toTop;
					},
					events: function($toTop){
						
						$toTop.hover(function(){
							$(this).stop(true,true).removeClass("animated flip").removeClass("toTopLeave").addClass("toTopIn");
						},function(){
							$(this).stop(true,true).addClass("animated flip").removeClass("toTopIn").addClass("toTopLeave");
						});
						
						$toTop.click(function(){
							//$(window).scrollTop(0);
							$('body').animate({scrollTop: '0px'}, 600);
						});
						
						document.onscroll = function(){
							var scroll =  document.body.scrollTop || document.documentElement.scrollTop;
							if(scroll　> 150){
								$toTop[0].style.display = "block";
							}else{
								$toTop[0].style.display = "none";
							}
						}
						
					}
					
					
					
				}
				
				
				var ycTop = function(c_opts){
					new yc_toTop(c_opts);
				};