<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_010.aspx.cs" Inherits="Sql_1.WebForm1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="Server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>ログイン画面</title>
</head>
    <center>
<h1>ログイン</h1><hr />
    </center>
<body> 
    <p style="height: 50px"></p>
    <form id="form1" runat="Server">
<center style="height: 415px">

<p style="font-size:200%;"><b>ユーザーID：</b>
<asp:TextBox id="TxtUsr" runat="Server" Columns="12" style="font-size:50%;"/><br />
</p>
<p style="font-size:200%;">
<b>パスワード：</b>
<asp:TextBox id="TxtPass" runat="Server" Columns="11" TextMode="Password" style="font-size:50%;" /><br />
</p>
<p>
<asp:Button id="objBtn" runat="Server" Text="ログイン" OnClick="objBtn_Click" Height="54px" Width="182px" /><br />
</p>
<asp:Label id="objLbl" runat="Server" ForeColor="Red" />
<p style="font-size:150%;" ><a href="Login_020.aspx"> 新規登録 </p>
</center>
</form>
</body>
</html>
