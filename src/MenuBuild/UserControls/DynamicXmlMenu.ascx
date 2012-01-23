<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DynamicXmlMenu.ascx.cs"
    Inherits="MenuBuild.UserControls.DynamicXmlMenu" %>
<asp:Menu ID="dymenu1" runat="server" DataSourceID="xmlDsMenu" Orientation="Horizontal">
    <DynamicMenuStyle BackColor="#228B22" />
    <StaticSelectedStyle BackColor="#FFBB77" />
    <DynamicSelectedStyle BackColor="#FFAA99" />
    <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
    <StaticHoverStyle BackColor="#abcdaa" Font-Bold="False" ForeColor="White" />
</asp:Menu>
<asp:XmlDataSource ID="xmlDsMenu" runat="server" DataFile="~/UserControls/DynamicXmlMenu.xml">
</asp:XmlDataSource>
