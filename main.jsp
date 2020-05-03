
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=yes"/>
<title>answerMe</title>
<script src="./js/jquery.min.js"></script>
<style type="text/css">

	html,body,div,p,ul,li,dl,dt,dd,h1,h2,h3,h4,h5,h6{
            margin: 0;
            padding: 0;
        }
        html,body{
            height: 100%;
        }
 
 
/*         div { */
/*         	position: relative; */
/*             top: 50%; */
/*             left: 50%; */
/*             transform: translate(-50%, -50%);  */
/*             -webkit-transform: translate(-50%, -50%); */
/*             -moz-transform: translate(-50%, -50%); */
/*             text-align: center; */
/*             transition: 1s; */
/*             width: 100%; */
/*             height: 100%; */
/*         } */
 

	.btn-xl {
	    padding: 20px 40px;
	    border-color: #0d3d62;
	    border-radius: 3px;
	    text-transform: uppercase;
	    font-family: "PT Sans", "Vazir", sans-serif;
	    font-size: 36px;
	    font-weight: 700;
	    color: #171728;
	    height: 100%;
	    width: 100%;
	}
	.btn {
	    display: inline-block;
	    padding: 6px 12px;
	    margin-bottom: 0;
	    font-size: 72px;
	    font-weight: 600;
	    line-height: 1.42857143;
	    text-align: center;
	    white-space: nowrap;
	    vertical-align: middle;
	    cursor: pointer;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	    background-image: none;
	    border: 1px solid transparent;
	    border-radius: 4px;
	}
	.main{
		position: relative;
	    top: 50%;
	    left: 50%;

	}
	
	.vcenter{
		position: relative;
		display: block;
		background-color: rgba(0,0,0,0.1);
	}
	
	img{
		display: none;
	}
	
	.select-a{
 		border:none; 
		position:relative;
		top:77%;
		background-color: transparent;
		height:7.5%;
		width: 45%;
		cursor: pointer;
	}
	
	.select-b{
 		border:none; 
		position:relative;
		top:77%;
		background-color: transparent;
		height:7.5%;
		width: 45%;
		margin-left:5%;
		cursor: pointer;
	}
	
	.pre{
 		border:none; 
		position:relative;
		top:83.5%;
		left:70%;
		background-color: transparent;
		height:7.5%;
		width: 25%;
		cursor: pointer;
	}
	
	.black_over{
	    display: none;
	    position: fixed;
	    top: 0;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    background-color: #0000c7;
	    z-index: 1020;
	    -moz-opacity: 0.8;
	    filter: alpha(opacity=50);
	}
/*弹框*/
	.popup{
	    position: relative;
	    top: 50%;
	    left: 50%;
	    margin-left: -250px;
	    margin-top: -125px;
	    width: 100%;
	    background-color: #f2f7f7;
	    z-index: 1099;
	    overflow: auto;
	    border-radius: 10px;
	    border: 1px solid #d3d3d3;
	    }

</style>
</head>
<body>
<!-- <img  src="./scr/20201.jpg" style="display: block;"> -->

	<div id="page-0" style="display: block;background-image: url('./scr/23.jpg');background-size: 100%;">
		<input id="start" type="button" value="" style="position: relative;top:43%;left:25%;height: 10%;width: 50%;background-color: transparent;border-radius: 5px;border:0.5px solid black;cursor: pointer;">
	</div>
	<div id="page-1" style="display: none;background-image: url('./scr/20201.jpg');background-size: 100%;">
<!-- 		<img  src="./scr/20201.jpg"  style="display: block; width: 1024px;" > -->
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" disabled="disabled">
	</div>
	<div id="page-2" style="display: none;background-image: url('./scr/20202.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-3" style="display: none;background-image: url('./scr/20203.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-4" style="display: none;background-image: url('./scr/20204.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-5" style="display: none;background-image: url('./scr/20205.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-6" style="display: none;background-image: url('./scr/20206.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-7" style="display: none;background-image: url('./scr/20207.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-8" style="display: none;background-image: url('./scr/20208.jpg');background-size: 100%;">
		<input type="button" class="select-a" value="" >
		<input type="button" class="select-b" value="" >
		<input type="button" class="pre" value="" >
	</div>
	<div id="page-9" style="display: none;background-image: url('./scr/20209.jpg');background-size: 100%;">
		
	</div>
	<div id="page-10" style="display: none;background-color: rgba(0,0,0,0.3);-moz-opacity: 0.8;filter: alpha(opacity=50);">
		
	</div>
	<div id="page-11" style="display: none;background-image: url('./scr/yes.png');background-size: 100%;">
