/**
购物车 cart 特效 js
*/



				/*  start   置顶插件 (by yc)  */
			    $(function(){
			    	
			    	ycTop();
			    	//ycTop({bgcolor:"red","color":"#fff"});  // 加上自己的bgcolor 和 color
			   
			    });
			    /*  置顶插件  (by yc)    end   */
			    
			    
			    
				$(function(){
					
					//临时 搜索区域 随 滚动 自动显示 隐藏  -----搜索区域副本 
					$(document).scroll(function(){
						
						if($(this).scrollTop() > 150){
							$(".replica_search_main").css("display","block");
						}else{
							$(".replica_search_main").css("display","none");
						}
						
					});
					
				});
			    
			    
			    
			
			
				$(function(){
						
						
						/* 增加 页面进入 特效  */
						$(".cart-thead").addClass("animated fadeInDownBig");
						$(".item-item").addClass("animated  bounceInUp");
						
						
						
						//当点击theader 或者 tfooter 的 全选时  选中 购物车中所有的 商品
						$("#theader_chkbox,#tfooter_chkbox").click(function(){
								
							     var mainChk = $(this).prop("checked"); 
							     $("#theader_chkbox,#tfooter_chkbox").prop("checked",mainChk);
								 
								 $(".cart-tbody .item-list .item-item").find(".jdcheckbox").each(
										 function(item){
											 $(this).prop("checked",mainChk);		 
										 }
								 );
								 
						});
						
						
						// cart里 的 每项 单独勾选  (和 theader 和 tfooter 的 chk 进行联动 勾选  )
						$(".cart-tbody .item-list .item-item").find(".jdcheckbox").click(function(){
							      
							      var selfChk = $(this).prop("checked");
							      $(this).prop("checked",selfChk);
							      
							      var $subs = $(".cart-tbody .item-list .item-item") .find(".jdcheckbox");
							      
							      $("#theader_chkbox,#tfooter_chkbox").prop("checked" , $subs.length == $subs.filter(":checked").length ? true :false); 
							     
						});
						 
						
						
						
					     /*  向上弹出购物车层  start  */
					
							$("#selproductBtn").click(function(){
								var bg_positionY =  $(".amount-sum b").css("background-position-y")
								if('-91px' == bg_positionY){
									$("#selectedProductDiv").addClass("cartFooterShow").removeClass("cartFooterHidden");
									$(".amount-sum b").css("background-position-y","-95px");
								}else{
									$("#selectedProductDiv").addClass("cartFooterHidden").removeClass("cartFooterShow");
									$(".amount-sum b").css("background-position-y","-91px");
								}
							});
							
							
							
							
							var cartObj = {      	              // 我们最好要给每个 定义的变量划分 [命名空间] ！
									totleCount:35,
									i : 0,
									pageCount :  parseInt(35/10)  //总共有多少页(推屏)
							};
							
							
							
							// 向上弹出 层  左 右 按钮   (购物车下方的 "已选择xx件商品" 旁边的 小箭头 )
							
							$("#next").click(function(){
								
								//处理正在运动中的 元素 (必须等待正在运动中的元素 运动完毕之后才可以进行下一步的 操作)
								if(!$(".p_ullist").find("ul").is(":animated")){
									if(cartObj.i == cartObj.pageCount -1){
										loading("已经是最后一页了!",3);
										return;
									} 
									cartObj.i++;
									$(".p_ullist").find("ul").animate({left:"-"+(990*cartObj.i)+"px"},1000,function(){}
			 						);
								}
							});
							
							$("#prev").click(function(){
								
								if(!$(".p_ullist").find("ul").is(":animated")){
									
										if(cartObj.i == 0){
											loading("已经到第一页了!",3);
											return;
										} 
										cartObj.i--;
										$(".p_ullist").find("ul").animate({left:"-"+(990*cartObj.i)+"px"},1000,function(){}
				 						);
								}
							});
					
					       /* end  向上弹出购物车层     (购物车下方的   "已选择xx件商品" 旁边的 小箭头)  */
					
					
					      
					      
					      
					      
					      
					      
					      /***********************************************************************************/
					      
					      
					      
					      
					      
					      
							/*  extra(额外内容)   start  */
							
							
							$(".extraContent").hover(function(){
								$(".ex-prev,.ex-next").css({"display":"block"});
							},function(){
								$(".ex-prev,.ex-next").css({"display":"none"});
							});
					      
							//====================  start  幽灵按钮  ====================================
								
								
					         var $ex_tab = ""; // 全局变量 (用来存储 每次 幽灵按钮 按下后 取到了 哪个tab [用filter 方法 根据 index()或者class属性来获取] )
					         var max_page = 1 ;// 每个tab的body体  默认 切屏数为 1 页  (根据后台传来的数据 缓存到  data-pageCount 属性 )
					         var startPage = 1 ; //每个 tab 的 body体 内的 页数 的 初始值 为 1;
					         var currentTab = -1; //同来存储 当前 tab; 用于 切换 tab 时候 重新计算 max_page 和 将 tab 的 body 的 startPage 还原
					         
					      	 //向前 点击  【幽灵按钮】 
					      	 $(".ex-prev").click(function(){
					      		  
					      		 //返回的 是 有item_curr 这个样式的 a 标签 的  jquery 元素对象
					      		 $ex_tab = $(".extra a").filter(function(index){
					      			  return $(this).hasClass("item_curr");
					      		 });
					      		 
					      		 //console.log(ex_tab.attr("class")); 
					      		 //alert($ex_tab.index()); //显然获取到 index 更加简便
					      		 
					      		 
					      		 
					      		 //获取 该类 extra 内容 的 小组总数 (用以 进行 控制  幽灵按钮 的 切屏次数 )
					      		 //data-pagecount = "2"  (即本 tab 体 有且仅可以切 2 屏)
					      		var op_pageCount =  $(".extraContent .extraContent_body > div").eq($ex_tab.index()).data("pagecount");
					      		//max_page = op_pageCount; 
					      		
					      		if(startPage == 1){
					      			loading("已经是第一页了!",3);
					      			return;
					      		}
					      		
					      		
					      		//特效减
					      		$(".extraContent .extraContent_body > div").eq($ex_tab.index())
					      			.find(".guessSinglegroup").eq(startPage-1).fadeOut("slow",function(){
					      				$(this).css("display","none");  // 淡出 并 隐藏
					      			});
					      		$(".extraContent .extraContent_body > div").eq($ex_tab.index())
				      			.find(".guessSinglegroup").eq(startPage-2).fadeIn("slow",function(){
				      			     	$(this).css("display","block"); // 淡入 并 显示 
				      				});
					      		
					      		//实际减
					      		startPage--;
					      		 
					      	 });
					      	 
					      	
					      	 //向后 点击 【幽灵按钮】
					    	 $(".ex-next").click(function(){
					      		  
					    		 //返回的 是 有item_curr 这个样式的 a 标签 的  jquery 元素对象
					      		 $ex_tab = $(".extra a").filter(function(index){
					      			  return $(this).hasClass("item_curr");
					      		 });
					      		 
					      		 
					      		 if($ex_tab.index() != currentTab){
					      			 currentTab = $ex_tab.index();   // 更改 tab 
					      			 startPage = 1; // 将 原先的 startPage 还原为第 1 个
					      			 
					      		 }
					    		 
					      		 
					      		 //console.log(ex_tab.attr("class")); 
					      		 //alert($ex_tab.index()); //显然获取到 index 更加简便
					      		 
					      		 
					      		 //获取 该类 extra 内容 的 小组总数 (用以 进行 控制  幽灵按钮 的 切屏次数 )
					      		 //data-pagecount = "2"  (即本 tab 体 有且仅可以切 2 屏)
					      		var op_pageCount =  $(".extraContent .extraContent_body > div").eq($ex_tab.index()).data("pagecount");
					      		max_page = op_pageCount; 
					      		 
					      		 if(startPage >= max_page ){
					      			loading("最后一页了!",3);
					      			return;
					      		 }
					      		
					      		$(".extraContent .extraContent_body > div").eq($ex_tab.index())
				      			.find(".guessSinglegroup").eq(startPage-1).fadeOut("slow",function(){
				      				$(this).css("display","none");  // 淡出 并 隐藏
				      			});
					      		$(".extraContent .extraContent_body > div").eq($ex_tab.index())
				      			.find(".guessSinglegroup").eq(startPage).fadeIn("slow",function(){
				      			     	$(this).css("display","block"); // 淡入 并 显示 
				      				});
					      		 
					      		//实际加
						        startPage++;
					      	 });
					      
					      	
					    		//==================== 幽灵按钮   end ====================================
					      	 
					      	    
					    			
					    	   //====================  start  tab ====================================
					      	 
					    	
								$(".extra a").hover(function(){
									$(this).addClass("item_curr").siblings("a").removeClass("item_curr");
									//console.log($(this).index()); //因为 这个("extra a") 选择器查询出来的 多个 <a>标签,
									// 我们就可以进行index()去获取 每个a标签 所在的 索引
									
									var tab_index = $(this).index(); //下面的 content 要和 上面的 tab 的索引 值是一致的 
									//第一种写法
								 	$(".extraContent .extraContent_body > div").eq(tab_index).css("display","block")
										.siblings("div").css("display","none"); 
									
									
								 //当 最近两次的tab不相同时 : 
								 // startPage 要还原 并且 设置为首屏 (当前 类型的 首个小组)
				      			 if( tab_index != currentTab){
					      			 currentTab = tab_index;   // 更改 tab 
					      			 startPage = 1; // 将 原先的 startPage 还原为第 1 个
					      			 
					      			 
					      			 //展示的 div 层 我们也要 还原为 第一个~
					      			 $(".extraContent .extraContent_body > div").eq(tab_index)
						      			.find("div.guessSinglegroup").eq(0)   
					      			 	.css("display","block").siblings("div.guessSinglegroup").css("display","none");
					      			 
					      		 }
				      			 	
									
									
				      			// 最近浏览 (无商品时)的 显示 	
				      			var op_pageCount =  $(".extraContent .extraContent_body > div").eq(1).data("pagecount");
									
				      				if(op_pageCount == 0){ //data-pageCount = 0 时
				      					$(".recentSeeContent").addClass("recentSeeContent_noProduct")
				      						.html("<div class=\"inn\">暂时无结果</div>");
				      				}
									 
								});
					      	 
					      	 
								//====================  tab   end ====================================
					      	 
					      	 
					
							/* end   extra(额外内容)    */
							
				});