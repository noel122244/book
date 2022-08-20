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
    <meta charset="UTF-8" />
    	<style>
    		
            #book {
                width: auto;
                height: auto;
                margin: auto;
                margin-top:50px;
            }

            #pageSection {
            position: relative;
            width: 350px;
            height: 565px;
            margin: auto;
            /* 원근감을 주는 코드 입니다.
               어떤 3D요소가 있을 때 이 코드를 적어주면 숫자가 큰만큼 멀리 느껴지고
               작을 수록 가깝게 느껴지도록 동작합니다.*/
            perspective: 1000px;
            }

            .page {
	            position: absolute;
	            top: 10;
	            left: 0;
	            padding: 0 35px;
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
			.mainImg {
				  max-width: 100%;
				  height: 80%;
				  display: block;
				margin-right: 10px;
				margin-top: 40px;
			}
			.content {
  width: 100%;
  height: 100%;
  transition-duration: 1s;
}
			#content1:hover {
  opacity: 0.4;
}
.chainSection {
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  z-index: 10;
}

.chain {
  display: flex;
  align-items: center;
  margin: 18px 0;
}

.chainFrame {
  width: 20px;
  height: 8px;
  background-color: #616161;
  display: inline-block;
  z-index: 1;
  border-radius: 0 8px 8px 0;
}

.chainCircle {
  width: 16px;
  height: 16px;
  border-radius: 50%;
  background-color: #fff;
  display: inline-block;
  transform: translateX(-8px);
  box-shadow: -1px -1px 3px rgba(0, 0, 0, 0.4) inset;
}
        </style>
    </head>

    <body>
        <div id="book">
            <section id="pageSection">
                <div class="page" id="page1" onclick="transform('page1')">
                	<div class="content" id="content1">
                	
                    	<img src="123.jpg" class="mainImg">
                    </div>
                    <section class="chainSection"></section>
                </div>
            
                <div class="page" id="page2">
                	<div class="content" id="contents">
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
	                </div>
                    <section class="chainSection"></section>
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
			
			const chainSections = document.getElementsByClassName('chainSection');
			const chain = 
			      `
			        <div class="chain">
			        <div class="chainFrame"></div>
			        <div class="chainCircle"></div>
			        </div>
			      `;

			for(let i=0; i<chainSections.length; i++) {
			  const chainSection = chainSections[i];

			  for(let j=0; j<16; j++) {
			    chainSection.innerHTML += chain;
			  }
			}
	</script>

</html>
