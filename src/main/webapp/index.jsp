<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    	<style>
            #book {
                width: 500px;
                height: 200px;
                margin: 80px;
            }

            #pageSection {
            position: relative;
            width: 250px;
            height: 200px;
            margin-left: 250px;
            /* 원근감을 주는 코드 입니다.
               어떤 3D요소가 있을 때 이 코드를 적어주면 숫자가 큰만큼 멀리 느껴지고
               작을 수록 가깝게 느껴지도록 동작합니다.*/
            perspective: 1000px;
            }

            .page {
            position: absolute;
            top: 0;
            left: 0;
            padding: 0 32px;
            background-color: #f5dec1;
            box-shadow: 0 0 2px rgba(0, 0, 0, 0.4), -2px 0 2px rgba(0, 0, 0, 0.4);
            width: 100%;
            height: 100%;
            }

            #page1 {
            z-index: 2; /* 수직 위치를 정할 때 사용, 숫자가 클수록 위로 감 */
            /* transform 속성을 사용하면 요소의 박스 크기, 회전, 기울기 등을 지정할 수 있음 */
            transform-origin: left center; /* 변형 기준점을 지정 */
            transition-duration: 1s; /*총시간*/
            transition-timing-function: ease-in; /*진행속도*/
            }

			/*  rotate (각), x 가로, y 세로 회전
			 	투명해지는 속성으로 1~0 사이, 작을수록 투명해짐 
            #page1:hover {
            transform: rotateY(-180deg);\
            opacity: 0.4; 
            }*/

            #page2 {
            z-index: 1;
            }
            
            #page3 {
            z-index: 0;
            }

        </style>
    </head>

    <body>
        <div id="book">
            <section id="pageSection">
                <div class="page" id="page1" onclick="transform('page1')">
                    <h2>후</h2>
                    <span>This is first page...</span>
                </div>
            
                <div class="page" id="page2">
                    <h2>2번재 페이지</h2>
                    <span>This is second page...</span>
                </div>              
                
            </section>
        </div>
    </body>
		<script>
			var pageCount=0;
			function transform(nowPage){
				const element = document.getElementById(nowPage);
				if(pageCount==0){
					element.style.transform = "rotateY(-180deg)";
					element.style.opacity = "0.4";
					pageCount=1;
				}else {
					element.style.transform = "rotateY(0)";
					element.style.opacity = "1";
					pageCount=0;
				}
			}
	</script>

</html>
