<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,user-scalable=no">
		<title>弹出层</title>
		<!--弹出层 开始 -->
		<!--弹出层 结束 -->
	</head>
	<body>
	   <div class="mui-content-padded" style="text-align: center;">
			<button id="alertBtn" type="button" class="zbox-btn zbox-btn-blue zbox-btn-outlined" onclick="aaa()">警告消息框</button>
			<button id="confirmBtn" type="button" class="zbox-btn zbox-btn-blue zbox-btn-outlined">确认消息框</button>
			<button id="toastBtn" type="button" class="zbox-btn zbox-btn-blue zbox-btn-outlined">自动消失提示框</button>
			<button id="load" type="button" class="zbox-btn zbox-btn-blue zbox-btn-outlined">加载中</button>
			<div id="info" onclick="$.DialogByZ.Close()">关闭加载</div>
		</div>
	</body>
	<script>
	///
	   function aaa(){
           $.DialogByZ.Alert({Title: "提示", Content: "您的请求失败",BtnL:"确定",FunL:alerts})
	   }
	   $("#confirmBtn").click(function(){
           $.DialogByZ.Confirm({Title: "", Content: "自动隐藏提示Tips弹窗插件</br>代码少使用方便",FunL:confirmL,FunR:Immediate})
	   })
	   $("#toastBtn").click(function(){
	      $.DialogByZ.Autofade({Content: "感谢您对我们的支持"})
	   })
	   $("#load").click(function(){
	   	  $.DialogByZ.Loading('image/loading.png')
	   })
	///
       function confirmL(){
            	$.DialogByZ.Close();
           	    $.DialogByZ.Alert({Title: "提示", Content: "您要求稍后开通",BtnL:"确定"})
       }
       //
       function alerts(){

       	  $.DialogByZ.Close();
       }
       function Immediate(){
       	  //location.href="http://www.baidu.com"
       	 // window.open("http://www.baidu.com")
		  alert("取消");
       }


	</script>
</html>
