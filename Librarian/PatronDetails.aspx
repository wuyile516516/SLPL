<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="PatronDetails.aspx.vb" Inherits="Librarian_PatronDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames = "UserId" 
        DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" >
        
        <EditItemTemplate>
         <table>
            <tr>
            <td align ="right">First Name:</td>
            <td align ="left"><asp:TextBox ID="firstNameTextBox" runat="server" 
                Text='<%# Bind("firstName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Last Name:</td>
            <td align ="left"><asp:TextBox ID="lastNameTextBox" runat="server" 
                Text='<%# Bind("lastName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Address:</td>
            <td align ="left"><asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' /></td>
             </tr>

            <tr>
            <td align ="right">City:</td>
            <td align ="left"><asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' /></td>
            </tr>

            <tr>
            <td align ="right">State:</td>
            <td align ="left">
             <asp:DropDownList ID = "stateDropDownList" runat = "server" DataSourceID = "SqlDataSource2" DataTextField = "PostalCode" DataValueField = "PostalCode" SelectedValue = '<%# Bind("state") %>'>
             </asp:DropDownList>
             </td>
            </tr>

            <tr>
            <td align ="right">Zipcode:</td>
            <td align ="left"><asp:TextBox ID="zipcodeTextBox" runat="server" Text='<%# Bind("zipcode") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Phone:</td>
            <td align ="left"><asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' /></td>
            </tr>

           <tr>
            <td align ="right">UserName:</td>
           <td align ="left"><asp:TextBox ID="UserNameTextBox" runat="server" 
                Text='<%# Bind("UserName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Role Name:</td>
            <td align ="left"><asp:TextBox ID="RoleNameTextBox" runat="server" 
                Text='<%# Bind("RoleName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Birthday:</td>
            <td align ="left"><asp:TextBox ID="birthdayTextBox" runat="server" 
                Text='<%# Bind("birthday") %>' /></td>
            </tr>

            <tr>
             <td align ="right"> UserId:</td>
            <td align ="left"><asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' /></td>
            </tr>


            
            </table>
            
             <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            
            
             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
             selectcommand = "Select * from slpl_postalstates">
             
             </asp:SqlDataSource>

        </EditItemTemplate>


        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />


        <InsertItemTemplate>
          
       
        </InsertItemTemplate>
        
        
        <ItemTemplate>
        <br />
        <br />
        <br />
        <table>
            <tr>
            <td align ="right">First Name:</td>
            <td align ="left"><asp:Label ID="firstNameLabel" runat="server" Text='<%# Bind("firstName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Last Name:</td>
            <td align ="left"><asp:Label ID="lastNameLabel" runat="server" Text='<%# Bind("lastName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Address:</td>
            <td align ="left"><asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' /></td>
            </tr>

            <tr>
            <td align ="right">City:</td>
            <td align ="left"><asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' /></td>
            </tr>

            <tr>
            <td align ="right">State:</td>
            <td align ="left"><asp:Label ID="stateLabel" runat="server" Text='<%# Bind("state") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Zipcode:</td>
            <td align ="left"><asp:Label ID="zipcodeLabel" runat="server" Text='<%# Bind("zipcode") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Phone:</td>
            <td align ="left"><asp:Label ID="phoneLabel" runat="server" Text='<%# Bind("phone") %>' /></td>
            </tr>

            <tr>
            <td align ="right">User Name:</td>
            <td align ="left"><asp:Label ID="UserNameLabel" runat="server" Text='<%# Bind("UserName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Role Name:</td>
            <td align ="left"><asp:Label ID="RoleNameLabel" runat="server" Text='<%# Bind("RoleName") %>' /></td>
            </tr>

            <tr>
            <td align ="right">Birthday:</td>
            <td align ="left"><asp:Label ID="birthdayLabel" runat="server" Text='<%# Bind("birthday") %>' /></td>
            </tr>

            <tr>
            <td align ="right">UserId:</td>
            <td align ="left"><asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' /></td>
            </tr>

        </table>    
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                CommandName="Edit" Text="Edit" />
            &nbsp;
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                CommandName="Delete" Text="Delete" onclick = "deleteButton_click" OnClientClick = "return confirm('Are you sure you want to delete this customer record?')"/>
        
        </ItemTemplate>

        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />

    </asp:FormView>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="rentID" HeaderText="RentID" 
                SortExpression="rentID" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
            <asp:BoundField DataField="date_due" HeaderText="Date Due" 
                SortExpression="date_due" />
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>

    <br />
    <asp:Label ID= "lbl_DeletedCustomer" runat ="server" text = ""></asp:Label>
    <br />
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" SelectCommand="SELECT vw_slpl_rentMaterial.rentID, slpl_allMaterial.bookID,slpl_allMaterial.ISBN, slpl_allMaterial.title,  vw_slpl_rentMaterial.date_due FROM slpl_allMaterial INNER JOIN vw_slpl_rentMaterial ON slpl_allMaterial.bookID = vw_slpl_rentMaterial.gameID
where  vw_slpl_rentMaterial.UserId= @UserId and vw_slpl_rentMaterial.date_return is null
order by vw_slpl_rentMaterial.rentID">
        <SelectParameters>
            <asp:QueryStringParameter Name="UserId" QueryStringField="UserId" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

    

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        
        DeleteCommand="Delete From [aspnet_Users] where [UserId] = @UserId"

        UpdateCommand="UPDATE [slpl_userInfo] SET [firstName] = @FirstName, [LastName] = @LastName, [birthday] = @Birthday, [city] = @City, [state] = @State, [zipcode] = @Zipcode, [phone] = @Phone"

        
        SelectCommand="SELECT slpl_userInfo.UserId, slpl_userInfo.firstName, slpl_userInfo.lastName, slpl_userInfo.address, slpl_userInfo.city, slpl_userInfo.state, slpl_userInfo.zipcode, slpl_userInfo.phone, aspnet_Users.UserName, aspnet_Roles.RoleName, slpl_userInfo.birthday FROM slpl_userInfo INNER JOIN aspnet_Users ON slpl_userInfo.UserId = aspnet_Users.UserId INNER JOIN aspnet_Roles ON aspnet_Users.ApplicationId = aspnet_Roles.ApplicationId WHERE (slpl_userInfo.UserId = @UserId)">



        
        <DeleteParameters>
            <asp:Parameter Name = "UserId" Type ="Object" />
        </DeleteParameters>

        <SelectParameters>
            <asp:QueryStringParameter Name="UserId" QueryStringField="UserId" />
        </SelectParameters>

        <UpdateParameters>
            <asp:Parameter Name = "FirstName" Type = "String" />
            <asp:Parameter Name = "LastName" Type ="String" />
            <asp:Parameter Name = "Birthday" type="DateTime"/>
            <asp:Parameter Name = "City" Type ="String" />
            <asp:Parameter Name = "State" />
            <asp:Parameter Name = "Zipcode" />
            <asp:Parameter Name = "Phone" />
        </UpdateParameters>

    </asp:SqlDataSource>
</asp:Content>

