<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="title">Accout Status</h1>
    <h3 class="title">My Outstanding Rental</h3>
    <asp:Label ID="Welcome_label" runat="server" Text=""></asp:Label>

        <br />
    <asp:Label ID="msglabel" runat="server" Text=""></asp:Label>
      <br />
    <asp:Repeater ID="Repeater1" Runat="server"  >
       <ItemTemplate>
       <table>
                <tr>
                    <td>
                        <%#DataBinder.Eval(Container, "DataItem.rentID")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container, "DataItem.gameID")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container, "DataItem.title")%>
                    </td>
                    <td>
                        <%#DataBinder.Eval(Container, "DataItem.date_borrow")%>
                    </td>
                     <td>
                        <%#DataBinder.Eval(Container, "DataItem.date_due")%>
                    </td>
                </tr>
        </table>
       </ItemTemplate>
    </asp:Repeater>
        





</asp:Content>

