package com.yc.cart.exercise.test;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cn.yc.pojo.Person;
import com.cn.yc.utils.JsonUtils;


@Controller
@RequestMapping("/t1")
public class TestAction {
	
	@RequestMapping("/t2")
	public ModelAndView test(HttpServletRequest request,
			HttpServletResponse response,
			Model model){
		request.setAttribute("desc", "meirenai");
		model.addAttribute("music", "那就这样吧");
		ModelAndView mv = new ModelAndView();
		mv.addObject("music1", "sayonalaaaaaaa!");
		mv.setViewName("test");
		return mv;
	}
	
	
	
	
	@RequestMapping(value="/t3/{name}/{age}")
	public String testPathVariable(@PathVariable("name") String name,@PathVariable("age") int age,
			Map<String,Object> map){
		
		System.out.println(name + "======" + age);
		map.put("desc", "aimei");
		map.put("music1", "xue zhi qian");
		return "test";
	}
	
	
	@RequestMapping(value="/t4")
	public String testRequestParam(@RequestParam("num") Integer num,
			@RequestParam("price") float price,Model model){
		
		System.out.println(num + "======" + price);
		model.addAttribute("desc", num);
		model.addAttribute("music1", price);
		return "test";
		
	}
	
	
	
	/**
	 * produces = "application/json;charset=UTF-8" (解决@ResponseBody 返回时产生的 中文乱码的问题)
	 * @param param1
	 * @return
	 */
	@RequestMapping(value="/singleParams",produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String testResponseBodyofSingleParms(String param1,String param2){
		String jsonoBJ = null;
		try{
			System.out.println(param1+"=="+param2); //不需要进行转码 就能获取正确的值(但是加了@RequestBody后中文会出现乱码,可用 URLDecoder.decode进行转码)
			
			/*param1 = URLDecoder.decode(param1,"utf-8");  //进行一波转码
			param2 = URLDecoder.decode(param2,"utf-8");
			System.out.println(param1);
			System.out.println(param2);*/
			
			Person p = new Person("张三",15,"四川北路","体育,语文",new String[]{"100","98.7","130"},20.8,true);
			jsonoBJ = JsonUtils.objectToJson(p);
		}catch(Exception e){
			e.printStackTrace();
		}
		return jsonoBJ;
	}
	
	
	
	/**
	 * 接受带有数组对象之类的 数据 :[前台必须是传JSON.stringify(param) 转成字符串 形式 ,后台bean的接受 必须 要有 @RequestBody 注解 ]
	 * @param p
	 * @return
	 */
	@RequestMapping(value="/entityParamsWithArrayTest",method=RequestMethod.POST,produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public String testResponseBodyofreceiveEntity(@RequestBody Person p){
		
		System.out.println(p);
		
		return null;
	}
	
	
	/**
	 * 不带有array数组的 传值映射成bean 对象
	 * @param p1
	 * @return
	 */
	@RequestMapping(value="/entityParamTest",produces=MediaType.APPLICATION_JSON_UTF8_VALUE,method=RequestMethod.POST)
	@ResponseBody
	public String testentityParamTest(Person p1){
		System.out.println(p1);
		return null;
	}
	
	
	@RequestMapping(value="/submitUserList",method=RequestMethod.POST,produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public List<String> submitUserList(Long[] fav,String id,String name, String pwd){
		System.out.println(name);
		String retVal = "姓名:"+name+"密码:"+pwd;
		List<String> li = new ArrayList<String>();
		li.add(retVal);
		return li;
	}
	
	
	/**
	 * 定义一个 全局的 singleton 变量
	 */
	private int singletonInt=1;
	
	/**
	 * 测试springmvc 是否为单例  (http://localhost:8904/t1/singletonTest?data=10 测试多次返回的 singletonInt为依次累加)
	 * 证明为 单例
	 * @param request
	 * @param response
	 * @return
	 */
	@RequestMapping(value="singletonTest")
	@ResponseBody
	public String singleton(HttpServletRequest request, HttpServletResponse response){
		
		String data = request.getParameter("data");
		if(null != data && data.length() > 0 ){
			  try{
	              int paramInt= Integer.parseInt(data);
	              singletonInt = singletonInt + paramInt;
	             }
	             catch(Exception ex){
	                 singletonInt+=10;
	             }
         }else{
             singletonInt+=1000;
         }
		 return String.valueOf(singletonInt);
	}
	
	
	
	
	/**
	 * 验证是否 会堵塞 
	 * 结果: 尽管是单
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/sleepdata")
	@ResponseBody
	public String switcher(HttpServletRequest request
	     , HttpServletResponse response)
	           throws Exception {
	  String sleep = request.getParameter("sleep");
	  if (sleep.equals("on")) {
	      Thread.currentThread().sleep(100000);
	       return "sleep on";
	   } else {
	       return sleep;
	  }
	} 
	
	
	
}


