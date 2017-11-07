<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="ebookproject.profile" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  
<html xmlns="http://www.w3.org/1999/xhtml">
<style>
.w3-myfont 
    {
    font-family: "Comic Sans MS", cursive, sans-serif;
    }
.modal-header, h4, .close          
    {
      background-color: 	#000000;
      color:white !important;
      text-align: center;
      font-size: 30px;
    }
  .modal-footer                          
    {
      background-color: 	#000000;
    } 
  
.mySlides {display:none;} 
ul {                               
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}
li a {                             
    display: block;
    color: white;
   text-align:center;
    padding:32px 32px;
    text-decoration: none;
}
img{

    max-width: 100%;
    max-height: 100%;
height: auto;
width: auto;        /* to make the image responsive */

}
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
    
}

img.avatar {
    width: 40%;
    border-radius: 50%;
    width:128px;
    height:128px;
}
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
  
}

.dropdown {
    position: relative;
    display: inline-block;
    left:875px;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    right:20px;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
      
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
.logoutbutton{

   padding: 3px 6px;
}

.button1 {
    background-color: #ff4d4d; 
    border: none;
    color: white;
    padding: 7px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    left:px;
    position: relative;
    display: inline;
}
.button5 {border-radius: 50%;}
</style>
<body>
    <script>
        var form1 = $("#firstForm"),
    form2 = $("#secondForm");
        </script>      
<div>
<ul>
<li><a class="active" href="#home" style="font-size:large; color:white; float:left "><b>BIBLIOPHILE</b></a></li>
<li><a type="button" style="float:right" class="btn btn-default btn-lg" href="#user">USER</a></li>
<li><a onclick="document.getElementById('id01').style.display='block'" href="#about" style="float:right" class="btn btn-default btn-lg">ABOUT</a></li>
<li><a type="button" style="float:right" class="btn btn-default btn-lg" href="login.aspx" id="myBtn">SIGNIN</a></li>
</ul>
</div>
<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="4.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>
<div class="w3-container w3-myfont">
<p class="w3-xxlarge">
ABOUT</p>
A user-friendly application that enables users to create and download ebooks for free.It also allows authors to upload their work or even write online,pause and resume with their work.”
</div>
     
    </div> 
    </div>
    <br/>

    <div class="imgcontainer">
    <!--
    --><center>  <img src="https://www.w3schools.com/howto/img_avatar2.png" alt="Avatar" class="avatar"></center><!--
     --><button1 onclick="document.getElementById('id011').style.display='block'" class="button1 button5">Edit</button1><!--
       --></div>
   


   
    <form id="form2" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" ShowHeader="false">
    <Columns>
        <asp:ImageField DataImageUrlField="Value" ControlStyle-Height="100" ControlStyle-Width="100" />
    </Columns>
</asp:GridView>
         <div id="id011" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id011').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
      </div>
      <asp:FileUpload ID="FileUpload1" runat="server" />
<asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" />

    </div> 
    </div>

    <div>
    <center><b>Welcome  <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></b></center> 
        
    </div>
        <div>
            
            <center>Date Joined: <em><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label><em></center> 
            <center>Last Seen: <em><asp:Label ID="Label4" runat="server" Text="Label"></asp:Label><em></center> 
            </div>
        <br />
        <div class="logoutbutton">
       <center> <asp:Button ID="Button1"  runat="server" OnClick="Button1_Click" Text="log out" /></center>
            </div>
    </form>   
      <hr>
  
   <center> <p1>No Books uploaded at the moment!</p1><center>
     <div class="dropdown">
  <a href="#" class="btn btn-info btn-lg" float="right">
          <span class="glyphicon glyphicon-pencil"></span>
        </a>
  <div class="dropdown-content">
    <a href="#">upload</a>
    <a href="#">write</a>
    <a href="#">resume</a>
  </div>
</div>

</body>
</html>

