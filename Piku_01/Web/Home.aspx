<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Piku_01.Web.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
        <div style="display:grid;padding: 8rem;">
            <main style="display: grid; grid-auto-flow: column;">
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <div style="display: flex; justify-content: center; align-items: center;">
                        <a href="HomeControl.aspx?Cid=<%#Eval("id") %>"><asp:Label runat="server" class="btn btn-default" style="background-color: #ffffff; font-size: 1.5em; width: 106px; line-height: 4;"  Text='<%#Eval("name") %>'></asp:Label></a>
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </main>
            <aside>
                <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" class="btn btn-default" Text="Add" OnClick="Button1_Click1"  />
                <asp:Button ID="Button2" runat="server" class="btn btn-default" Text="Start"  OnClick="Button2_Click" />
                <br />
                <br />
                <asp:ListView ID="ListView1" runat="server" >
                    <ItemTemplate>
                        <div class="nav panel-body panel panel-default">
                            <font "header15-s"><%#Container.DataItemIndex+1 %>.</font>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>' />
                            
                            <a href="HomeControl.aspx?id=<%#Container.DataItemIndex %>" class="navbar-right">
                                <asp:Label runat="server" class="btn btn-default" Text="Delete"></asp:Label>
                            </a>
                           
                        </div>
                    </ItemTemplate>
                </asp:ListView>
            </aside>
            <div id="_Basic" runat="server" class="progress progress-striped active">
                <div id="Basic" runat="server" class="progress-bar" style="width: 0%"></div>
            </div>
        </div>
       </ContentTemplate></asp:UpdatePanel>
</asp:Content>
