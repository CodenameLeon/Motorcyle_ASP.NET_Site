<%@ Page Title="" Language="C#" MasterPageFile="~/Manufacturer.master" AutoEventWireup="true" CodeFile="ManufacturerDefault.aspx.cs" Inherits="ManufacturerDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftColumn" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RightColumn" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSourceManufacturers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [ManufacturerID], [ManufacturerName], [Details] FROM [Manufacturer] ORDER BY [ManufacturerID]"></asp:SqlDataSource>
    
    <asp:ListView ID="ListViewManufacturers" runat="server" DataSourceID="SqlDataSourceManufacturers">

        <ItemTemplate>
       <section class="Manufacturers"> 
         <ul> 
             <li>
            <asp:HyperLink ID="HyperLinkManufacturerPage" runat="server" NavigateUrl='<%# string.Format("ManufacturerPage.aspx?id={0}",Eval("ManufacturerID")) %>'>
                 <asp:Image ID="ImageLogo" runat="server" ImageUrl='<%# string.Format("Images/Manufacturers/{0}.png", Eval("ManufacturerID")) %>' Height="200px" Width="200px" />
              </asp:HyperLink> 
                </li>
<%--             <li>
                 <asp:Label ID="LabelManufacturerName" runat="server" 
                 Text='<%# Eval("ManufacturerName") %>' />
            </li>--%>

             <li>
                 <asp:Label ID="LabelManufacturerDetails" runat="server" 
                Text='<%# Eval("Details") %>' />
            </li>
          </ul>
        </section>  
       </ItemTemplate>
    </asp:ListView>

</asp:Content>

