<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="starter.aspx.cs" Inherits="ebookproject.starter" %>

<!DOCTYPE html>
<html>
<title>welcome</title>
<head>
<style>
html,body{
  height:100%;
  width:100%;
  margin:0px;
  padding:0px;
  background-color:#FFD454;
}
#cupcake{
flex-direction:row;
-webkit-flex-direction:row;
-ms-flex-direction:row;
-mos-flex-direction:row;
-o-flex-direction:row;
justify-content:center;
-webkit-justify-content:center;
-ms-justify-content:center;
height:100%;
width:100%;
background-color:#FFD454;    
}

.letter{
    font-size:100px;
    color:#222;
    font-family:tahoma;
}

.box{
    display: box;
	display: -webkit-box;
	display: -moz-box;
	display: -ms-flexbox;
	display: -webkit-flex;
	display: flex;
}

.cupcakeCircle, .cupcakeInner, .cupcakeCore{
     border-radius:50%;
    -webkit-border-radius:50%;
    -moz-border-radius:50%;
    -ms-border-radius:50%;
}

.cupcake, .letter, .cupcakeCircle, .cupcakeInner, .cupcakeCore{
    flex:none;
    -webkit-flex:none;
    -moz-flex:none;
    -ms-flex:none;
    -o-flex:none;
}

.letter, .cupcakeCircle{
    align-self:center;
    -webkit-align-self:center;
    -moz-align-self:center;
    -o-align-self:center;
    -ms-align-self:center;
}
.cupcakeCircle{
    align-items:center;
    -ms-align-items:center;
    justify-content:center;
    -ms-justify-content:center;
    height:100px;
    width:100px;
    background-color:#222;
}

.cupcakeInner{
    align-self:center;
    -ms-align-self:center;
    justify-content:center;
    -ms-justify-content:center;
    height:50%;
    width:50%;
    background-color:#FFD454;
    -webkit-animation-name:cupcakeAnimate;
    -webkit-animation-duration:500ms;
    -webkit-animation-direction:alternate;
    -webkit-animation-timing-function:ease-in-out;
    -webkit-animation-iteration-count:infinite;
    
}
.cupcakeCore{
    align-self:center;
    -ms-align-self:center;
    height:25%;
    width:25%;
    background-color:#222;
    -webkit-animation-name:coreAnimate;
    -webkit-animation-duration:1s;
    -webkit-animation-direction:alternate;
    -webkit-animation-timing-function:ease-in-out;
    -webkit-animation-iteration-count:infinite;
}

@-webkit-keyframes cupcakeAnimate{
        to{ height:90%; width:90%; }
}
@keyframes cupcakeAnimate{
    to{ height:90%; width:90%; }
}

@-webkit-keyframes coreAnimate{
    to{ height:90%; width:90%; }
}
@keyframes coreAnimate{
    to{ height:90%; width:90%; }
}
@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}
</style>
<meta http-equiv="Refresh" content="4;url=homepage.aspx"> <!-- redirect to homepage -->
</head>
  

<body onload="myFunction1()" style="margin:0;background-color:ffff">
<div id = "cupcake" class = "box">
    <span class = "letter">B</span>
  <span class = "letter">I</span>
  <span class = "letter">B</span>
  <span class = "letter">L</span>
  <span class = "letter">I</span>
  <div class = "cupcakeCircle box">
  <div class = "cupcakeInner box">
  <div class = "cupcakeCore box"></div>
            
        </div></div>
    
    <span class = "letter box">P</span>
    <span class = "letter box">H</span>
    <span class = "letter box">I</span>
    <span class = "letter box">L</span>
    <span class = "letter box">E</span>
</div>
  </body>
 </html>