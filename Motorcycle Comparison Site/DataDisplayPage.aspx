<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="DataDisplayPage.aspx.cs" Inherits="DataDisplayPage" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <ul class="Data">
       <li>
           <h2>Data</h2>
       </li>
       <li>
    <asp:SqlDataSource ID="SqlDataSourceWeightGraph" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT AVG(Models.Weight) AS Expr1, Manufacturer.ManufacturerName, Models.EngineDisplacement FROM (Models INNER JOIN Manufacturer ON Models.ManufacturerID = Manufacturer.ManufacturerID) WHERE (Models.EngineDisplacement &gt; '900') GROUP BY Manufacturer.ManufacturerName, Models.EngineDisplacement"></asp:SqlDataSource>

    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceWeightGraph" Height="346px" Palette="Pastel" Width="419px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="ManufacturerName" YValueMembers="Expr1" YValuesPerPoint="5" IsValueShownAsLabel="True" Legend="Legend1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1" Title="Manufacturers">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Name="Title1" Text="Average Weight by Manufacturer for Bikes over 900cc">
            </asp:Title>
        </Titles>
    </asp:Chart>
        </li>
       <li>
           <p style="padding-bottom:100px;">Here is a sample of Data using a SQL Query that displays the Average Weight of Bike Models Over 900cc - sorted by manufacturer.</p>
       </li>
       </ul>

</asp:Content>

