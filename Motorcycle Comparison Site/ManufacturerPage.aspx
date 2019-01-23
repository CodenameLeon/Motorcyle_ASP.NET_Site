<%@ Page Title="" Language="C#" MasterPageFile="~/Manufacturer.master" AutoEventWireup="true" CodeFile="ManufacturerPage.aspx.cs" Inherits="ManufacturerPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftColumn" Runat="Server">
    
    <h2 style="padding:5px;">List of Manufacturer Models:</h2>

    <asp:SqlDataSource ID="SqlDataSourceManufacturerModels" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ManufacturerID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ManufacturerID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ModelID" DataSourceID="SqlDataSourceManufacturerModels" CellPadding="4" ForeColor="#333333" GridLines="None" AllowSorting="True" Font-Size="Large" HorizontalAlign="Center">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>' Width="200px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:HyperLinkField DataNavigateUrlFields="ModelID" DataNavigateUrlFormatString="ModelPage.aspx?id={0}" DataTextField="ModelName" HeaderText="Model Name" />
            <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="ModelName" Visible="False" />
            <asp:BoundField DataField="ModelYear" HeaderText="Model Year" SortExpression="ModelYear" />
            <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement" SortExpression="EngineDisplacement" />
            <asp:BoundField DataField="EngineConfiguration" HeaderText="Engine Configuration" SortExpression="EngineConfiguration" />
            <asp:BoundField DataField="Horsepower" HeaderText="Horsepower" SortExpression="Horsepower" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:CheckBoxField DataField="ABS" HeaderText="ABS" SortExpression="ABS" />
            <asp:BoundField DataField="QuarterMile" HeaderText="Quarter Mile" SortExpression="QuarterMile" />
            <asp:BoundField DataField="FrameType" HeaderText="Frame Type" SortExpression="FrameType" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:BoundField DataField="RakeDegrees" HeaderText="Rake Degrees" SortExpression="RakeDegrees" />
            <asp:BoundField DataField="TrailLength" HeaderText="Trail Length" SortExpression="TrailLength" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" Font-Size="Large" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" Font-Size="Larger" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
        
         

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="RightColumn" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="." Height="200px" style="margin-right: 1186px"></asp:Label>
    
</asp:Content>

