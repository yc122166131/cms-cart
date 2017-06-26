<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/commons/taglib.jsp" %>   
<%@include file="/commons/public.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>Bootstrap Metro Dashboard by Dennis Ji for ARM demo</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="css/bootstrap.min.css" rel="stylesheet">
	<link id="base-style" href="css/style.css" rel="stylesheet">
	<link id="base-style" href="css/animate.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/widget/cart_calculator.css"/>
	

	<!-- end: CSS -->
	<style>
		*{margin:0;padding:0;}
		body{}
		div{display:block;}
		.container{width:990px;margin:30px auto;height:300px;}
		.container .w{ width: 990px; margin: 0 auto;}
		.container .w .mb10{ margin-bottom: 10px;}
		.container .w .nologin-tip{
			    background: #fffdee;
			    padding: 10px 20px;
			    line-height: 25px;
			    margin-bottom: 20px;
			    color: #f70;		
		}
	
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
	   .cart-warp{}
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
	     
	   
	</style>

</head>

<body>
		
			
		    <div class="navbar">
			 <%@include file="/commons/top_menu_product.jsp" %>  
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
											<input type="checkbox" checked="checked" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" >
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
								
								
								
								<style>
								
									.item-full{}
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
									
									.cart-item-list .item-form .p-checkbox{height: 100px;
									    line-height: 100px;
									    padding-top: 7px;
									    width: 33px;
								     }
									.cart-item-list .item-form .p-goods{ width: 345px;}
									.cart-item-list .item-form .p-price{ width: 120px; padding-right: 40px;text-align: right;line-height: 80px; }
									.cart-item-list .item-form .p-quantity{ width: 85px;text-align: center; line-height:80px;line-height: 80px;  }
									.cart-item-list .item-form .p-sum{width: 168px;  padding-right: 40px;text-align: center;line-height: 80px; }
									.cart-item-list .item-form .p-action{ width: 133px; line-height: 7px;margin-top:10px;}
									.cart-item-list .item-form .cart_main .p-isStock{ position: relative ; top: -28px;}
									  
									
									.p-img{width:100px;height:100px;overflow:hidden;}
									.p-img img{width:87px;height:87px;border-radius:50%;}
									.p-name{width:200px;height:100px;margin-left: 10px;overflow:hidden;}
									.p-name a{color:#555;font-family:"楷体";
								     text-shadow:0px 1px 1px #111;font-size:16px;text-decoration:none;}
								
								</style>
								<div class="cart-item-list">
									<div class="cart-tbody">
										<div class="item-list">
											<div class="item-full">
											
											<!-- .item-item start -->
											
												<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" >
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
															<div class="cell p-quantity">11</div>
															<div class="cell p-sum">
																
																 <div class="cart_main">
																 	<div class="submain">
																	 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																		 	<img  src="img/minus.png" width="25px" height="25px" class="imgMinus"/>
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
																	     <img  src="img/plus.png" width="25px" height="25px" /></div>
																 	</div>
																 	<span class="p-isStock">有货</span>
																 </div>
																													
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
														
														
												</div>
												
												
												<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" >
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
															<div class="cell p-quantity">11</div>
															<div class="cell p-sum">
																
																 <div class="cart_main">
																 	<div class="submain">
																	 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																		 	<img  src="img/minus.png" width="25px" height="25px" class="imgMinus"/>
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
																	     <img  src="img/plus.png" width="25px" height="25px" /></div>
																 	</div>
																 	<span class="p-isStock">有货</span>
																 </div>	
																													
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
												</div>
												
												
												
													<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" >
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
															<div class="cell p-quantity">11</div>
															<div class="cell p-sum">
																
																 <div class="cart_main">
																 	<div class="submain">
																	 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																		 	<img  src="img/minus.png" width="25px" height="25px" class="imgMinus"/>
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
																	     <img  src="img/plus.png" width="25px" height="25px" /></div>
																 	</div>
																 	<span class="p-isStock">缺货</span>
																 </div>														
																													
															</div>
															<div class="cell p-action">删除</div>
															<div class="cell p-action">移到我的关注</div>
															<div class="cell p-action">加到我的关注</div>
														</div>
											    	</div>
											    	
											    	
											    	
											    	
											    	
													<div class="item-last item-item item-selected  ">
														<div class="item-form">
															<div class="cell p-checkbox">
																<input type="checkbox" checked="checked" id="toggle-checkboxes_up" name="toggle-checkboxes" class="jdcheckbox" >
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
															<div class="cell p-quantity">11</div>
															<div class="cell p-sum">
																
																 <div class="cart_main">
																 	<div class="submain">
																	 	 <div  class="decrement clFix" id="decrement" onclick="cartCalc.decrement(this);">
																		 	<img  src="img/minus.png" width="25px" height="25px" class="imgMinus"/>
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
																	     <img  src="img/plus.png" width="25px" height="25px" /></div>
																 	</div>
																 	<span class="p-isStock">缺货</span>
																 </div>														
																													
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
								
								
								
								<style>	
								
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
										
										.cart-footer .selectedProductDiv  .p_ullist  ul div{position:absolute;width:990px;height:100%;padding:3px;}
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
										
										
								</style>
								
								
								<div class="cart-footer">
									<div class="cart-floatbar">
											<div class="item-checkbox cellSp" style="margin-left: 6px;">
													<input type="checkbox" checked="checked" id="" name="" class="jdcheckbox" >
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
									}
										
									.extraContent .extra-page .ex-next{
										right:0px;
									}									
									
									/*  额外的内容 的 左右两边的   (幽灵)按钮  end  */
								
									
									
									 
									
									/* start 猜你喜欢  */
									
									.extraContent .guesslikeContent{
										width:100%;
										height:326px;
										margin-top: -3px;
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
									}
									
									 .ex_item .extra_name{
										height: 61px;
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
																<div class="recentSeeContent">
																
																
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
							
							
							</div>
					
						<!--  结束  cart   -->
					
					</div>
				<!-- 结束   cart-warp -->
			</div>
			<!-- 结束  container  -->
			
			
			<script src="js/widget/cart_calculator.js" type="text/javascript" charset="utf-8"></script>
			<script>
				$(function(){
						
						/* 增加 页面进入 特效  */
						$(".cart-thead").addClass("animated fadeInDownBig");
						$(".item-item").addClass("animated  bounceInUp");
					
						
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
							
							
							
							//向上弹出 层  左 右 按钮 
							var totleCount = 35;
							var pageCount = parseInt(35/10);  //总共有多少页(推屏)
							var i = 0;
							$("#next").click(function(){
								
								//处理正在运动中的 元素 (必须等待正在运动中的元素 运动完毕之后才可以进行下一步的 操作)
								if(!$(".p_ullist").find("ul").is(":animated")){
									if(i == pageCount-1){
										loading("已经是最后一页了!",2);
										return;
									} 
									i++;
									$(".p_ullist").find("ul").animate({left:"-"+(990*i)+"px"},1000,function(){}
			 						);
								}
							});
							
							$("#prev").click(function(){
								
								if(!$(".p_ullist").find("ul").is(":animated")){
									
										if(i == 0){
											loading("已经到第一页了!",2);
											return;
										} 
										i--;
										$(".p_ullist").find("ul").animate({left:"-"+(990*i)+"px"},1000,function(){}
				 						);
								}
							});
					
					      /* end  向上弹出购物车层    */
					
					
					
					
							/*  extra(额外内容)   start  */
					
							$(".extra a").hover(function(){
								$(this).addClass("item_curr").siblings("a").removeClass("item_curr");
								//console.log($(this).index()); //因为 这个("extra a") 选择器查询出来的 多个 <a>标签,
								// 我们就可以进行index()去获取 每个a标签 所在的 索引
								
								var tab_index = $(this).index(); //下面的 content 要和 上面的 tab 的索引 值是一致的 
								//第一种写法
							 	$(".extraContent .extraContent_body > div").eq(tab_index).css("display","block")
									.siblings("div").css("display","none"); 
								
								
								
								// 最近浏览 (无商品时)的 显示 
							/* 	$(".recentSeeContent").addClass("recentSeeContent_noProduct")
									.html("<div class=\"inn\">暂时无结果</div>");
								 */
								
								 
							});
								
					     	
					      
					         
					         var $ex_tab = ""; // 全局变量 (用来存储 每次 幽灵按钮 按下后 取到了 哪个tab [用filter 方法 根据 index()或者class属性来获取] )
					         var max_page = 1 ;// 每个tab的body体  默认 切屏数为 1 页  (根据后台传来的数据 缓存到  data-pageCount 属性 )
					         var startPage = 1 ; //每个 tab 的 body体 内的 页数 的 初始值 为 1;
					         
					         
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
					      			loading("已经是第一页了!",2);
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
					      		 
					      		 //console.log(ex_tab.attr("class")); 
					      		 //alert($ex_tab.index()); //显然获取到 index 更加简便
					      		 
					      		 
					      		 //获取 该类 extra 内容 的 小组总数 (用以 进行 控制  幽灵按钮 的 切屏次数 )
					      		 //data-pagecount = "2"  (即本 tab 体 有且仅可以切 2 屏)
					      		var op_pageCount =  $(".extraContent .extraContent_body > div").eq($ex_tab.index()).data("pagecount");
					      		max_page = op_pageCount; 
					      		 
					      		 if(startPage >= max_page ){
					      			loading("最后一页了!",2);
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
					      
					      
					
							/* end   extra(额外内容)    */
							
				});
			</script>
			
			
</body>
</html>
