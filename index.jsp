<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.FileInputStream"%>

<%
	BufferedReader reader = null;
	try {
 		String filePath = application.getRealPath("/WEB-INF/Gospel of John.txt");
 		reader = new BufferedReader(new FileReader(filePath));
 		
 		/* 이클립스 콘솔 한글 출력 할려고 하다보면 글자가 깨지는데 이 코드를 쓰면 달라짐
 		reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));
 		*/
%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
	
<body>
 <%
   while(true){
	   String str = reader.readLine();  
	   if(str==null) {break;}
	   out.print(str+"</br>");   
   }
  }
  catch(FileNotFoundException fnfe){ out.print("파일이 존재 하지 않습니다."); }
 catch(IOException ioe){ out.print("파일을 읽을수 없습니다.");}
 
 finally {
  try 
  {	reader.close();	}
  catch(Exception e){}
 }
 %>
</body>

</html>