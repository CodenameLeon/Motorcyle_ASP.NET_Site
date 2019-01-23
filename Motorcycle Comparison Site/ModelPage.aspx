<%@ Page Title="" Language="C#" MasterPageFile="~/Manufacturer.master" AutoEventWireup="true" CodeFile="ModelPage.aspx.cs" Inherits="ModelPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="LeftColumn" Runat="Server">
            <div class="row">
            <div class="column">
                <h2>Choose a Bike:</h2>
                 <asp:DropDownList ID="DropDownListBike1" runat="server" DataSourceID="SqlDataSourceBikeSelector" DataTextField="ModelName" DataValueField="ModelID" Font-Size="Large" Width="212px"></asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="View" Height="30px" OnClick="Button1_Click" Width="77px" />
            </div>
			</div>
			
			<div class="row">
            <div class="column">
                <asp:ListView ID="ListViewBikeImage1" runat="server" DataSourceID="SqlDataSourceBike1">
                     <ItemTemplate>
       <section class="Bike1"> 
                <asp:Image ID="ImageBike1" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>'  Width="600px" />
           </section>
                </ItemTemplate>
                 </asp:ListView>
            </div>
			</div>
			
			 <div class="row">
            <div class="column">

                <asp:SqlDataSource ID="SqlDataSourceBikeSelector" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [ModelName], [ModelID] FROM [Models]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSourceBike1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ModelID] = ?)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ModelID" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsViewBike1" runat="server" AutoGenerateRows="False" CssClass="DetailsViewComparisonText" DataKeyNames="ModelID" DataSourceID="SqlDataSourceBike1" GridLines="Vertical" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="ModelID" HeaderText="ModelID" InsertVisible="False" ReadOnly="True" SortExpression="ModelID" Visible="False" />
                        <asp:BoundField DataField="ManufacturerID" HeaderText="ManufacturerID" SortExpression="ManufacturerID" Visible="False" />
                        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
                        <asp:BoundField DataField="ModelYear" HeaderText="Year:" SortExpression="ModelYear" />
                        <asp:BoundField DataField="ModelName" HeaderText="Model:" SortExpression="ModelName" />
                        <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement:" SortExpression="EngineDisplacement" />
                        <asp:BoundField DataField="EngineConfiguration" HeaderText="Engine Configuration:" SortExpression="EngineConfiguration" />
                        <asp:BoundField DataField="Horsepower" HeaderText="Horsepower:" SortExpression="Horsepower" />
                        <asp:BoundField DataField="Weight" HeaderText="Weight:" SortExpression="Weight" />
                        <asp:CheckBoxField DataField="ABS" HeaderText="ABS:" SortExpression="ABS" />
                        <asp:BoundField DataField="QuarterMile" HeaderText="Quarter-Mile Time:" SortExpression="QuarterMile" />
                        <asp:BoundField DataField="FrameType" HeaderText="Frame Type:" SortExpression="FrameType" />
                        <asp:BoundField DataField="Length" HeaderText="Wheel Base:" SortExpression="Length" />
                        <asp:BoundField DataField="RakeDegrees" HeaderText="Rake Degree:" SortExpression="RakeDegrees" />
                        <asp:BoundField DataField="TrailLength" HeaderText="Trail Length:" SortExpression="TrailLength" />
                    </Fields>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E6E6E6" />
                </asp:DetailsView>
                </div>
            </div>
   <%-- <ul class="BikeDetails">
        <li>
            <asp:DropDownList ID="DropDownListBikeSelector" runat="server" DataSourceID="SqlDataSourceBikeSelector" DataTextField="ModelName" DataValueField="ModelID" AutoPostBack="True"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSourceBikeSelector" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [ModelID], [ModelName] FROM [Models]"></asp:SqlDataSource>
        </li>
        <li>
            <asp:SqlDataSource ID="SqlDataSourceBikeImage" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [ModelID], [ModelName] FROM [Models] WHERE ([ModelID] = ?)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="ModelID" QueryStringField="id" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSourceBikeImage">
                <ItemTemplate>
                     <asp:Image ID="ImageBike1" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>' Height="500px" Width="600px" />
                </ItemTemplate>
            </asp:FormView>
        </li>
        <li>
    <asp:SqlDataSource ID="SqlDataSourceModel" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ModelID] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="" Name="ModelID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ModelID" DataSourceID="SqlDataSourceModel" Height="50px" Width="125px" Font-Size="Large">
        <EditRowStyle Font-Size="Large" />
        <Fields>
            <asp:BoundField DataField="ModelID" HeaderText="ModelID" InsertVisible="False" ReadOnly="True" SortExpression="ModelID" Visible="False" />
            <asp:BoundField DataField="ManufacturerID" HeaderText="ManufacturerID" SortExpression="ManufacturerID" Visible="False" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" Visible="False" />
            <asp:BoundField DataField="ModelName" HeaderText="Model Name" SortExpression="ModelName" />
            <asp:BoundField DataField="ModelYear" HeaderText="Model Year" SortExpression="ModelYear" />
            <asp:BoundField DataField="EngineDisplacement" HeaderText="Engine Displacement" SortExpression="EngineDisplacement" />
            <asp:BoundField DataField="EngineConfiguration" HeaderText="Engine Configuration" SortExpression="EngineConfiguration" />
            <asp:BoundField DataField="Horsepower" HeaderText="Horsepower" SortExpression="Horsepower" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:CheckBoxField DataField="ABS" HeaderText="ABS" SortExpression="ABS" />
            <asp:BoundField DataField="QuarterMile" HeaderText="Quarter-Mile (speed and time)" SortExpression="QuarterMile" />
            <asp:BoundField DataField="FrameType" HeaderText="FrameType" SortExpression="FrameType" />
            <asp:BoundField DataField="Length" HeaderText="Length" SortExpression="Length" />
            <asp:BoundField DataField="RakeDegrees" HeaderText="RakeDegrees" SortExpression="RakeDegrees" />
            <asp:BoundField DataField="TrailLength" HeaderText="TrailLength" SortExpression="TrailLength" />
        </Fields>
    </asp:DetailsView>
            </li>
    </ul>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="RightColumn" Runat="Server">
</asp:Content>

