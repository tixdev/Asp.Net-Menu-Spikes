<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicXmlMenu.aspx.cs" Inherits="MenuBuild.DynamicXmlMenu" %>
<%@Register src="~/UserControls/DynamicXmlMenu.ascx" tagPrefix="ctrl" tagName="DynamicXmlMenu"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <ctrl:DynamicXmlMenu ID="dynamicXmlMenu" runat="server"></ctrl:DynamicXmlMenu>
    </form>
</body>
</html>
