<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="BikeComparisonPage.aspx.cs" Inherits="BikeComparisonPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="BikeComparison">

        <div class="row">
            <div class="column">
                 <asp:DropDownList ID="DropDownListBike1" runat="server" DataSourceID="SqlDataSourceBikeSelector" DataTextField="ModelName" DataValueField="ModelID" AutoPostBack="True" Font-Size="Large" Width="212px"></asp:DropDownList>
            </div>
            <div class="column">
                <asp:Panel ID="Panel3" runat="server">
                   <asp:DropDownList ID="DropDownListBike2" runat="server" DataSourceID="SqlDataSourceBikeSelector" DataTextField="ModelName" DataValueField="ModelID" AutoPostBack="True" Font-Size="Large" Width="212px"></asp:DropDownList>
                </asp:Panel>
            </div>
        </div>

        <div class="row">
            <div class="column">
                <asp:ListView ID="ListViewBikeImage1" runat="server" DataSourceID="SqlDataSourceBike1">
                     <ItemTemplate>
       <section class="Bike1"> 
                <asp:Image ID="ImageBike1" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>' Height="400px" Width="550px" />
           </section>
                </ItemTemplate>
                 </asp:ListView>
            </div>
            <div class="column">
                <asp:Panel ID="Panel1" runat="server">
                <asp:ListView ID="ListViewBikeImage2" runat="server" DataSourceID="SqlDataSourceBike2">
                    <ItemTemplate>
                        <section class="BikeImage2"> 
                            <asp:Image ID="ImageBike2" runat="server" ImageUrl='<%# string.Format("Images/Bikes/{0}.jpg", Eval("ModelName")) %>' Height="400px" Width="550px" />
                        </section>
                    </ItemTemplate>
                </asp:ListView>
                    </asp:Panel>
             </div>
        </div>


        <div class="row">
            <div class="column">

                <asp:SqlDataSource ID="SqlDataSourceBikeSelector" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [ModelName], [ModelID] FROM [Models]"></asp:SqlDataSource>

                <asp:SqlDataSource ID="SqlDataSourceBike1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ModelID] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListBike1" Name="ModelID" PropertyName="SelectedValue" Type="Int32" />
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

            <div class="column">
                <asp:Panel ID="Panel2" runat="server">
                <asp:SqlDataSource ID="SqlDataSourceBike2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models] WHERE ([ModelID] = ?)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownListBike2" Name="ModelID" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DetailsView ID="DetailsViewBike2" runat="server" AutoGenerateRows="False" CssClass="DetailsViewComparisonText" DataKeyNames="ModelID" DataSourceID="SqlDataSourceBike2" BackColor="White" GridLines="Vertical" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
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
                        <asp:CheckBoxField DataField="ABS" HeaderText="ABS: " SortExpression="ABS" />
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
           </asp:Panel>
            </div>
        </div>

    </div>

</asp:Content>

