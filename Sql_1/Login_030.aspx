<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_030.aspx.cs" Inherits="Sql_1.Login_030" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>確認ページ</title>
</head>
    <center>
<h1 style="font-size:200%;">確認画面</h1><hr />
    </center>
<body> 
    <p style="height: 50px"></p>
    <form id="form1" runat="Server">
<center>
<p style="font-size:200%;">先程登録されたログイン情報を入力してください</p>
<p style="font-size:200%;"><b>ユーザーID：</b>
<asp:TextBox id="EditTxtUsr" runat="Server" Columns="12" style="font-size:50%;"/><br />
</p>
<p style="font-size:200%;">
<b>パスワード：</b>
<asp:TextBox id="EditTxtPass" runat="Server" Columns="11" TextMode="Password" style="font-size:50%;"/><br />
</p>
<p>
<asp:Button id="objBtn" runat="Server" Text="確認" OnClick="Edit" style="font-size:100%;" Height="41px" Width="158px"/><br />
</p>
<asp:Label id="objLbl" runat="Server" ForeColor="Red" />
</center>
</form>
</body>
</html>
