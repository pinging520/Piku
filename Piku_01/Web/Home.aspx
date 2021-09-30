<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Piku_01.Web.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


        <div style="display:grid;padding: 8rem;">
            <main>
               
                <asp:ListView ID="ListView2" runat="server">
                    <ItemTemplate>
                        <a href="HomeControl.aspx?Cid=<%#Eval("id") %>"><asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label></a>
                    </ItemTemplate>
                </asp:ListView>
                

            </main>
            <aside>
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" Width="60px" />
                <asp:Button ID="Button2" runat="server" Text="Start" Width="60px" OnClick="Button2_Click" />
                <br />
                <br />
                <asp:ListView ID="ListView1" runat="server" >
                    
                    <ItemTemplate>
                        <div class="nav panel-body panel panel-default">
                            <font "header15-s"><%#Container.DataItemIndex+1 %></font>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>' />
                            
                            <a href="HomeControl.aspx?id=<%#Container.DataItemIndex %>" class="navbar-right">
                                <asp:Label runat="server" class="btn btn-default" Text="Delete"></asp:Label>
                            </a>
                           
                        </div>
                    </ItemTemplate>
                </asp:ListView>
                
            </aside>
        </div>
       
</asp:Content>
