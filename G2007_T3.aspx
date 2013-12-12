<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2007_T3.aspx.cs" Inherits="G2007_T3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div id="content" runat="server">
        <div id="login" runat="server">
            Käyttäjätunnus: <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            Salasana: <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox><br />
            <asp:Button ID="btnSend" runat="server" Text="Kirjaudu sisään" OnClick="btnSend_Click" />
        </div>
        <div id="logged" runat="server">
            
        </div>
        <asp:Label ID="lblTest" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
