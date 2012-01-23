<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="MenuBuild._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Menu's
    </h2>
    <ul>
        <li>
            <div>
                <a href="DynamicXmlMenu.aspx" title="Dynamic xml menu">Dynamic xml menu</a>
            </div>
        </li>
        <li>
            <div>
                <a href="JsonMenu.aspx" title="JSON menu">JSON menu</a>
            </div>
        </li>
    </ul>
</asp:Content>
