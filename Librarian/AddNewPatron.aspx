<%@ Page Title="Add A New Customer" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AddNewPatron.aspx.vb" Inherits="Librarin_Add_Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 class="title">Add New Patron</h1>

    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="195px" 
        Width="443px" ActiveStepIndex="1">


        <WizardSteps>
            <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title="">
                <ContentTemplate>
                    <table style="font-size:100%;height:200px;width:448px;">
                        <tr>
                            <td align="right">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                    ControlToValidate="UserName" ErrorMessage="User Name is required." 
                                    ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="Password is required." 
                                    ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" 
                                    AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" 
                                    ControlToValidate="ConfirmPassword" 
                                    ErrorMessage="Confirm Password is required." 
                                    ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" 
                                    ControlToValidate="Email" ErrorMessage="E-mail is required." 
                                    ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Question" runat="server" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" 
                                    ControlToValidate="Question" ErrorMessage="Security question is required." 
                                    ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" 
                                    ControlToValidate="Answer" ErrorMessage="Security answer is required." 
                                    ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" 
                                    ErrorMessage="The Password and Confirmation Password must match." 
                                    ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2" style="color:Red;">
                                <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CreateUserWizardStep>



            <asp:WizardStep ID="UserProfile" runat="server" StepType="Step" 
                Title="UserProfile">
                <table>
                <tr> 
                    <td align = "right" style="width: 83px" >First Name:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_FirstName" runat = "server" Columns = "20"></asp:Textbox><asp:Label
                        ID="fnlbl" runat="server" Text=""></asp:Label></td>
                    
                </tr>
                
                <tr> 
                    <td align = "right" style="width: 83px" >Last Name:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_LastName" runat = "server" Columns = "20"></asp:Textbox>
                    <asp:Label ID="lnlbl" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                
                 <tr> 
                    <td align = "right" style="width: 83px" >Birthday:</td> <td align = "left" 
                         style="width: 329px"> <asp:TextBox ID="user_Birthday" runat = "server" Columns = "20"></asp:Textbox>
                     <asp:Label ID="bdlbl" runat="server" Text=""></asp:Label>
                     </td>
                </tr>

                <tr> 
                    <td align = "right" style="width: 83px" >Address:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_Address" runat = "server" Columns = "50"></asp:Textbox></td>
                </tr>

                <tr> 
                    <td align = "right" style="width: 83px" >Address2:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_Address2" runat = "server" Columns = "50"></asp:Textbox></td>
                </tr>

                 <tr> 
                    <td align = "right" style="width: 83px" >City:</td> <td align = "left" 
                         style="width: 329px"> <asp:TextBox ID="user_City" runat = "server" Columns = "15"></asp:Textbox>
                        <asp:Label ID="citylbl" runat="server" Text=""></asp:Label></td>
                </tr>
                
                 <tr> 
                    <td align = "right" style="width: 83px" >State:</td> <td align = "left" 
                         style="width: 329px"> <asp:DropDownList ID="state_dropdown" runat = "server" DataSourceID = "cs_SLPL" DataTextField = "PostalCode" DataValueField = "PostalCode">
                    <asp:ListItem Selected="True" Text="IA" Value = "IA" ></asp:ListItem></asp:DropDownList></td>
                </tr>
                
                <tr> 
                    <td align = "right" style="width: 83px" >Zip code:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_Zip" runat = "server" Columns = "8"></asp:Textbox>
                    <asp:Label ID="ziplbl" runat="server"></asp:Label>
                    </td>
                </tr>

                <tr> 
                    <td align = "right" style="width: 83px" >Phone:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_Phone" runat = "server" Columns = "15"></asp:Textbox></td>
                </tr>
                
                <tr> 
                    <td align = "right" style="width: 83px" >Phone2:</td> <td align = "left" 
                        style="width: 329px"> <asp:TextBox ID="user_Phone2" runat = "server" Columns = "15"></asp:Textbox></td>
                </tr>

                   <asp:SqlDataSource ID="cs_SLPL" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
                        SelectCommand="SELECT [PostalCode] FROM [slpl_postalStates]">
                    </asp:SqlDataSource>
                
                </table>
            </asp:WizardStep>



            <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                <ContentTemplate>
                    <table style="font-size:100%;height:192px;width:375px;">
                        <tr>
                            <td align="center" colspan="2">
                                Complete</td>
                        </tr>
                        <tr>
                            <td>
                                Your account has been successfully created.</td>
                        </tr>
                        <tr>
                            <td align="center" colspan="2">
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" 
                                    CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" 
                                    onclick="ContinueButton_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:cs_SLPL %>" 
        SelectCommand="SELECT * FROM [vw_aspnet_Users]"></asp:SqlDataSource>

</asp:Content>

