<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/commons/taglib.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- start: CSS -->
	<!--  项目共通 css -->
	<link rel="stylesheet" type="text/css" href="css/yc_common/yc_common.css"/>
	
	<!-- 阿里 icon 在线自定义图标仓库 (绑定账号) --记得每次更新图标仓库后要重新生成连接替换下面 -->
	<link rel="stylesheet" type="text/css" href="http://at.alicdn.com/t/font_uut0ebcee63tmx6r.css"/>
	
	<!-- cart calculator -->
	<link rel="stylesheet" type="text/css" href="css/widget/cart_calculator.css"/>

	<!-- 封装完毕的 指定滑轮特效 -->	
	<link rel="stylesheet" type="text/css" href="css/widget/yc_toTop.css"/>
	
	
	<!-- <link id="base-style" href="css/style.css" rel="stylesheet"> -->
	<link id="base-style" href="css/animate.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="js/sg/css/tz-loading.css">

	
	<style>
	
		
		/************************  start  cart-wrap和 cart_theader  **********************************/
	
		*{margin:0;padding:0;}
		.container{width:990px;margin:30px auto;height:1200px;}
		.container .w{ width: 990px; margin: 0 auto;}
		.container .w .mb10{ margin-bottom: 10px;}
		.container .w .nologin-tip{
			    background: #fffdee;
			    padding: 10px 20px;
			    line-height: 25px;
			    margin-bottom: 20px;
			    color: #f70;		
		}
		.nologin-tip:hover a{transition:all 0.5s ease;transform:scale(1.1);}
		
	
		.container .w .nologin-tip .wicon{
				display: inline-block;
			    vertical-align: middle;
			    margin-right: 10px;
			    width: 16px;
			    height: 16px;
			    overflow: hidden;
			    background: url(//misc.360buyimg.com/user/cart/css/i/icon16.png) 0 0 no-repeat;
		}
		.btn-1{
				font-family: arial,"Microsoft YaHei";
			    display: inline-block;
			    height: 25px;
			    line-height: 25px;
		   		background-color: #e74649;
				background-image: linear-gradient(to top,#e74649 0,#df3134 100%);
			    border-radius: 3px;
			    color: #fff;
			    font-size: 12px;
			    font-weight: 400;
			    padding: 0 10px;
			    vertical-align: middle;
			    cursor: pointer;
			    border: 0;
			    float: none;
			    transition: all .2s ease-out;
		}
		
		.cart-warp .cart .cart-thead{   
				display: inline-block;
			    display: block;
			    height: 32px;
			    line-height: 32px;
			    margin: 0 0 10px;
			    padding: 5px 0;
			    background: palevioletred;
			    border-top: 0;
			    position: relative;
			    box-shadow: 5px 4px 1em #666;
			    border-radius:10px;
			    color: #fff;
   			    text-shadow: 1px 1px 1px #FFF;
	   }
	   .cart-warp{width:990px;height:height:100%;}
	   .cart-warp .cart .cart-thead .column{float:left;}
	   .cart-checkbox{
			    position: relative;
			    z-index: 3;
			    float: left;
			    margin-right: 5px;
	   }
	  .jdcheckbox{
	  	    float: none;
		    position: relative;
		    z-index: 5;
		    vertical-align: middle;
		    _vertical-align: -1px;
		    margin: 0 3px 0 0;
		    padding: 0;
		    cursor:pointer;
	  }
	   
	   .cart-warp .cart .cart-thead .t-checkbox{
	   			height: 18px;
			    line-height: 18px;
			    padding-top: 7px;
			    width: 122px;
			    padding-left: 11px;
	   }
	   
	   .cart-checkbox label {
		    display: none;
		}
	   
	  	 .cart-warp .cart .cart-thead .t-goods{
	   		  width: 224px;
	   		  text-align:center;
	   }

	     .cart-warp .cart .cart-thead .t-price{
	   		width: 120px;
		    padding-right: 40px;
		    text-align: right;
	   }
	     .cart-warp .cart .cart-thead .t-quantity{
	   		width: 140px;
  			text-align: center;
	   }
	 
	    .cart-warp .cart .cart-thead .t-sum{
	        width: 72px;
		    padding-right: 40px;
		    text-align: right;
		}
		
	 	.cart-warp .cart .cart-thead .t-action{
	   		  width: 204px;
  			  text-align: center;
	   }
	   
	   .item-list{
	   		border-style: solid;
		    border-width: 2px 1px 1px;
		    _border-width: 1px;
		    border-color: #aaa #f1f1f1 #f1f1f1;
		    background: #fff;
	   }
	   
	   
	   /************************    cart-wrap和 cart_theader  end  **********************************/
	   
	   
	   
	   
				/**********************************  start   搜索区域  ****************************************************/	  
					
					.search{    
						width: 990px;
					    height: 40px;
					    margin: 30px auto 3px;
					    position:relative;
					    background: #fff;
		    			box-shadow: 1px 1px 8px #888;
		    			border-radius: 10px;
					}
					
					.search div b{   
						display: block;
					    position: absolute;
					    width: 100px;
					    height: 40px;
					    line-height: 99em;
					    top: 0;
					    left: 0;
					    background: url(//misc.360buyimg.com/user/cart/widget/header-2015/i/cart-icon.png) #fff no-repeat;
					    animation:cartLogoMove 5s ease infinite alternate;
					 }
					
					 .search .cart_search{
					 	width: 456px;height:48px;
					 	line-height: 48px;
					    right: 0px;
		    			position: absolute;
		    			top:-2px;
		    		 }
		    		 
		    		 
		    		 .search .cart_search .searchTxt{
		    		 	padding: 9px 0px;
					    float: none;
					    margin-top: 0px;
					    clear: both;
					    border: 2px solid #ccc;
					    color: #989898;
					    font-weight: bold;
					    font-family: "楷体";
					    font-size: 18px;
					    width: 388px;
					    border-radius: 10px;
					 }
		    		 
		    		 
		    		 .search .cart_search  .searchBtn{
		    		        padding: 0px;
						    width: 57px;
						    margin-bottom: 8px;
						    margin-left: 0px;
						    background: rgba(0,0,0,0.3);
						    border: 1px solid #111;
						    box-shadow: 1px 1px 5px #111;
						    font-family: "楷体";
						    font-size: 16px;
						    font-weight: bold;
						    text-shadow: 0px 0px 7px #777;
						    height: 37px;
   						    line-height: 37px;
   						    cursor:pointer;
		    		 }
    		
    		
    				 @keyframes cartLogoMove{
						from{left:0px;}
						to{left:450px;}
					}	
	     
	     
				/********************************** 搜索区域    end ****************************************************/	  
	     
	   			
	   			
	   			
	   			
	   			
	   			
					/**************************  start  cart-body  ***********************************/
				
				
					.item-full{width:100%;}
					.f-price{
							float: left;
						    min-width: 100px;
						    text-align: right;
						    font-family: verdana;
						    line-height: 13px;
						    color: #333;
					}
					.item-selected{background:#fff4e8;}
					.cart-tbody .item-item{
							    position: relative;
							    padding: 0 10px 1px 10px;
							    border-top: 1px solid #c5c5c5;
							    line-height: 20px;
							    _height: 116px;
							    height:120px;
							    background: linear-gradient(to left,#fff,pink 30%,pink 70%,#fff 100%);
							    box-shadow: 5px 6px 1em #111;
							    margin-bottom: 10px;
					}
					.item-full .item-form{border-top: 1px solid #f1f1f1;cursor:pointer;}
					
					.cart-tbody .cell{
						 float: left;
 								 padding: 8px 0 8px;
 								
 								 
					}
					
					.cart-item-list .item-form .p-checkbox{
						height: 26px;
					    line-height: 100px;
					    padding-top: 49px;
					    width: 33px;
					    cursor:pointer;
				     }
				        
				     .cart-item-list .item-form .p-checkbox input{
				          width: 17px;
  						  height: 17px;
  						  cursor:pointer;
				     } 
				        
				     
					.cart-item-list .item-form .p-goods{ width: 345px;}
					.cart-item-list .item-form .p-price{ width: 120px; padding-right: 40px;text-align: center;line-height: 80px; }
					.cart-item-list .item-form .p-quantity{ width: 85px;text-align: center; line-height:80px;line-height: 80px;  }
					.cart-item-list .item-form .p-sum{width: 168px;  padding-right: 40px;text-align: center;line-height: 80px; }
					.cart-item-list .item-form .p-action{  
					    width: 133px;
					    line-height: 7px;
					    margin-top: 10px;
					    box-shadow: 1px 1px 7px #111;
					    text-align: center;
					    border-radius: 17px;
					    background: linear-gradient(to right, pink 80%,#fff 100%);
					    font-weight: bold;
					    color: #555;
					    text-shadow: 1px 2px 5px #e6e6e6;
					    transition:all 0.6s ease;
				    }
				    .cart-item-list .item-form .p-action:hover{transition:all 0.6s ease;transform:scale(1.15);}
					.cart-item-list .item-form .cart_main .p-isStock{ position: relative ; top: -28px;}
					  
					
					.p-img{width:100px;height:100px;overflow:hidden;}
					.p-img img{width:87px;height:87px;border-radius:50%;}
					.p-name{width:200px;height:100px;margin-left: 10px;overflow:hidden;}
					.p-name a{color:#555;font-family:"楷体";
				     text-shadow:0px 1px 1px #111;font-size:16px;text-decoration:none;}
				     
				     
				     
				     
				     /************************** cart-body  end ***********************************/
				     
				     
				     
				     
				     	/**************************  start  cart-footer  ***********************************/
						
						.cart-floatbar{ height: 53px;line-height:53px;padding:10px 3px;}
						.cart-floatbar .item-checkbox{width:70px;margin-left:10px;}
						.cart-floatbar .cellSp{float:left;margin-left:30px}
						.cart-floatbar .footerOperation a{cursor:pointer;text-decoration:none;margin-left:10px;}
						.cart-floatbar .footerOperation a:hover{color:#e4393c;transform:scale(1.2);transition:all 0.5s ease;}
						.amount-sum{width:277px;height:53px;line-height:53px; text-align: center;}
						.amount-sum b{
								display: inline-block;
							    width: 11px;
							    height: 5px;
							    background: url(//misc.360buyimg.com/user/cart/css/i/cart-icons-2017.png) -45px -91px;
							    overflow: hidden;
							    vertical-align: middle;
							    margin: -5px 0 0 5px;
							    -webkit-transition: all .2s ease-in 0s;
							    transition: all .2s ease-in 0s;
							    cursor:pointer;
							    z-index:10000;
							    position:relative;
						}
						.amount-sum b:hover{transform:scale(2);transition:all 0.4s ease;}
						.amount-sum a{cursor:pointer;text-decoration:none;color:#111;font-weight:bold;}
						.amount-sum a span{font-size:16px;color:red;font-weight:bold;}
						.price-sum{width:199px;height:53px;line-height:53px; text-align: center;}
						.price-sum span{color:red;font-weight:bold;font-size:20px;}
						.btn-area{width:96px;height:52px;float:right; margin-right: 10px;}
						.btn-area  a{position:relative;cursor:pointer;}
						.btn-area a b{
							position:absolute;
							width: 96px;
						    height: 52px;
						    top: 0;
						    left: 0;
						    overflow: hidden;
						    background: url(//misc.360buyimg.com/user/cart/css/i/cart-submit-btn.png) 0 0 no-repeat;
							display:block;
						}
						
						/* start  弹出 所选择 商品的 阴影层 */
						.cart-footer{position:relative;box-shadow: 5px 5px 11px #777; margin-top: 5px;}
						.cart-footer .selectedProductDiv{
							position: absolute;
						   /*  top: -109px;
						    left: 0px; */
						    bottom:84px;
						    left:0px;
						    width: 990px;
						    height: 0px;
						   /*  background:rgba(102,102,102,.65); */
						    background: rgba(0,0,0,.56);
						    overflow: hidden;
						}
						
						.cart-footer .selectedProductDiv .selectedProductSum{
							color: #eee;
						    margin-left: 33px;
						    font-weight: bold;
						    position: relative;
						    text-shadow: 1px 1px 1px #111;
						    margin-top: 3px;
						}
						
						.cart-footer .selectedProductDiv  .p_ullist{width:990px;overflow:hidden;margin: 1px auto;}
						.cart-footer .selectedProductDiv  .p_ullist  ul{height:72px;width: 2000%; position: relative;}
						
						.cart-footer .selectedProductDiv  .p_ullist  ul div{position:absolute;width:990px;height:100%;padding:0px 26px;}
						.cart-footer .selectedProductDiv  .p_ullist  ul div li{float:left; text-align: center;line-height: 72px;
						list-style:none; margin-left:21px;cursor:pointer;}
						
							
						 	.selectedProductDiv  .selected-inner{position:relative;}
							.selectedProductDiv  .selected-inner .prev{
								    position: absolute;
							    display: block;
							    width: 15px;
							    height: 23px;
							    top: 55%;
							    margin-top: -11px;
							    margin-left: 9px;
							    background: url(//misc.360buyimg.com/user/cart/css/i/cart-icons-2017.png) 0 -114px no-repeat;
							    overflow:hidden;
							    z-index:9;
							}
							.selectedProductDiv .selected-inner .next{
									position: absolute;
							    display: block;
							    width: 15px;
							    height: 23px;
							    top: 55%;
							    right:2%;
							    margin-top: -11px;
							    background: url(//misc.360buyimg.com/user/cart/css/i/cart-icons-2017.png) -15px -114px no-repeat;
							    overflow: hidden;
							    z-index:9;
							} 
							
						/*   弹出 所选择 商品的 阴影层  end */
						
						
						.cartFooterShow{animation:cartFooterShow 0.7s ease forwards;}
						.cartFooterHidden{animation:cartFooterHidden 0.6s ease  forwards;}
						
						
						@keyframes cartFooterShow{
							from{height:0px;}
							to{height:110px;}
						}
						@keyframes cartFooterHidden{
							from{height:110px;}
							to{height:0px;}
						}
						
						
						
					 /************************** end  cart-footer ***********************************/
	   			
	   			
		
		
	</style>



</head>
<body>
			<style>
				/*  start 搜索副本  */
				.replica_search_main{width:100%;height:40px;position:fixed;top:1px;left:0px;z-index:13;display:none;}
				.replica_search_main .search{width:990px;height:40px;margin:1px auto;}
				.replica_search_main .tmp_search{margin: 3px auto 3px;}
			    /*  搜索副本  end  */
			</style>

		
		   <div class="replica_search_main">
		   		<div class="search tmp_search">
		   			<div>
						<b></b>
					</div>
					
				   <div class="cart_search">
						<input class="searchTxt" type="text" />
						<input class="searchBtn" type="button"  id="search_btn" value="搜索"/>
					</div>
		   		</div>
		   </div>
		   <div class="navbar">
				 <%@include file="/commons/top_menu_product.jsp" %>  
		   </div>
			
			
		   <div class="search">
				<div>
					<b></b>
				</div>
				
			   <div class="cart_search">
					<input class="searchTxt" type="text" />
					<input class="searchBtn" type="button"  id="search_btn" value="搜索"/>
				</div>
		   </div>
	
	
		
	
		<!-- container 开始 -->
			<div class="container">
			
			
				<div class="w">
					<div id="chunjie" class="mb10"></div>
					<div class="nologin-tip">
						<span class="wicon"></span>
						您还没有登录！登录后购物车的商品将保存到您账号中
						<a class="btn-1 ml10" href="#none" style="text-decoration:none;">立即登录</a>
					</div>
				</div>
				
				<!--  cart-warp  开始 -->
					<div class="cart-warp">
						<div class="w"></div>
						
						<!--  cart  开始 -->
						<div class="cart">
							
								<div class="cart-thead">
									<div class="column t-checkbox">
										<div class="cart-checkbox">
											<input type="checkbox" checked="checked" id="theader_chkbox"  class="jdcheckbox" >
											<label class="checked" for="">勾选全部商品</label>
										</div>
										全选
									</div>
									<div class="column t-goods">商品</div>
									<div class="column t-price">单价</div>
									<div class="column t-quantity">数量</div>
									<div class="column t-sum">小计</div>
									<div class="column t-action">操作</div>
								</div>
								
								
								
								<div class="cart-item-list">
									<div class="cart-tbody">
										<div class="item-list">
											<div class="item-full">
											
											<!-- .item-item start -->
											
												<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="sku-chk00001" name="toggle-checkboxes" class="jdcheckbox" >
															</div>
															<div class="cell p-goods">
																<div class=" cell p-img">
																	<img  src="//img10.360buyimg.com/cms/s80x80_jfs/t6520/245/556815199/230756/eee5b958/594157b0Ne067cd85.jpg"  />
																</div>
																<div class="cell p-name"><a>纤麦大码女装夏新款胖mm时尚淑女图案短
																 4XL宝蓝色预售6.21发货</a></div>
															</div>
															<div class="cell p-price">
																<strong>¥129.00</strong>
															</div>
															<div class="cell p-quantity">
															
																	 <div class="cart_main">
																	 	<div class="submain">
																		 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																			 	<i class="iconfont imgMinus icon-minus"></i>
																		 	 </div>
																			 <div class="shuliang" id="shuliang" >
																			 	<span id="tmpUp" class="tmpUp">
																			 		1
																			 	</span>
																			 	<span id="mainDiv" class="mainDiv">
																			 		1
																			 	</span>
																			    <span id="tmpDown" class="tmpDown">
																			 		1
																			 	</span>
																			 </div>
																			   <div class="increment crFix"  onclick="cartCalc.increment(this);">
																		     		<i class="iconfont icon-plus"></i>
																		       </div>
																	 	</div>
																 		<span class="p-isStock">有货</span>
																    </div>
															
															
															</div>
															<div class="cell p-sum">
																			1121										
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
														
														
												</div>
												
												
												<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="sku-chk00002" name="toggle-checkboxes" class="jdcheckbox" >
															</div>
															<div class="cell p-goods">
																<div class=" cell p-img">
																	<img  src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg"  />
																</div>
																<div class="cell p-name"><a>纤麦大码女装夏新款胖mm时尚淑女图案短
																 4XL宝蓝色预售6.21发货</a></div>
															</div>
															<div class="cell p-price">
																<strong>¥129.00</strong>
															</div>
																<div class="cell p-quantity">
															
																	 <div class="cart_main">
																	 	<div class="submain">
																		 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																				 <i class="iconfont imgMinus icon-minus"></i>
																		 	 </div>
																			 <div class="shuliang" id="shuliang" >
																			 	<span id="tmpUp" class="tmpUp">
																			 		1
																			 	</span>
																			 	<span id="mainDiv" class="mainDiv">
																			 		1
																			 	</span>
																			    <span id="tmpDown" class="tmpDown">
																			 		1
																			 	</span>
																			 </div>
																			   <div class="increment crFix"  onclick="cartCalc.increment(this);">
																		     		<i class="iconfont icon-plus"></i>
																		       </div>
																	 	</div>
																 		<span class="p-isStock">有货</span>
																    </div>
															
															
															</div>
															<div class="cell p-sum">
																			1121										
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
												</div>
												
												
												
													<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="sku-chk00003" name="toggle-checkboxes" class="jdcheckbox" >
															</div>
															<div class="cell p-goods">
																<div class=" cell p-img">
																	<img  src="//img10.360buyimg.com/cms/s80x80_jfs/t3877/80/1870019531/354511/c12f6e15/589d27cdN2dde2c55.jpg"  />
																</div>
																<div class="cell p-name"><a>纤麦大码女装夏新款胖mm时尚淑女图案短
																 4XL宝蓝色预售6.21发货</a></div>
															</div>
															<div class="cell p-price">
																<strong>¥129.00</strong>
															</div>
																<div class="cell p-quantity">
															
																	 <div class="cart_main">
																	 	<div class="submain">
																		 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																			 	<i class="iconfont imgMinus icon-minus"></i>
																		 	 </div>
																			 <div class="shuliang" id="shuliang" >
																			 	<span id="tmpUp" class="tmpUp">
																			 		1
																			 	</span>
																			 	<span id="mainDiv" class="mainDiv">
																			 		1
																			 	</span>
																			    <span id="tmpDown" class="tmpDown">
																			 		1
																			 	</span>
																			 </div>
																			   <div class="increment crFix"  onclick="cartCalc.increment(this);">
																		    	  <i class="iconfont icon-plus"></i>
																		       </div>
																	 	</div>
																 		<span class="p-isStock">有货</span>
																    </div>
															
															
															</div>
															<div class="cell p-sum">
																			1121										
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
											    	</div>
											    	
											    	
											    	
											    	
											    	
													<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="sku-chk00004" name="toggle-checkboxes" class="jdcheckbox" >
															</div>
															<div class="cell p-goods">
																<div class=" cell p-img">
																	<img  src="//img11.360buyimg.com/n5/s50x64_jfs/t5989/329/1001743310/112899/50ec4245/592e33d7N3a3bd2ec.jpg!cc_50x64.jpg"  />
																</div>
																<div class="cell p-name"><a>纤麦大码女装夏新款胖mm时尚淑女图案短
																 4XL宝蓝色预售6.21发货</a></div>
															</div>
															<div class="cell p-price">
																<strong>¥129.00</strong>
															</div>
																<div class="cell p-quantity">
															
																	 <div class="cart_main">
																	 	<div class="submain">
																		 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																			 	<i class="iconfont imgMinus icon-minus"></i>
																		 	 </div>
																			 <div class="shuliang" id="shuliang" >
																			 	<span id="tmpUp" class="tmpUp">
																			 		1
																			 	</span>
																			 	<span id="mainDiv" class="mainDiv">
																			 		1
																			 	</span>
																			    <span id="tmpDown" class="tmpDown">
																			 		1
																			 	</span>
																			 </div>
																			   <div class="increment crFix"  onclick="cartCalc.increment(this);">
																		    	  <i class="iconfont icon-plus"></i>
																		       </div>
																	 	</div>
																 		<span class="p-isStock">有货</span>
																    </div>
															
															
															</div>
															<div class="cell p-sum">
																			1121										
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
											    	</div>
											    	
												<!-- .item-item end -->
												
												
												
											</div>
										</div>			
									</div>
								</div>
								
								
								
								<div class="cart-footer animated bounceInDown">
									<div class="cart-floatbar">
											<div class="item-checkbox cellSp" style="margin-left: 6px;">
													<input type="checkbox" checked="checked" id="tfooter_chkbox" name="" class="jdcheckbox" >
													<span>全选</span>
											</div>					
											<div class="footerOperation cellSp">
												<a>删除选中的商品</a>
												<a>移动到我的关注</a>
											</div>	
											<div class="amount-sum cellSp">
												<a>已选择 <span>12</span> &nbsp;件商品</a>
												<b class="up" id="selproductBtn"></b>
											</div>
											<div class="price-sum cellSp">
												总价: 
												<span style="font-size:16px;">¥</span>
												<span id="totlePrice"> 30010.00 元 </span>
											</div>
											<div class="btn-area">
												<a href="#">
													<b></b>
												</a>
											</div>
									</div>
									<div class="selectedProductDiv" id="selectedProductDiv">
											<div class="selected-inner">
												<a href="javascript:void(0);" id="prev" class="prev"></a>
												<a href="javascript:void(0);" id="next" class="next"></a>
												<div class="selectedProductSum">
													普通商品<span style="color:red;">11</span>件
												</div>
												<div class="p_ullist">
													<ul>
														<div style="left:0px;">
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
														</div>
														<div style="left:990px;">
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
														</div>
														
														<div style="left:1980px;">
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t5140/285/114714888/442853/32af7382/58f8a5eaN885ff3a1.jpg" width="69px" 
															height="74px"/></li>
															<li><img src="//img10.360buyimg.com/cms/s80x80_jfs/t2701/31/2975990817/261037/e8fa0b01/577b9f85N755c7a3a.jpg" width="69px" 
															height="74px"/></li>
														</div>
													</ul>
												</div>
											</div>
									</div>
									
								</div>
							
							
							  <%--  <%@include file="extra.jsp" %>   --%>
							  
							   <!-- 额外部分 -->
							  <jsp:include flush="true" page="extra.jsp"></jsp:include> 
							  
							
							</div>
					
						<!--  结束  cart   -->
					
					</div>
				<!-- 结束   cart-warp -->
			</div>
			<!-- 结束  container  -->
	
	
	
	<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script> 
	<script type="text/javascript" src="${basePath}/js/sg/sgutil.js"></script>
	<script type="text/javascript" src="${basePath}/js/sg/sg.js"></script> 
	<script type="text/javascript" src="${basePath}/js/widget/cart_calculator.js"></script>
	<script type="text/javascript" src="js/widget/yc_toTop.js"  charset="utf-8"></script>
	<script>
		 	
			   
			
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
								 $(".cart-tbody .item-list .item-item").find(".jdcheckbox").each(
										 function(item){
											 $(this).prop("checked",mainChk);		 
										 }
								 );
								 
						});
						
						
						// cart里 的 每项 单独勾选 
						$(".cart-tbody .item-list .item-item").find(".jdcheckbox").click(function(){
							     
							      var selfChk = $(this).prop("checked");
							      $(this).prop("checked",selfChk);
							     
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
			</script>
	
	
</body>
</html>