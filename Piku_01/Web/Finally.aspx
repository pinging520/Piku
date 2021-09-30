<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finally.aspx.cs" Inherits="Piku_01.Web.Finally" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="padding-top: 50px;">
    <asp:ListView ID="ListView1" runat="server">
        <LayoutTemplate>
            <table class="table table-striped table-hover ">
                <thead>
                    <tr>
                        <th><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">No</font></font></th>
                        <th style="width: 100%;"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Name</font></font></th>
                    </tr>
                </thead>
                <tr id="itemPlaceholder" runat="server"></tr>
            </table>
        </LayoutTemplate>
        <ItemTemplate>
            <tr>
                <td><%#Container.DataItemIndex+1 %></td>
                <td><%#Eval("name") %></td>
            </tr>
        </ItemTemplate>
    </asp:ListView>
    </div>
</asp:Content>
