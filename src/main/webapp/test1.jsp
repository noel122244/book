<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<title>Insert title here</title>
	<script type="text/javascript">
		$("#flipbook").turn({
			width: 400,
			height: 300,
			autoCenter: true
		});
	</script>
</head>

<body>
<div id="flipbook">
	<div class="hard"> Turn.js </div>
	<div class="hard"></div>
	<div> Page 1 </div>
	<div> Page 2 </div>
	<div> Page 3 </div>
	<div> Page 4 </div>
	<div class="hard"></div>
	<div class="hard"></div>
</div>

</body>

</html>