<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JsonMenu.aspx.cs" Inherits="MenuBuild.JsonMenu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Scripts/jqwidgets-ver1.4.1/jqwidgets/styles/jqx.base.css" rel="stylesheet"
        type="text/css" />
    <script src="Scripts/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets-ver1.4.1/jqwidgets/jqxcore.js" type="text/javascript"></script>
    <script src="Scripts/jqwidgets-ver1.4.1/jqwidgets/jqxmenu.js" type="text/javascript"></script>
    <script src="UserControls/JsonMenuBuilder.js" type="text/javascript"></script>    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--http://www.codeproject.com/Articles/311758/Building-Menu-from-JSON--%>
        <%--http://www.jqwidgets.com/jquery-widgets-demo/#demos/jqxmenu/defaultfunctionality.htm--%>
        <%--http://johanleino.wordpress.com/2011/03/01/building-a-little-menu-with-a-some-json-linq-and-the-jquery-template-plugin/--%>
        <div id='jqxMenu'>
        </div>
    </div>
    </form>
    <script type="text/javascript" >
        $(document).ready(function () {
            var source = buildMenu();

            var ul = $("<ul></ul>");
            ul.appendTo("#jqxMenu");
            buildUL(ul, source);
            $("#jqxMenu").jqxMenu({ width: '600', height: '30px' });
        });
    </script>
</body>
</html>
