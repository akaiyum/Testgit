<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HR.View.Applicant.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../Content/Css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../../Content/Css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <script src="../../Content/Js/jquery-1.4.1.js" type="text/javascript"></script>
   
    
  
    <style type="text/css">
        .style1
        {
            width: 382px;
        }
        .style2
        {
            width: 427px;
        }
        .style3
        {
            width: 496px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper" class="col-lg-12">
            <div class="panel col-md-12">
                <table style="width: 100%; margin: 0 auto;">
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style2 panel-heading" style="text-align:center; font-size:125%; width: 496px;" 
                            bgcolor="#9933FF">
                            &nbsp;
                            Registration Form</td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;
                          
                            <legend>Login Information</legend></td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">CNIC</label>
                               <asp:TextBox ID="txtcnic" runat="server" class="form-control" 
                                     required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                                <label for="usr">Password</label>
                               <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Confirm Password</label>
                               <asp:TextBox ID="txtcpassword" runat="server" TextMode="Password" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>

                    <tr>
                        <td class="style1">
                            &nbsp;</td>
                        <td class="style3">
                            &nbsp;
                          
                            <legend>Personal Information</legend></td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Name</label>
                               <asp:TextBox ID="username" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                     <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Contact1 :</label>
                               <asp:TextBox ID="contact1" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Contact2 :</label>
                               <asp:TextBox ID="contact2" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                     <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Email Id</label>
                               <asp:TextBox ID="txtemail" runat="server" class="form-control" required="required"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Address</label>
                               <asp:TextBox ID="address" runat="server" Columns="25" class="form-control" required="required" TextMode="Multiline"></asp:TextBox>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Image Upload</label>
                                <asp:FileUpload ID="FileUpload1" cclass="form-control" runat="server" />
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Date Of Birth</label>
                                <br />
                                <br />
                                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                &nbsp;</div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                               <label for="usr">Gender</label>
                               <asp:RadioButton  ID="Male" GroupName="gender" runat="server" Text="Male" 
                                    Checked="True" />
                                &nbsp;<br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                               <asp:RadioButton  ID="Female" GroupName="gender" runat="server" Text="Female" />
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                     
                    <tr>
                        <td class="style1">
                            &nbsp;
                        </td>
                        <td class="style3">
                            &nbsp;<div id="form-group">
                              
                               <asp:Button Id="Button1" runat="server" Text="NEXT>" onclick="Button1_Click"/>
                            </div>
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>

                </table>
            </div>
        </div>
    </form>
</body>
</html>
