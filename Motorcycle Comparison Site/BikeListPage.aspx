<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="BikeListPage.aspx.cs" Inherits="BikeListPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>List of All Bikes in the Database</h2>
    <ul class="BikeListSearch">
        <li>
            <asp:Button ID="ButtonShowAll" runat="server" Text="Show All" OnClick="ButtonShowAll_Click" Width="118px" />
        </li>
        <li>
            <asp:Label ID="Label2" runat="server" Text="Or Try Searching: "></asp:Label>
            <asp:textbox runat="server" id="TextBoxBikeSearch"></asp:textbox>
            <asp:button runat="server" text="Search!" ID="ButtonSearch" OnClick="ButtonSearch_Click" />
        </li>
        <li>
            <asp:Label ID="Label1" runat="server" Text="Not finding what you're looking for? Add it to the Database: " Visible="False"></asp:Label>    <asp:Button ID="Button1" runat="server" Text="Add a Bike!" OnClick="Button1_Click" Visible="False" />
        </li>

    </ul>
        <br />
    <asp:Panel ID="PanelAllBikes" runat="server" HorizontalAlign="Center">
        <asp:SqlDataSource ID="SqlDataSourceAllBikes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT Models.ModelID, Models.CategoryID, Models.ModelYear, Models.ModelName, Models.EngineDisplacement, Models.EngineConfiguration, Models.Horsepower, Models.Weight, Models.ABS, Models.QuarterMile, Models.FrameType, Models.Length, Models.RakeDegrees, Models.TrailLength, Manufacturer.ManufacturerName FROM (Models INNER JOIN Manufacturer ON Models.ManufacturerID = Manufacturer.ManufacturerID AND Models.ManufacturerID = Manufacturer.ManufacturerID)"></asp:SqlDataSource>
        <asp:GridView ID="GridViewAllBikes" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSourceAllBikes" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="ModelID" HeaderText="ModelID" InsertVisible="False" SortExpression="ModelID" Visible="False" />
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
                <asp:BoundField DataField="ManufacturerName" HeaderText="Manufacturer" SortExpression="ManufacturerName" />
                <asp:BoundField DataField="ModelYear" HeaderText="Model Year" SortExpression="ModelYear" />
                <asp:HyperLinkField DataNavigateUrlFields="ModelID" DataNavigateUrlFormatString="ModelPage.aspx?id={0}" DataTextField="ModelName" HeaderText="Model Name" />
                <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="ModelName" Visible="False" />
                <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement" SortExpression="EngineDisplacement" />
                <asp:BoundField DataField="EngineConfiguration" HeaderText="Engine Configuration" SortExpression="EngineConfiguration" />
                <asp:BoundField DataField="Horsepower" HeaderText="Horsepower" SortExpression="Horsepower" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:CheckBoxField DataField="ABS" HeaderText="ABS" SortExpression="ABS" />
                <asp:BoundField DataField="QuarterMile" HeaderText="Quarter-Mile" SortExpression="QuarterMile" />
                <asp:BoundField DataField="FrameType" HeaderText="Frame Type" SortExpression="FrameType" />
                <asp:BoundField DataField="Length" HeaderText="Wheel Base" SortExpression="Length" />
                <asp:BoundField DataField="RakeDegrees" HeaderText="Rake Degrees" SortExpression="RakeDegrees" />
                <asp:BoundField DataField="TrailLength" HeaderText="Trail Length" SortExpression="TrailLength" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </asp:Panel>

    <asp:Panel ID="PanelSearchBike" runat="server">
            <asp:SqlDataSource ID="SqlDataSourceBikeSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ModelName] LIKE '%' + ? + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxBikeSearch" Name="ModelName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    <div id="GridViewBikeList">
            <asp:GridView ID="GridViewBikeSearch" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceBikeSearch" CssClass="auto-style1" DataKeyNames="ModelID" CellPadding="4" CellSpacing="1" ForeColor="#333333" GridLines="None" HorizontalAlign="Center">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:TemplateField>
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>' Width="200px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ModelID" HeaderText="ModelID" SortExpression="ModelID" InsertVisible="False" ReadOnly="True" Visible="False" />
                    <asp:BoundField DataField="ManufacturerID" HeaderText="ManufacturerID" ReadOnly="True" SortExpression="ManufacturerID" Visible="False" />
                    <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
                    <asp:BoundField DataField="ModelYear" HeaderText="ModelYear" SortExpression="Model Year" />
                    <asp:HyperLinkField DataNavigateUrlFields="ModelID" DataNavigateUrlFormatString="ModelPage.aspx?id={0}" DataTextField="ModelName" HeaderText="Model Name" />
                    <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="ModelName" Visible="False" />
                    <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement (cc)" SortExpression="EngineDisplacement" />
                    <asp:BoundField DataField="EngineConfiguration" HeaderText="Engine Configuration" SortExpression="EngineConfiguration" />
                    <asp:BoundField DataField="Horsepower" HeaderText="Horsepower" SortExpression="Horsepower" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                    <asp:CheckBoxField DataField="ABS" HeaderText="ABS" SortExpression="ABS" />
                    <asp:BoundField DataField="QuarterMile" HeaderText="Quarter-Mile Time" SortExpression="QuarterMile" />
                    <asp:BoundField DataField="FrameType" HeaderText="Frame Type" SortExpression="FrameType" />
                    <asp:BoundField DataField="Length" HeaderText="Wheel Base" SortExpression="Length" />
                    <asp:BoundField DataField="RakeDegrees" HeaderText="Rake (Degrees)" SortExpression="RakeDegrees" />
                    <asp:BoundField DataField="TrailLength" HeaderText="Trail Length" SortExpression="TrailLength" />
                </Columns>
                <EditRowStyle BackColor="#999999" HorizontalAlign="Center" VerticalAlign="Middle" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" Font-Size="Large" ForeColor="#333333" HorizontalAlign="Center" VerticalAlign="Middle" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </div>
        </asp:Panel>

</asp:Content>

