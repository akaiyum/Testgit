<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="HR.View.Applicant.profile" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Css/bootstrap.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 165px;
        }
        td
        {
          padding: 10px;  
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       
            <div class="row">
                 <div class="col-lg-4 col-md-4 col-sm-4" style="background-color:#2A3D51;">
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="~/Content/Img/b968e198ab9710ff2eff32f853d7c69d.jpg"  style=" margin-left:50px; margin-top:50px; height:350px; width:300px; margin-bottom:20px; border-radius: 50%;" />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                     <asp:Label ID="Label1" runat="server" ForeColor="White"></asp:Label>
                     
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          <div>
              <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
              &nbsp;&nbsp;&nbsp;
              <asp:Button ID="Button2" runat="server" Text="Button" class="btn btn-warning" 
                  onclick="Button2_Click" />
              <asp:Label ID="Label8" runat="server" Text="" ForeColor="Red"></asp:Label>
          </div>

                        <br />
                     
                        <br />
                     
                        <table class="table table-responsive" border="none" frame="border">
                          
                             <tr>
                                 <td class="style1" style="color:White;">CNIC:</td><td><asp:Label ID="Label2" runat="server" 
                                     ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1" style="color:White;">Phone 1:</td><td><asp:Label ID="Label3" runat="server" 
                                     ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1" style="color:White;">Phone 2:</td><td><asp:Label ID="Label4" runat="server" 
                                     ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1" style="color:White;">Email :</td><td><asp:Label ID="Label5" runat="server" 
                                     ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1" style="color:White;">Gender :</td><td><asp:Label ID="Label6" runat="server" 
                                     ForeColor="White"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1" style="color:White;">Date Of Birth :</td><td>
                                 <asp:Label ID="Label7" 
                                     runat="server" ForeColor="White"></asp:Label></td>
                             </tr>
                        </table>
                </div>


                <div class="col-lg-8 col-md-8 col-sm-8">
                    <div class="navbar navbar-inverse">
                        <ul class="nav navbar-nav">
                            <li>
                                <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Add Qualification</asp:LinkButton></li>
                             <li>
                                 <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Update Records</asp:LinkButton></li>
                             </ul>
                             <ul class="nav navbar-nav navbar-right">
                             <li>
                                 <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Log Out</asp:LinkButton></li>
                        </ul>
                        


                    </div>
                    <asp:Panel ID="Panel1" runat="server">
                            <div class="row" style=" height:700px;margin:0px; padding:0px;">
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                                    <asp:ListItem Value="0">--select--</asp:ListItem>
                                    <asp:ListItem Value="1">SSC</asp:ListItem>
                                    <asp:ListItem Value="2">HSC</asp:ListItem>
                                    <asp:ListItem Value="3">GRADUATION</asp:ListItem>
                                    <asp:ListItem Value="4">MASTERS</asp:ListItem>
                                </asp:DropDownList> 
                                <asp:Panel ID="PSSC" runat="server">
                                     <div class="row" style="border:1px solid grey;">
                                           <div class="container">
                                           <h1>SSC Records</h1>
                                                <table>
                                                    <tr>
                                                        <td>School Name:</td>
                                                        <td><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Percentage:</td>
                                                        <td><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        
                                                        <td>SSC MARK SHEET:</td>
                                                        <td><asp:FileUpload ID="FileUpload2" runat="server" CssClass="form-control" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button3" runat="server" Text="Submit" 
                                                                CssClass="btn btn-success" onclick="Button3_Click"/></td>
                                                        <td>
                                                            <asp:Button ID="Button7" runat="server" Text="Update" CssClass="btn btn-danger"/></td>
                                                    </tr>
                                                    
                                                </table>
                                           </div>
                                     </div>
                                </asp:Panel>
                                <asp:Panel ID="PHSC" runat="server">
                                     <div class="row" style="border:1px solid grey;">
                                           <div class="container">
                                           <h1>HSC Records</h1>
                                                <table>
                                                    <tr>
                                                        <td>HSC Name:</td>
                                                        <td><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Percentage:</td>
                                                        <td><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        
                                                        <td>HSC MARK SHEET:</td>
                                                        <td><asp:FileUpload ID="FileUpload3" runat="server" CssClass="form-control" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Button ID="Button4" runat="server" Text="Button" 
                                                                CssClass="btn btn-success" onclick="Button4_Click1"/></td>
                                                    </tr>
                                                    
                                                </table>
                                           </div>
                                     </div>
                                </asp:Panel>
                                <asp:Panel ID="PGRAD" runat="server">
                                     <div class="row" style="border:1px solid grey;">
                                           <div class="container">
                                           <h1>Graduation Records</h1>
                                                <table>
                                                    <tr>
                                                        <td>University Name:</td>
                                                        <td><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Percentage:</td>
                                                        <td><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        
                                                        <td>Graduation MARK SHEET:</td>
                                                        <td><asp:FileUpload ID="FileUpload4" runat="server" CssClass="form-control" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2">
                                                            <asp:Button ID="Button5" runat="server" Text="Button" CssClass="btn btn-success"/></td>
                                                    </tr>
                                                    
                                                </table>
                                           </div>
                                     </div>
                                </asp:Panel>
                                <asp:Panel ID="PMAS" runat="server">
                                     <div class="row" style="border:1px solid grey;">
                                           <div class="container">
                                           <h1>Masters Records</h1>
                                                <table>
                                                    <tr>
                                                        <td>University Name:</td>
                                                        <td><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Percentage:</td>
                                                        <td><asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox></td>
                                                    </tr>
                                                    <tr>
                                                        
                                                        <td>Graduation MARK SHEET:</td>
                                                        <td><asp:FileUpload ID="FileUpload5" runat="server" CssClass="form-control" /></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Button ID="Button6" runat="server" Text="Button" CssClass="btn btn-success"/></td>
                                                            
                                                    </tr>
                                                    
                                                </table>
                                           </div>
                                     </div>
                                </asp:Panel>

                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <div class="row" style="height:700px;margin:0px; padding:0px;">




                            <table class="table table-responsive" border="none" frame="above">

                            <tr>
                                 <td class="style1" >Name:</td><td>
                                     <asp:TextBox ID="txtname" runat="server" class="form-control"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td class="style1">CNIC:</td><td><asp:Label ID="lblcnic" runat="server"></asp:Label></td>
                             </tr>
                             <tr>
                                 <td class="style1">Phone 1:</td><td><asp:TextBox ID="txtphone1" runat="server" 
                                     class="form-control"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td class="style1">Phone 2:</td><td><asp:TextBox ID="txtphone2" runat="server" 
                                     class="form-control"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td class="style1">Email :</td><td><asp:TextBox ID="txtemail" runat="server" 
                                     class="form-control"></asp:TextBox></td>
                             </tr>
                             
                             <tr>
                                 <td class="style1">Date Of Birth :</td><td>
                                 <asp:TextBox ID="txtdob" runat="server" class="form-control"></asp:TextBox></td>
                             </tr>
                             <tr>
                                 <td colspan="2">
                                     &nbsp;</td>
                             </tr>
                        </table>



                            
                            </div>
                        </asp:Panel>
                </div>
            
            </div>
       
    </form>
</body>
</html>
