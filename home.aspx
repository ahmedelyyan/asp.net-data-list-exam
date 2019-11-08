<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CCFFFF;
            font-size: xx-large;
            background-color: #800000;
        }
        .auto-style2 {
            text-decoration: underline;
            color: #990033;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            &nbsp;&nbsp;&nbsp;
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/employes.xml"></asp:XmlDataSource>
            <strong><em style="color: #990033; text-decoration: underline">&lt;by:Ahmed elayan ali aldawaherh&gt;</em></strong></p>
        <div style="align-content:center;">
            <table align="center">
                <tr>
                    <td class="auto-style1" style="text-align: center;border-style:dashed;border-color:coral;">
                        <strong style="font-size: xx-large">employee data </strong>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
        <asp:DataList ID="DataList1"  runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="3px" CellPadding="4" DataSourceID="XmlDataSource1" ForeColor="Black" CellSpacing="3" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" style="font-size: xx-large; border-style:dashed; border-top-style:dashed;border-top-color:brown;border-top-width:5px; border-bottom-style:dashed;border-bottom-color:brown;border-bottom-width:5px; font-weight: 700">
            <AlternatingItemStyle BackColor="PaleGoldenrod" />
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <ItemTemplate>
                id:
                <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' ForeColor='<%# System.Drawing.Color.FromName(( Eval("color").ToString())) %>' />
                <br />
                name:
                <asp:Label ID="nameLabel" runat="server"  Text='<%# Eval("name") %>' />
                <br />
                salary:
                <asp:Label ID="salaryLabel" runat="server" Text='<%# Eval("salary") %>' />
               
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        </asp:DataList>
                    </td>
                </tr>
            </table>
            </div>
    </form>
</body>
</html>
