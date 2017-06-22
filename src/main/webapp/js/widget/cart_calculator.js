
						  ;(function(win,$){
						  		var s1 ;
							  	var calc = {
										 //修正 位移
										 fixOffset : function(flag,$mainDiv){
												
												// 获取当前 mainDiv 所在位置 left 
												var mainDivLeft = $mainDiv.offset().left;
												
												// 将 tmpDown 和 tmpUp 的 当前位置 设置为 和mainDiv 纵向平行
												if(flag == 'decrement'){//点击的是 向下的 按钮
														
														if(!$mainDiv.prev().is(":animated")){
															$mainDiv.prev().offset({left:mainDivLeft}); //
															$mainDiv.prev().stop(true,true).animate({top:"0px"},500,function(){
																$mainDiv.prev().css("top","-30px");
															});
															
															$mainDiv.stop(true,true).animate({top:"30px"},500,function(){
																$mainDiv.css("top","0px");
															});
														}
												}
												
												if(flag == 'increment'){//点击的是 向上的 按钮
													
														if(!$mainDiv.next().is(":animated")){
															$mainDiv.next().offset({left:mainDivLeft}); //
															$mainDiv.next().stop(true,true).animate({top:"0px"},500,function(){
																$mainDiv.next().css("top","30px");
															});
															$mainDiv.stop(true,true).animate({top:"-30px"},500,function(){
																$mainDiv.css("top","0px");
															});
														}
												}
												
											},
										
											 decrement:function(obj){  // obj 为 左边的 加号
												  
												 var $mainDiv = $(obj).next("div").find("span").eq(1);
												  
													if(!$mainDiv.is(":animated")){
													  if($mainDiv.text()<=2){
													    	$(obj).find("img").css("display","none")
													 	 	     .end().removeAttr("onclick");
														}
														
														if($mainDiv.text() == 1){
														 	return;
													  }
														s1=parseInt($mainDiv.text())-1;
													  $mainDiv.text(s1);
														$mainDiv.next().text(s1);
													 	$mainDiv.prev().text(s1);
													
														calc.fixOffset('decrement',$mainDiv); //向下 
														//$('ccc').innerHTML=sl*150;
													}
											},
									
									
										    increment: function(obj){ //obj 为 右边的 加号
													
											    var $mainDiv = $(obj).prev("div").find("span").eq(1);
													
													if(!$mainDiv.is(":animated")){
														if($mainDiv.text()==1 || !$(obj).attr("onclick")){
															 
															 /*$("#decrement").find("img").css("display","block")
															 		.end().attr("onclick","cartCalc.decrement();");*/
															 		
															 		//两种写法 上面的 需要回退 即要加.end()
															 		//下面这种 因为 不需要回退 直接在根路径往下继续走即可
															 		
															 		$(obj).parents(".submain").find("div.decrement").attr("onclick","cartCalc.decrement(this);")
															 		.find("img").css("display","block");
														}
														s1 = parseInt($mainDiv.text())+1;
														$mainDiv.text(s1);
														$mainDiv.next().text(s1);
														$mainDiv.prev().text(s1);
														
														calc.fixOffset('increment',$mainDiv); //向上
														//$('ccc').innerHTML=sl*150;
													}
											}
										    
								}
							
								win.cartCalc = calc;
						})(window,jQuery);
						