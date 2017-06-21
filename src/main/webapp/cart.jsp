<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			
			
			<div class="container">
				<div class="w">
					<div id="chunjie" class="mb10"></div>
					<div class="nologin-tip">
						<span class="wicon"></span>
						您还没有登录！登录后购物车的商品将保存到您账号中
						<a class="btn-1 ml10" href="#none" style="text-decoration:none;">立即登录</a>
					</div>
				</div>
				<div class="cart-warp">
					<div class="w"></div>
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
										    background: linear-gradient(to left,#fff,#A483F3 30%,pink 70%,#fff 100%);
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
								.cart-item-list .item-form .p-action{ width: 133px; line-height: 80px;}
								
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
														<div class="cell p-sum">1213</div>
														<div class="cell p-action">删除</div>
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
														<div class="cell p-sum">1213</div>
														<div class="cell p-action">删除</div>
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
														<div class="cell p-sum">1213</div>
														<div class="cell p-action">删除</div>
													</div>
										    	</div>
											
											
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
									
									.cart-footer{position:relative;}
									.cart-footer .selectedProductDiv{
										position: absolute;
									    top: -100px;
									    left: 0px;
									    width: 990px;
									    height: 100px;
									    background:rgba(102,102,102,.65);
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
											总价: <span> $30010.00 元 </span>
										</div>
										<div class="btn-area">
											<a href="#">
												<b></b>
											</a>
										</div>
								</div>
								<div class="selectedProductDiv" id="selectedProductDiv"></div>
								
							</div>
							
						
						
						
					</div>
				</div>
				
			
			</div>
			
			<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
			<script>
				$(function(){
					$(".cart-thead").addClass("animated fadeInDownBig");
					$(".item-item").addClass("animated  bounceInUp");
					
					
					$("#selproductBtn").click(function(){
						
						
					});
					
				});
			</script>
			
			
</body>
</html>
