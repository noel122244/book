function loadApp() {
	// Create the flipbook
	$('.flipbook').turn({
			// Width
			width:922,
			// Height
			height:600,
			// Elevation
			elevation: 50,
			// Enable gradients
			gradients: true,
			// Auto center this flipbook
			autoCenter: false
	});
}
// Load the HTML4 version if there's not CSS transform
// Modernizr를 이용하여 csstransforms(2D)를 지원하는 브라우저인지 체크
// true or false 값에 따라 yep, nope 에 적힌 경로 파일이 로드 됨
// both는 true던 false 던 로드
// 파일을 로드 후 complete안에 함수 실행
yepnope({
	test : Modernizr.csstransforms,
	yep: ['./pageEffect/lib/turn.js'],
	nope: ['./pageEffect/lib/turn.html4.min.js'],
	both: ['./pageEffect/css/basic.css'],
	complete: loadApp
});