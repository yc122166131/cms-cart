<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


		<style type="text/css">
		*{margin:0;padding:0;}
		.loginBox{width:450px;height:445px; background: #000;position:relative;}
		.loginBox .login_area{width:100%;height:400px;background:#000;position:absolute;top:0px;left:0px;}
		.loginBox .login_area .login_txt{width: 78%;height:100px; margin: 131px auto;}
		.loginBox .login_area .login_txt .login_common{ 
			height: 48px;
		    line-height: 48px;
		    text-align: center;}
		
		.loginBox .login_area .login_txt .login_common input{padding: 8px;width: 236px;border-radius: 10px;}
		.loginBox .login_area .login_txt .login_common label{color:#ccc;text-shadow:1px 1px 1px #fff}
		 
		 
		 
		   
		.loginBox .login_area .login_btn{ width: 78%;background:#111;height:49px; margin-top: -102px;margin-left: 49px;
		    border-radius: 10px;text-align:center;line-height:49px;transition:all 1s ease;cursor:pointer;}
		 .loginBox .login_area .login_btn a{color:#ddd;text-shadow:1px 1px 1px #fff;font-family:"楷体";text-decoration:none;
		 font-size: 28px;}   
		 .loginBox .login_area .login_btn:hover{background:#333;transform:scale(1.16);transition:all 1s ease;}
		
		
		
		 .loginBox .login_area   .login_a{ width: 78%; height: 49px; text-align: right; line-height: 49px;margin-left: 48px;}
		 .login_a a{text-decoration:none; color: #888; width: 90px;
		 margin-top:10px;}
		
		</style>

		<div class="loginBox">
			<div class="login_area">
				<div class="login_txt">
					<div class="login_common">
						<label for="username">用户名</label> &nbsp;<input type="text" id="username" value="" placeholder="请填写用户名..."/><br/>
					</div>
					<div class="login_common">
						<label for="password">密码 &nbsp; &nbsp; </label>&nbsp;<input type="text" id="password" value="" placeholder="请填写密码..."/>
					</div>
				</div>
					
				<div class="login_btn">
					<a href="javascript:void(0);">登    录</a>
				</div>
				
				<div class="login_a">
					<a href="javascript:void(0);">忘记密码</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="javascript:void(0);">注 册</a>
				</div>
			</div>
		</div>
