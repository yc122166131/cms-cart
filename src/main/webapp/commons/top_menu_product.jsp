<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<style type="text/css">
			*{padding:0;margin: 0;}
			body{font-family: "微软雅黑";font-size: 14px;background: #f8f8f8;}
			a{text-decoration: none;}
			li{list-style: none;;}
			.tMenu_title{float: left;width: 100px;line-height: 70px;text-align: center;}
			.tMenuBox{width:100%;height:70px;background: #000;margin: 1px auto;}
			.tMenuBox .tMenuContainer{width: 998px;height:70px;margin: 0px auto;background:#111;}
			.tMenuBox .tMenuContainer ul li{
				float: left;
				background:#111;
				width:100px;height:70px;
				line-height:70px;
				text-align: center;
				padding: 0px 8px;
				cursor: pointer;
				border-right:1px dotted #ccc;
				/*box-shadow: 0px 0px 6px #fff;*/ 
			}
			.tMenuBox .tMenuContainer ul li a{color: #fff;}
			.tMenuBox .tMenuContainer ul{float: none;margin-left: -8px;}
			.tMenuBox .tMenuContainer ul li:hover{background: #006DCC;} 
			.tMenuBox .tMenuContainer ul li:hover ul.subul{display: block;}
			
			.tMenuBox .tMenuContainer ul li ul.subul{display: none;}
			.tMenuBox .tMenuContainer ul li ul.subul li a{color: #fff;}
			
		</style>
		
		
		
		<div class="tMenuBox">
				<div class="tMenuContainer">
					<div class="tMenu_title"><span></span></div>
					<ul>
						<li>
							<a href="javascript:void(0);">网上商城</a>
							<!-- <ul class="subul">
								<li><a href="#">随便</a></li>
								<li><a href="#">随便1</a></li>
								<li><a href="#">随便2</a></li>
								<li><a href="#">随便3</a></li>
							</ul> -->
						</li>
						<li>
							<a href="javascript:void(0);">音乐基地</a>
						</li>
						<li>
							<a href="javascript:void(0);">新闻娱乐</a>
						</li>
						<li>
							<a href="javascript:void(0);">尚未开发</a>
						</li>
						<li>
							<a href="javascript:void(0);">网上商城</a>
						</li>
					</ul>
				</div>
		</div>