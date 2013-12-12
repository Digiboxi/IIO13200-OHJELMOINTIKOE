<%@ Page Language="C#" AutoEventWireup="true" CodeFile="G2007_Index.aspx.cs" Inherits="G2007_Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="T1" runat="server" OnClick="T1_Click">Tehtävä 1</asp:LinkButton><br />
        <asp:LinkButton ID="T2" runat="server" OnClick="T2_Click">Tehtävä 2</asp:LinkButton><br />
        <asp:LinkButton ID="T3" runat="server" OnClick="T3_Click">Tehtävä 3</asp:LinkButton><br />
        <asp:LinkButton ID="T4" runat="server" OnClick="T4_Click">Tehtävä 4</asp:LinkButton><br />
        <asp:LinkButton ID="Arviointi" runat="server" OnClick="Arviointi_Click">Arviointi</asp:LinkButton>
    </div>
    </form>
</body>
</html>
