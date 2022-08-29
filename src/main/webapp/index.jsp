<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.FileInputStream"%>

<%/*
	BufferedReader reader = null;
	try {
 		String filePath = application.getRealPath("./WEB-INF/GOJ_1.txt");
 		reader = new BufferedReader(new FileReader(filePath));

 		/* 이클립스 콘솔 한글 출력 할려고 하다보면 글자가 깨지는데 이 코드를 쓰면 달라짐
 		reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"UTF-8"));
 		*/
 		
%>

<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width = 1050, user-scalable = no" />
		<meta charset="UTF-8"/>
		<script type="text/javascript" src="./pageEffect/extras/jquery.min.1.7.js"></script>
		<script type="text/javascript" src="./pageEffect/extras/modernizr.2.5.3.min.js"></script>
		<script type="text/javascript" src="./index.js"></script>
		<link href="index.css" rel="stylesheet" type="text/css" />
	</head>

    <body>

	    <div class="flipbook-viewport">
			<div class="container">
				<div class="flipbook" id="flipbook">
					<div style="background-image:url(./image/main.jpg)"></div>
				</div>
			</div>
		</div>
	</body>
</html>