<!-- 		<img  src="./scr/right.png" > -->
	</div>
	<div id="page-12" style="display: none;background-image: url('./scr/no.png');background-size: 100%;">
<!-- 		<img  src="./scr/wrong.png"> -->
	</div>
	
	
	<script type="text/javascript">
		
		$(window).ready(function(){
			n = 0;
			var rate=1920/1080;
			var rate1=1910/2564;
			var width=window.innerWidth;
			var height= window.innerHeight;
			var padding=0;
			console.log(width);
			console.log(height);
			if(height>width*rate){
				for(var i =0;i<13;i++){
					if(i>10){
						$("#page-"+i).css("width",width*0.3);
						$("#page-"+i).css("height",width*0.3*rate1);
						padding=(height-width*0.9)/2;
						paddingl=(width-width*0.3*rate1)/2;
						console.log(padding);
					}
					else{
						if(i==10){
							$("#page-"+i).css("width",width);
							$("#page-"+i).css("height",height);
							padding=0;
							paddingl=0;
							console.log(padding);
						}
						else{
							$("#page-"+i).css("width",width);
							$("#page-"+i).css("height",width*rate);
							padding=(height-width*rate)/2;
							paddingl=0;
							console.log(padding);
						}
						
					}
					$("#page-"+i).css("position","absolute");
					$("#page-"+i).css("top",padding);
					$("#page-"+i).css("left",paddingl);
				}
			}
			else{
				for(var i =0;i<13;i++){
					if(i>10){
						$("#page-"+i).css("width",height*0.3*(1/rate1));
						$("#page-"+i).css("height",height*0.3);
						padding=(width-height*0.3*(1/rate1))/2;
						paddingt=(height-height*0.9)/2;
						console.log(padding);
					}
					else{
						if(i==10){
							console.log("w"+width);
							console.log("h"+height);
							$("#page-"+i).css("width",width);
							$("#page-"+i).css("height",height);
							padding=0;
							paddingl=0;
							console.log(padding);
						}
						else{
							$("#page-"+i).css("width",height*(1/rate));
							$("#page-"+i).css("height",height);
							padding=(width-height*(1/rate))/2;
							paddingt=0;
							console.log(padding);
						}

					}
					$("#page-"+i).css("position","absolute");
					$("#page-"+i).css("left",padding);
					$("#page-"+i).css("top",paddingt);
				}
			}
		})
		
		$("#start").click(function(){
			$("#page-0").css("display","none");
			$("#page-1").css("display","block");
			n++;
		})
		
		$(".select-a").click(function(){
			if(n==1||n==4||n==6||n==7||n==8){
				$("#page-10").css("display","block");
				$("#page-12").css("display","block");
				setTimeout(function () {
					$("#page-10").css("display","none");
					$("#page-12").css("display","none");
				},700);
			}
			else{
				$("#page-10").css("display","block");
				$("#page-11").css("display","block");
				setTimeout(function () {
					$("#page-10").css("display","none");
					$("#page-11").css("display","none");
				},500);
				$("#page-"+n++).css("display","none");
				$("#page-"+n).css("display","block");
			}
		})
		$(".select-b").click(function(){
			if(n==1||n==4||n==6||n==7||n==8){
				$("#page-10").css("display","block");
				$("#page-11").css("display","block");
				setTimeout(function () {
					$("#page-10").css("display","none");
					$("#page-11").css("display","none");
				},500);
				$("#page-"+n++).css("display","none");
				$("#page-"+n).css("display","block");
			}
			else{
				$("#page-10").css("display","block");
				$("#page-12").css("display","block");
				setTimeout(function () {
					$("#page-10").css("display","none");
					$("#page-12").css("display","none");
				},700);
			}
		})
		$(".pre").click(function(){
			if(n==1){
				alert("前面没有啦!");
			}
			else{
				$("#page-"+n--).css("display","none");
				$("#page-"+n).css("display","block");
				
			}
		})
		
	</script>
</body>
</html>
