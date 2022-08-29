<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.io.FileNotFoundException"%>
<%@ page import="java.io.FileReader"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<%@ page import="java.io.FileInputStream"%>

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
			<div class="container" id="container">
				<div class="flipbook" id="flipbook">
					<div id="first" style="background-image:url(./image/main.jpg)"></div>
				</div>
			</div>
		</div>

    <script>
    $(function () {
        $.get("./page/GOJ1.html", function (data) {
            $("#flipbook").append(data);
        });
    });
    </script>
	</body>
</html>
