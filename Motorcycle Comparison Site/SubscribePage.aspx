<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="SubscribePage.aspx.cs" Inherits="SubscribePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="SubscribeSection">
        <h2>Thinking about Subscribing? We don't blame you!</h2>
     <ul class="newsletterSignUp">
                   <li>
                       <asp:Label ID="Label1" runat="server" Text="Enter Your Email:"></asp:Label>
                   </li>
                    <li>
                        <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox>
                    </li>
                    <li>
                         <asp:Button ID="Button1" runat="server" Text="Subscribe" OnClick="Button1_Click" /><asp:Label ID="LabelSubscribed" runat="server" Text="Subscribed!" Visible="False" CssClass="SubscribedLabel"></asp:Label>
                         
                    </li>
                </ul>
               <asp:Label ID="LabelInsertError" runat="server"></asp:Label>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxEmail" Display="Dynamic" ErrorMessage="Please Enter Your Email" CssClass="ErrorMessage"></asp:RequiredFieldValidator>
     </div>
    <div>
        <p style="margin-bottom:300px;"></p>
    </div>
</asp:Content>

