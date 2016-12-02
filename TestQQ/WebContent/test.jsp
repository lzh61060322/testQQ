<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.io.*"%>
    <%
String path1 = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path1+"/";
out.println("web URL 路径:"+basePath);
%>
<% 
String path=application.getRealPath(request.getRequestURI());  
String dir=new File(path).getParent();  
System.out.println("当前JSP文件所在目录的物理路径"+dir+"</br>");  
out.println("当前JSP文件所在目录的物理路径:"+dir);
String realPath1 = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath()+request.getServletPath().substring(0,request.getServletPath().lastIndexOf("/")+1);   
out.println("web URL 路径:"+realPath1);  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>测试
</title>
</head>
<body>
<a href="https://graph.qq.com/user/get_user_info?access_token=C921B281A0A380B2E9203B9149C1B73C&oauth_consumer_key=100330589&openid=70E4F010B725A226B3032D76266EE0B4&format=json">获取QQ用户信息</a>

</body>
</html>