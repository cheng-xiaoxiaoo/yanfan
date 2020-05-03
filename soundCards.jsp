<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=yes"/>
<title>soundCard</title>
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
	
	.next{
		position:relative;
		top:83%;
		left:42%;
		background-color: transparent;
		height:5.0625%;
		width: 9%;
		cursor: pointer;
		border: none;
		background-image: url('./scr/next.gif');
		background-size: 100% 100%;
	}
	
	.play{
		
		position:relative;
		top:83%;
		left:37%;
		background-color: transparent;
		height:5.0625%;
		width: 9%;
		cursor: pointer;
		border: none;
		background-image: url('./scr/play.gif');
		background-size: 100% 100%;
	}
	
	.pre{
		
		position:relative;
		top:83%;
		left:32%;
		background-color: transparent;
		height:5.0625%;
		width: 9%;
		cursor: pointer;
		border: none;
		background-image: url('./scr/pre.gif');
		background-size: 100% 100%;
	}
	

</style>
</head>
<body style="background-image: url('./scr/999.jpg');background-repeat: repeat;background-size: 100%;">
<!-- <img  src="./scr/20201.jpg" style="display: block;"> -->

	<div id="page-0" style="display: block;background-image: url('./scr/banshu.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" disabled="disabled">
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
<!-- 		<audio controls> -->

<!--   <source src="./scr/horse.mp3" type="audio/mpeg"> -->
<!-- </audio> -->
	</div>
	<div id="page-1" style="display: none;background-image: url('./scr/jing.jpg');background-size: 100%;">
<!-- 		<img  src="./scr/20201.jpg"  style="display: block; width: 1024px;" > -->
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-2" style="display: none;background-image: url('./scr/haoyan.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-3" style="display: none;background-image: url('./scr/mian.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-4" style="display: none;background-image: url('./scr/san.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-5" style="display: none;background-image: url('./scr/xue.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-6" style="display: none;background-image: url('./scr/sheben.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-7" style="display: none;background-image: url('./scr/tang.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value="" >
	</div>
	<div id="page-8" style="display: none;background-image: url('./scr/yanse.jpg');background-size: 100%;">
		<input type="button" class="pre" value="" >
		<input type="button" class="play" value="" >
		<input type="button" class="next" value=""  disabled="disabled">
	</div>

	
	
	<script type="text/javascript">
		
		$(window).ready(function(){
			n = 0;
			var rate=1920/1080;
			var width=window.innerWidth;
			var height= window.innerHeight;
			var padding=0;
			console.log(width);
			console.log(height);
			if(height>width*rate){
				for(var i =0;i<9;i++){
					$("#page-"+i).css("width",width);
					$("#page-"+i).css("height",width*rate);
					padding=(height-width*rate)/2;
					paddingl=0;
					console.log(padding);
					$("#page-"+i).css("position","absolute");
					$("#page-"+i).css("top",padding);
					$("#page-"+i).css("left",paddingl);
				}
			}
			else{
				for(var i =0;i<9;i++){
					$("#page-"+i).css("width",height*(1/rate));
					$("#page-"+i).css("height",height);
					padding=(width-height*(1/rate))/2;
					paddingt=0;
					$("#page-"+i).css("position","absolute");
					$("#page-"+i).css("left",padding);
					$("#page-"+i).css("top",paddingt);
				}
			}
			var audio = new Audio("./scr/banfu.mp3");
			audio.play();
		})
		
		$(".play").click(function(){
			if(n==0){
				var audio = new Audio("./scr/banfu.mp3");
				audio.play();
			}
			if(n==1){
				var audio = new Audio("./scr/jing.mp3");
				audio.play();
			}
			if(n==2){
				var audio = new Audio("./scr/haoyan.mp3");
				audio.play();
			}
			if(n==3){
				var audio = new Audio("./scr/mian.mp3");
				audio.play();
			}
			if(n==4){
				var audio = new Audio("./scr/san.mp3");
				audio.play();
			}
			if(n==5){
				var audio = new Audio("./scr/xue.mp3");
				audio.play();
			}
			if(n==6){
				var audio = new Audio("./scr/sheben.mp3");
				audio.play();
			}
			if(n==7){
				var audio = new Audio("./scr/tang.mp3");
				audio.play();
			}
			if(n==8){
				var audio = new Audio("./scr/yanse.mp3");
				audio.play();
			}
		})
		
		$(".next").click(function(){
		
				$("#page-"+n++).css("display","none");
				$("#page-"+n).css("display","block");
				if(n==0){
					var audio = new Audio("./scr/banfu.mp3");
					audio.play();
				}
				if(n==1){
					var audio = new Audio("./scr/jing.mp3");
					audio.play();
				}
				if(n==2){
					var audio = new Audio("./scr/haoyan.mp3");
					audio.play();
				}
				if(n==3){
					var audio = new Audio("./scr/mian.mp3");
					audio.play();
				}
				if(n==4){
					var audio = new Audio("./scr/san.mp3");
					audio.play();
				}
				if(n==5){
					var audio = new Audio("./scr/xue.mp3");
					audio.play();
				}
				if(n==6){
					var audio = new Audio("./scr/sheben.mp3");
					audio.play();
				}
				if(n==7){
					var audio = new Audio("./scr/tang.mp3");
					audio.play();
				}
				if(n==8){
					var audio = new Audio("./scr/yanse.mp3");
					audio.play();
				}
		})
		
		$(".pre").click(function(){

				$("#page-"+n--).css("display","none");
				$("#page-"+n).css("display","block");
				if(n==0){
					var audio = new Audio("./scr/banfu.mp3");
					audio.play();
				}
				if(n==1){
					var audio = new Audio("./scr/jing.mp3");
					audio.play();
				}
				if(n==2){
					var audio = new Audio("./scr/haoyan.mp3");
					audio.play();
				}
				if(n==3){
					var audio = new Audio("./scr/mian.mp3");
					audio.play();
				}
				if(n==4){
					var audio = new Audio("./scr/san.mp3");
					audio.play();
				}
				if(n==5){
					var audio = new Audio("./scr/xue.mp3");
					audio.play();
				}
				if(n==6){
					var audio = new Audio("./scr/sheben.mp3");
					audio.play();
				}
				if(n==7){
					var audio = new Audio("./scr/tang.mp3");
					audio.play();
				}
				if(n==8){
					var audio = new Audio("./scr/yanse.mp3");
					audio.play();
				}
		})
		
	</script>
</body>
</html>
