<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HR.View.Applicant.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Document</title>
    <link href="../../Content/Css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <style>
    #box
    {
       border:1px solid black;
       height:100%; 
        }
        
        #main-div
        {
           height:900px;
           background-size:100% 900px; 
            }
        .insidebox
        {
         border: 1px solid black;
         margin: 10% auto 10% auto;
         max-width:500px;
         min-width:200px;
         padding-left:60px;
         padding-right:60px;
         border-radius:10px;
         background-color:whitesmoke;
         
            }
            
            div h1
            {
               text-align:center; 
                
                }
                
                p#para
                {
                    text-align:center;
                    font-size:14px;
                    
                    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <script src="../../Content/Js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../Content/Js/jquery-1.4.1.js" type="text/javascript"></script>

        <div id="main-div">
           <div id="box" class="responsive">
           <div class="insidebox">
                <div><h1>Log In</h1></div>
                    <div class="form-group">
                        `<div class="input-group">
                             <div class="input-group-addon">
                             <span class="glyphicon glyphicon-user">User Name:</span>
                             </div>
                            <asp:TextBox ID="txtcnic" runat="server" placeholder="CNIC" class="form-control" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        `<div class="input-group">
                             <div class="input-group-addon">
                             <span class="glyphicon glyphicon-lock">Password:</span>
                             </div>
                             <asp:TextBox ID="txtpassword" runat="server" placeholder="Password" class="form-control" TextMode="Password" required="required"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        `<asp:Button ID="Button1" runat="server" 
                            Text="Log In" class="form-control btn-success" onclick="Button1_Click"/>
                    </div>
                    <div class="form-group">
                        `<asp:Label ID="Label1" ForeColor="Red" runat="server" Text=""></asp:Label>
                    </div>

                    <p id="para">Don't have an account?<a href="Register.aspx">Register now</a></p>
            </div>
            </div>
        </div>
        
    </form>
</body>
</html>
