<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_020.aspx.cs" Inherits="Sql_1.MstUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ユーザーマスタ登録画面</title>
</head>
    <center>
    <h1>ユーザーマスタ登録画面</h1><hr/>
    </center>
<body>
    <p style="height: 150px"></p>
    <form id="form1" runat="server">
        <center>　
            <p><b>新しいユーザーID：</b>
              <asp:TextBox id="NewTxtUsr" runat="server" Columns="12" /><br />
            </p>              
            <p><b>新しいパスワード：</b>
              <asp:TextBox id="NewTxtPass" runat="Server" Columns="11"/><br />
             </p>       
        <p>
        <asp:Button id="objBtn" runat="server" Text="登録" OnClick="Registration" Height="41px" Width="117px" />
        </p>
        </center>
    </form>
</body>
</html>
