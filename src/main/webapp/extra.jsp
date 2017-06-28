<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    	<!-- 下面是 额外内容 [里面装载的 是 ,猜你喜欢，最近浏览， 我的关注等~] -->
								<!--   extra start  -->
								
								<style>
									
									/*  extra tab 样式 */
									.extra{width:990px;height:36px;margin:10px auto;
										line-height:36px;padding:5px;cursor:pointer;
										padding-bottom: 0px;
									}
									
									/*   tab 中的 每个 a  样式 */
									.extra a{
										text-decoration:none;
									    margin-right: 35px;
									    padding-bottom: 3px;
									    border-bottom: 2px solid #fff;
									    
								    }
									
									
									/*  tab 当前样式  */
									.extra a.item_curr{ 
										 color: #e4393c;
										 font-weight:500;
										 border-bottom: 2px solid red;
								    }
									
									
									
									
				/****************************  extra body 样式开始 **************************************/
									
									
									
									.extraContent{position:relative;z-index:1;}
									
									
									/* start 加在 每个 tab 中的 每个 group 上的  用来 控制 只显示 第一组   */
									
									.extraContent .tmCommonGroup:not(:first-child){
										/* 每个tab Body不是第一组 都会隐藏  */
											width:100%;
											height:100%;
											display:none;
									
									}
									
									
									/*  end  */
									
									
									/* start 额外的内容 的 左右两边的  (幽灵)按钮  */
									.extraContent .extra-page a{
											
										    color: #999;
										    text-align: center;
										    font-size: 42px;
										    font-weight: 400;
										    font-family: simsun;
										    position:absolute;
										    top: 50%;
										    margin-top: -60px;
										    z-index: 3;
										    display: block;
										    width: 40px;
										    height: 100px;
										    line-height: 100px;
										    background:rgba(0,0,0,0.2);
										    transition:all 0.3s ease;
										    text-decoration:none;
									}
									
									.extraContent .extra-page a:hover{
										 background: rgba(0,0,0,.6);
										 color: #fff;
										 transform:scale(1.1);
										 transition:all 0.3s ease;
										 border-radius:10px;
									}
									
									
									.extraContent .extra-page .ex-prev{
										left:0px;
										display:none;
									}
										
									.extraContent .extra-page .ex-next{
										right:0px;
										display:none;
									}									
									
									/*  额外的内容 的 左右两边的   (幽灵)按钮  end  */
								
									
									
									 
									
									/* start 猜你喜欢  */
									
									.extraContent .guesslikeContent{
										width:100%;
										height:326px;
										margin-top: -3px;
										overflow:hidden;
									}
									
									
									/* end 猜你喜欢  */
									
									
									
									 /*  start  最近浏览     */
									  
									 /*(最近浏览)   ----- 有 商品展示 */
									.extraContent .recentSeeContent{
										width:100%;
										height:326px;
										margin-top: -3px;
										overflow:hidden;
										display:none;
										/* background:red; */
									}
									
									 /*(最近浏览 )   ----- 没有   商品展示 (动态增加样式)*/ 
									.extraContent .recentSeeContent_noProduct{
										 display: none;
										 line-height:326px;
										 text-align:center;
									}
									
									/* 最近浏览   end */
									
									
									
									
									
									 /* 我的关注   start */
									.extraContent .attentionContent{
										width:100%;
										height:326px;
										margin-top: -3px;
										display: none;
										line-height:326px;
										text-align:center;
										overflow:hidden;
									}
									
									
									.extraContent .attentionContent .login-in{
										color: #005ea7;
										text-decoration:none;
										font-size: 20px;
									}
									
									/* 我的关注   end */
									
									
									
									
									/*  额外extra div 内容 共通的样式    start  */
									
									 .ex_item{
										width:24.7%;
										height:99%;
										float:left;
										text-align: center;
										border: 1px dashed #cacaca;
										cursor:pointer;
										border-radius: 16px;
									}
									
									 .ex_item:hover{
										border: 1px solid  #e4393c;
										box-shadow:0px 0px 2em #e4393c;
									}
									
									
									 .ex_item .extra_img{
										  border-radius: 23px;
										  margin: 16px auto;
										  overflow:hidden;
										  height: 150px;width:150px;border-raduis:50%;}
									}
									
								 .ex_item .extra_img img{height: 150px;width:150px;border-raduis:50%;}
									
									 .ex_item .extra_name{
										height: 77px;
									    overflow: hidden;
									    margin-top: -5px;
									}
									
									
									 .ex_item .extra_name span{
										color: #666;
	   									font-weight: bold;
									}
									    
									
									 .ex_item .extra_btn{
										    display: inline-block;
										    height: 28px;
										    line-height: 28px;
										    padding: 0 20px;
										    border: 1px solid #999;
										    color: #666;
										    text-align: center;
										    -webkit-border-radius: 3px;
										    -moz-border-radius: 3px;
										    border-radius: 3px;
										    margin: 10px auto 3px;
									}  
									
									
									 .ex_item .extra_btn a{text-decoration:none;}
									
									 .ex_item .extra_btn b{
									    height: 18px;
	    								width: 18px;
										background-image: url(//misc.360buyimg.com/user/cart/widget/cart-tabs-new/i/addtocart-icons.png);
										background-position: 0 -57px;
	    								display: inline-block;
	    								background-repeat: no-repeat;
	    								overflow: hidden;
	    								vertical-align: middle;
	    								margin-right: 4px;
									}
									
									
									 .ex_item .extra_btn:hover{
									border-color: #e4393c;background: #e4393c;}
									 .ex_item .extra_btn:hover a{color: #fff;}
									 .ex_item .extra_btn:hover b{
										background-position: -27px -57px;
									}
									
									 .ex_item .extra_price{
									    font-size: 16px;
									    color: #d91f20;
									    font-family: verdana;
									    font-weight: 400;
									}
									
									
									/*  end  额外extra div 内容 共通的样式      */
								
									
								</style>
								
								
								<!-- end extra  -->
							
							
							
							
						    	<!-- 额外的内容体tab  start -->
						    	
							    <div class="extra">
										<a class="extra-guessLike item_curr">
											猜你喜欢
										</a>
										<a class="extra-recentSee">
											最近浏览
										</a>
										<a class="extra-attention">
											我的关注
										</a>
								</div>
								
								<!-- end    额外的内容体tab   -->
								
								
								
								
								<!-- 额外的内容DIV    start-->
								<div class="extraContent">
								
											
													<!-- start 幽灵按钮 -->
													
													<div class="extra-page" style="display: block;">    
														  <a href="javascript:void(0)" class="ex-prev">&lt;</a>       
														  <a href="javascript:void(0)" class="ex-next">&gt;</a>   
												    </div>
													
													
													<!-- 幽灵按钮    end  -->
													
													
													
													<!-- 额外的内容(真实内容body)  start-->
													<div class="extraContent_body">
													
																		
														    	<!--  start  猜你喜欢   ====================   -->
																<div class="guesslikeContent" data-pageCount="2" >
																
																    <!-- start  一组    -->
																	<div class="guessSinglegroup tmCommonGroup">
																	
																			<!-- start  单个   -->
																			<div class="ex_item">
																				<div class="extra_img">
																					<img src="//img11.360buyimg.com/n4/s160x160_jfs/t5953/126/983276242/123139/19a852f2/592e3399N5446452e.jpg"
																					width="160px" height="160px" />
																				</div>
																				<div class="extra_name">
																					<span>
																						艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																					</span>
																				</div>	
																				<div class="extra_price">
																					<strong><em>￥</em><i>69.00</i></strong>
																				</div>
																				<div class="extra_btn">
																					<a href="#">
																						<b></b>
																						加入购物车
																					</a>
																				</div>
																			</div>
																			
																			<!-- 单个  end  -->
																			
																			
																			
																			<!-- start 单个  -->
																			<div class="ex_item">
																				<div class="extra_img">
																					<img src="//img11.360buyimg.com/n4/s160x160_jfs/t3307/32/5129177937/444580/89e6e626/5865d422Nf104cd19.jpg"
																					width="160px" height="160px" />
																				</div>
																				<div class="extra_name">
																					<span>
																						艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																					</span>
																				</div>	
																				<div class="extra_price">
																					<strong><em>￥</em><i>69.00</i></strong>
																				</div>
																				<div class="extra_btn">
																					<a href="#">
																						<b></b>
																						加入购物车
																					</a>
																				</div>
																			</div>
																			
																			<!-- 单个  end  -->
																			
																			
																			<!--  start  单个  -->
																			<div class="ex_item">
																				<div class="extra_img">
																					<img src="//img11.360buyimg.com/n4/s160x160_jfs/t3490/310/1645784436/184882/6445dca/582ebdc4N89dd58d7.jpg"
																					width="160px" height="160px" />
																				</div>
																				<div class="extra_name">
																					<span>
																						艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																					</span>
																				</div>	
																				<div class="extra_price">
																					<strong><em>￥</em><i>69.00</i></strong>
																				</div>
																				<div class="extra_btn">
																					<a href="#">
																						<b></b>
																						加入购物车
																					</a>
																				</div>
																			</div>
																			
																			<!-- 单个  end  -->
																			
																			
																			<!-- start   单个  -->
																			<div class="ex_item">
																				<div class="extra_img">
																					<img src="//img10.360buyimg.com/n4/s160x160_jfs/t4858/182/92485352/773279/d9ae834c/58da5d2dN85751dd8.jpg"
																					width="160px" height="160px" />
																				</div>
																				<div class="extra_name">
																					<span>
																						艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																					</span>
																				</div>	
																				<div class="extra_price">
																					<strong><em>￥</em><i>69.00</i></strong>
																				</div>
																				<div class="extra_btn">
																					<a href="#">
																						<b></b>
																						加入购物车
																					</a>
																				</div>
																			</div>
																			
																			<!-- 单个  end  -->
																	</div>
																	
																	 <!--  一组    end  -->
																	 
																	 
																	 
																	 
																	  <!--  start 一组      -->
																	 
																	 <div class="guessSinglegroup tmCommonGroup">
																	 
																					<!-- start  单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img10.360buyimg.com/n4/s160x160_jfs/t4858/182/92485352/773279/d9ae834c/58da5d2dN85751dd8.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div>
																					
																					<!-- 单个  end  -->
																					
																					
																					
																					<!-- start  单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img11.360buyimg.com/n4/s160x160_jfs/t5617/298/860778867/208296/93231a90/592251a5N84b3adb6.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div>
																					
																					<!-- 单个  end  -->
																					
																					
																					<!--  start 单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n4/s160x160_jfs/t3100/199/5384147744/444276/a0a39b2e/586ca1a7Nc37b4768.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div>
																					
																					<!-- 单个  end  -->
																					
																					
																					<!-- start   单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n4/s160x160_jfs/t3229/127/5148887812/481736/7fbe0c73/5865e02fNd3e3c8f3.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div>
																					
																					<!-- 单个  end  -->
																	 
																	 </div>
																	 
																	   <!--   一组  end     -->
																	 
																	
																	
																</div>
																
																<!--  猜你喜欢  end -->
																
																
																
																<!-- ===================================================== -->
																
																
																<!-- 最近浏览  start -->
																<div class="recentSeeContent"  data-pageCount="3">
																
																
																	 <!-- start  一组    -->
																	<div class="guessSinglegroup tmCommonGroup">
																		
																					<!-- start  单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n4/s160x160_jfs/t4024/97/1009506149/242270/19b6c90/5866195dNb3c7d925.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					
																					<!-- start  单个  -->
																				 	<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img13.360buyimg.com/n4/s160x160_jfs/t3913/227/492376478/440635/7e315c0e/5850b118N74f649a5.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!--  start 单个  -->
																					 <div class="ex_item">
																						<div class="extra_img">
																							<img src="//img10.360buyimg.com/n4/s160x160_jfs/t4627/196/3643320542/393677/95eaa542/59018657N85548675.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!-- start   单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img11.360buyimg.com/n4/s160x160_jfs/t3136/279/407690607/385778/8eae0606/57b434f6N75abe37a.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																		
																		</div>
																		
																		<!-- 一组  end  -->
																		
																		
																		
																		
																		 <!-- start  一组    -->
																	<div class="guessSinglegroup tmCommonGroup">
																		
																					<!-- start  单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n1/s160x160_jfs/t499/77/224710997/118875/1ecba666/54575c66N403d1237.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					
																					<!-- start  单个  -->
																				 	<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img11.360buyimg.com/n4/s160x160_jfs/t2689/10/4226899160/314552/e94acdda/57b27230N22c42f00.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!--  start 单个  -->
																					 <div class="ex_item">
																						<div class="extra_img">
																							<img src="//img10.360buyimg.com/n4/s160x160_jfs/t3184/88/233644523/271559/21f538f5/57ac33d7Nc16466c3.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!-- start   单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n4/s160x160_jfs/t3481/346/2374567591/159192/994a1640/584e4949Na76fab78.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																		
																		</div>
																		
																		
																		<!-- 一组  end  -->
																		
																		
																		
																		
																		
																		
																		
																		
																		
																		 <!-- start  一组    -->
																	<div class="guessSinglegroup tmCommonGroup">
																		
																					<!-- start  单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img11.360buyimg.com/n8/jfs/t5629/323/2798956788/186309/7ed22ba0/5934cc2bN2a1f1f47.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					
																					<!-- start  单个  -->
																				 	<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img13.360buyimg.com/n8/jfs/t5491/305/1424298148/57894/1c6430e9/590fdf2aNc370f821.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!--  start 单个  -->
																					 <div class="ex_item">
																						<div class="extra_img">
																							<img src="//img13.360buyimg.com/n8/jfs/t5689/181/4143017673/371920/f7186936/5947bcd3Nb6a61997.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																					
																					
																					<!-- start   单个  -->
																					<div class="ex_item">
																						<div class="extra_img">
																							<img src="//img12.360buyimg.com/n8/jfs/t5755/29/2390534681/424440/17041209/593029e8N5403d64e.jpg"
																							width="160px" height="160px" />
																						</div>
																						<div class="extra_name">
																							<span>
																								艾路丝婷夏装2017防晒衣休闲中长款女外套开衫宽松空调衫Y0855 白色 155/80A/S
																							</span>
																						</div>	
																						<div class="extra_price">
																							<strong><em>￥</em><i>69.00</i></strong>
																						</div>
																						<div class="extra_btn">
																							<a href="#">
																								<b></b>
																								加入购物车
																							</a>
																						</div>
																					</div> 
																					
																					<!-- 单个  end  -->
																		
																		</div>
																		
																		
																		<!-- 一组  end  -->
																		
																		
																</div>
																
																
																
																<!-- ===================================================== -->
																
																<!-- 我的关注 -->
																<div class="attentionContent">
																    	<div class="inn">
																    		<a href="javascript:void(0);" class="login-in">
																    			登录
																    		</a>后将显示您之前关注的商品
																    	</div>
																</div>
													
													
													</div>
													<!-- 额外的内容(真实内容body)  start-->
										
								 </div>
								
								<!-- end  额外的内容DIV   -->
							
							