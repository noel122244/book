<!DOCTYPE html>
<html>
  <head>
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
            z-index: 1;
            transform-origin: left center;
            transition-duration: 1s;
            transition-timing-function: ease-in;
            }

            #page1:hover {
            transform: rotateY(-180deg);
            opacity: 0.4;
            }

            #page2 {
            z-index: 0;
            }
        </style>
    </head>

    <body>
        <div id="book">
            <section id="pageSection">
                <div class="page" id="page1">
                    <h2>첫 번째 페이지...</h2>
                    <span>This is first page...</span>
                </div>
            
                <div class="page" id="page2">
                    <h2>두 번째 페이지...</h2>
                    <span>This is second page...</span>
                </div>
            </section>
        </div>
    </body>

</html>
