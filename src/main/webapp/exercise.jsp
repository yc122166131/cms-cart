<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/commons/taglib.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	
</style>
</head>
<body>
	
	
	<h3>springmvc test</h3>
	<input type="button" value="传无关的参数" id="btn1"/>
	<br/>
	<br/>
	<input type="button" value="传实体映射(不带数组)" id="entity" onclick="javascript:transferEntity();"/> 
	<br/>
	<br/>
	<input type="button" value="传实体映射(带数组)" id="entity" onclick="javascript:transferEntityWithArray();"/> 
	<br/>
	<br/>
	<a href="${basePath }/t1/t4.action?num=23&price=123.89">测试RequestParam</a>  &nbsp;
	<input type="button"  id="btn2" value="测试pathVariable"  />
	
	<br/>
	<br/>
	
	<form action="/t1/submitUserList" method="post" id="form1">
        ID:<input type="text" name="id"><br/>
        Username:<input type="text" name="name"><br/>
        Password:<input type="text" name="pwd"><br/><br/>
        sports:  <input type="checkbox" name="fav" value="1">
        music:  <input type="checkbox" name="fav" value="2">
        history： <input type="checkbox" name="fav" value="3">
        <br/>
        <input type="submit" value="正常表单提交(refrash page)">
    </form>
   
    <input type="button" value="测试表单提交" id="btnForm"/>
    
	<br/>
	<br/>
	
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
	<script type="text/javascript">
			
	
			$("#btnForm").click(function(){
						
				    var options = {
		                url: '/t1/submitUserList.action',
		                type: 'post',
		                dataType: 'json',
		                data: $("#form1").serialize(),
		                success: function (data) {
		                   alert($("#form1").serialize());  // id=1212&name=http%3A%2F%2Flocalhost%3A8909&pwd=a123%4012212&fav=2&fav=3  这里的 http:// 这些字符也会被转义后传到后台再进行就自动的解析
		                   console.log(data);
		                },
		                error:function(msg){
		                	alert(msg);
		                }
		            };
				    
					$("#form1").ajaxSubmit(options);
				
				
			});
	
	
	
	
	
	
	
	
			$("#btn1").click(function(){
				var params  = {};
				params.param1 = "传值1";
				params.param2 = "传222";
				$.ajax({
					type:"post",
					url:"${basePath}/t1/singleParams.action",  //一般ajax 的后缀不要设置成 .html 会出现 406 not Acceptable!
					data:params,
					dataType : "json",
					success:function(data){
						alert(Object.prototype.toString.call(data));
						console.log(data);
					},
					error:function(){}
				});
			});
			
			$("#btn2").click(function(){
				window.location.href = "${basePath }/t1/t3/jack/23";
			});
			
			
			//sprinmvc 实体映射 (bean中存在 数组类型的值)
			function transferEntityWithArray(){
				
				//window.location.href = "${basePath}/t1/entityParamsTest/";
				//window.open("${basePath}/t1/entityParamsTest/");
				
				var param = {};
				param.username = "诛仙";
				param.age = 18;
				param.scores = [100,150,130];
				$.ajax({
					type:"POST",
					url:"${basePath}/t1/entityParamsWithArrayTest.action",
					data:JSON.stringify(param), //如果传递的对象 里有 array 数组 必须要 转成 字符串对象的形式.
					dateType: "json",
					contentType: "application/json; charset=utf-8",//如果obj 中存在 数组 ,则 此处不能省略 {要配合 后台的 @RequestBody 来接受  字符串对象} 
					success:function(data){
						$("#exh").html(data);
					},
					error:function(){}
					
				});
			}
			
			
			
			//bean中简单类型的传值映射
			function transferEntity(){
				
				var params = new Object();
				params.username = "qq幻想";
				params.age = 20;
				$.ajax({
					type: "post",
					url:"${basePath}/t1/entityParamTest.action",
					data:params,
					dataType:"json",
					success:function(data){
						console.log(data);
					},
					error:function(){}
				});
			
			}
			
			
			
	
	</script>
	
</body>
</html>
