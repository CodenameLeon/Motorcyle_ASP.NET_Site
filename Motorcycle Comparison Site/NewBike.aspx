<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageDefault.master" AutoEventWireup="true" CodeFile="NewBike.aspx.cs" Inherits="NewBike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2>Add Bike to Database using Form:</h2>

    <div id="NewBike">
    <asp:Panel ID="PanelAddBike" runat="server">

    <asp:SqlDataSource ID="SqlDataSourceAddBike" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" DeleteCommand="DELETE FROM [Models] WHERE [ModelID] = ? AND [ManufacturerID] = ? AND [CategoryID] = ? AND (([ModelYear] = ?) OR ([ModelYear] IS NULL AND ? IS NULL)) AND [ModelName] = ? AND [EngineDisplacement] = ? AND [EngineConfiguration] = ? AND [Horsepower] = ? AND [Weight] = ? AND [ABS] = ? AND (([QuarterMile] = ?) OR ([QuarterMile] IS NULL AND ? IS NULL)) AND [FrameType] = ? AND (([Length] = ?) OR ([Length] IS NULL AND ? IS NULL)) AND (([RakeDegrees] = ?) OR ([RakeDegrees] IS NULL AND ? IS NULL)) AND (([TrailLength] = ?) OR ([TrailLength] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Models] ([ManufacturerID], [CategoryID], [ModelYear], [ModelName], [EngineDisplacement], [EngineConfiguration], [Horsepower], [Weight], [ABS], [QuarterMile], [FrameType], [Length], [RakeDegrees], [TrailLength]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Models]" UpdateCommand="UPDATE [Models] SET [ManufacturerID] = ?, [CategoryID] = ?, [ModelYear] = ?, [ModelName] = ?, [EngineDisplacement] = ?, [EngineConfiguration] = ?, [Horsepower] = ?, [Weight] = ?, [ABS] = ?, [QuarterMile] = ?, [FrameType] = ?, [Length] = ?, [RakeDegrees] = ?, [TrailLength] = ? WHERE [ModelID] = ? AND [ManufacturerID] = ? AND [CategoryID] = ? AND (([ModelYear] = ?) OR ([ModelYear] IS NULL AND ? IS NULL)) AND [ModelName] = ? AND [EngineDisplacement] = ? AND [EngineConfiguration] = ? AND [Horsepower] = ? AND [Weight] = ? AND [ABS] = ? AND (([QuarterMile] = ?) OR ([QuarterMile] IS NULL AND ? IS NULL)) AND [FrameType] = ? AND (([Length] = ?) OR ([Length] IS NULL AND ? IS NULL)) AND (([RakeDegrees] = ?) OR ([RakeDegrees] IS NULL AND ? IS NULL)) AND (([TrailLength] = ?) OR ([TrailLength] IS NULL AND ? IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ModelID" Type="Int32" />
            <asp:Parameter Name="original_ManufacturerID" Type="Int32" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_ModelYear" Type="String" />
            <asp:Parameter Name="original_ModelYear" Type="String" />
            <asp:Parameter Name="original_ModelName" Type="String" />
            <asp:Parameter Name="original_EngineDisplacement" Type="String" />
            <asp:Parameter Name="original_EngineConfiguration" Type="String" />
            <asp:Parameter Name="original_Horsepower" Type="String" />
            <asp:Parameter Name="original_Weight" Type="Int32" />
            <asp:Parameter Name="original_ABS" Type="Boolean" />
            <asp:Parameter Name="original_QuarterMile" Type="String" />
            <asp:Parameter Name="original_QuarterMile" Type="String" />
            <asp:Parameter Name="original_FrameType" Type="String" />
            <asp:Parameter Name="original_Length" Type="String" />
            <asp:Parameter Name="original_Length" Type="String" />
            <asp:Parameter Name="original_RakeDegrees" Type="Double" />
            <asp:Parameter Name="original_RakeDegrees" Type="Double" />
            <asp:Parameter Name="original_TrailLength" Type="Double" />
            <asp:Parameter Name="original_TrailLength" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ManufacturerID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ModelYear" Type="String" />
            <asp:Parameter Name="ModelName" Type="String" />
            <asp:Parameter Name="EngineDisplacement" Type="String" />
            <asp:Parameter Name="EngineConfiguration" Type="String" />
            <asp:Parameter Name="Horsepower" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="ABS" Type="Boolean" />
            <asp:Parameter Name="QuarterMile" Type="String" />
            <asp:Parameter Name="FrameType" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="RakeDegrees" Type="Double" />
            <asp:Parameter Name="TrailLength" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ManufacturerID" Type="Int32" />
            <asp:Parameter Name="CategoryID" Type="Int32" />
            <asp:Parameter Name="ModelYear" Type="String" />
            <asp:Parameter Name="ModelName" Type="String" />
            <asp:Parameter Name="EngineDisplacement" Type="String" />
            <asp:Parameter Name="EngineConfiguration" Type="String" />
            <asp:Parameter Name="Horsepower" Type="String" />
            <asp:Parameter Name="Weight" Type="Int32" />
            <asp:Parameter Name="ABS" Type="Boolean" />
            <asp:Parameter Name="QuarterMile" Type="String" />
            <asp:Parameter Name="FrameType" Type="String" />
            <asp:Parameter Name="Length" Type="String" />
            <asp:Parameter Name="RakeDegrees" Type="Double" />
            <asp:Parameter Name="TrailLength" Type="Double" />
            <asp:Parameter Name="original_ModelID" Type="Int32" />
            <asp:Parameter Name="original_ManufacturerID" Type="Int32" />
            <asp:Parameter Name="original_CategoryID" Type="Int32" />
            <asp:Parameter Name="original_ModelYear" Type="String" />
            <asp:Parameter Name="original_ModelYear" Type="String" />
            <asp:Parameter Name="original_ModelName" Type="String" />
            <asp:Parameter Name="original_EngineDisplacement" Type="String" />
            <asp:Parameter Name="original_EngineConfiguration" Type="String" />
            <asp:Parameter Name="original_Horsepower" Type="String" />
            <asp:Parameter Name="original_Weight" Type="Int32" />
            <asp:Parameter Name="original_ABS" Type="Boolean" />
            <asp:Parameter Name="original_QuarterMile" Type="String" />
            <asp:Parameter Name="original_QuarterMile" Type="String" />
            <asp:Parameter Name="original_FrameType" Type="String" />
            <asp:Parameter Name="original_Length" Type="String" />
            <asp:Parameter Name="original_Length" Type="String" />
            <asp:Parameter Name="original_RakeDegrees" Type="Double" />
            <asp:Parameter Name="original_RakeDegrees" Type="Double" />
            <asp:Parameter Name="original_TrailLength" Type="Double" />
            <asp:Parameter Name="original_TrailLength" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="709px" AutoGenerateRows="False" DataKeyNames="ModelID" DataSourceID="SqlDataSourceAddBike" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted">
        <Fields>
            <asp:BoundField DataField="ModelID" HeaderText="ModelID" InsertVisible="False" ReadOnly="True" SortExpression="ModelID" Visible="False" />
            <asp:TemplateField HeaderText="Manufacturer" SortExpression="ManufacturerID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ManufacturerID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:SqlDataSource ID="SqlDataSourceManufacturers" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT * FROM [Manufacturer]"></asp:SqlDataSource>
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceManufacturers" DataTextField="ManufacturerName" DataValueField="ManufacturerID" SelectedValue='<%# Bind("ManufacturerID") %>' Width="161px">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ManufacturerID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="CategoryID">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CategoryID") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceCategory" DataTextField="CategoryName" DataValueField="CategoryID" SelectedValue='<%# Bind("CategoryID") %>' Width="171px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceCategory" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB %>" ProviderName="<%$ ConnectionStrings:ConnectionStringMotorcycleComparisonDB.ProviderName %>" SelectCommand="SELECT [CategoryName], [CategoryID] FROM [Categories]"></asp:SqlDataSource>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("CategoryID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Model Year" SortExpression="Model Year">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ModelYear") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxYear" runat="server" Text='<%# Bind("ModelYear") %>'></asp:TextBox>
                    <asp:Label ID="Label21" runat="server" Text="Example: 2018"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxYear" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Valid Year." ValidationExpression="^[1-2][0-9]{3}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBoxYear" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Year"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBoxYear" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Year"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ModelYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Model Name" SortExpression="Model Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ModelName") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxName" runat="server" Text='<%# Bind("ModelName") %>'></asp:TextBox>
                    <asp:Label ID="Label20" runat="server" Text="Example: Daytona 675R"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxName" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Model Name"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ModelName") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Engine Displacement (cc)" SortExpression="Engine Displacement (cc)">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EngineDisplacement") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxEngineDisplacement" runat="server" Text='<%# Bind("EngineDisplacement") %>'></asp:TextBox>
                    <asp:Label ID="Label19" runat="server" Text="cc "></asp:Label>
                    <asp:Label ID="Label22" runat="server" Text=" Example: 998"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxEngineDisplacement" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Numerical Engine Displacement Size" ValidationExpression="^[0-9]{2,4}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxEngineDisplacement" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter an Engine Displacement"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("EngineDisplacement") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Engine Configuration" SortExpression="Engine Configuration">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("EngineConfiguration") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxEngineConfig" runat="server" Text='<%# Bind("EngineConfiguration") %>'></asp:TextBox>
                    <asp:Label ID="Label14" runat="server" Text="Example: Inline-4"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEngineConfig" CssClass="ErrorMessage" ErrorMessage="Please Enter an Engine Configuration. "></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("EngineConfiguration") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Horsepower" SortExpression="Horsepower">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Horsepower") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxHorsepower" runat="server" Text='<%# Bind("Horsepower") %>'></asp:TextBox>
                    <asp:Label ID="Label15" runat="server" Text="Example: 189hp at 13,000rpm"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxHorsepower" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a valid Horsepower shown in the Example" ValidationExpression="^[0-9]{3}(hp)\s(at)\s[1-9]{2}(,)[0-9]{3}(rpm)"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxHorsepower" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter Horsepower"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Horsepower") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Weight" SortExpression="Weight">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxWeight" runat="server" Text='<%# Bind("Weight") %>'></asp:TextBox>
                    <asp:Label ID="Label18" runat="server" Text="lbs. Example: 450"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxWeight" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Numerical Weight" ValidationExpression="^[0-9]{2,4}"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxWeight" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Valid Weight"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Weight") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ABS" SortExpression="ABS">
                <EditItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("ABS") %>' />
                </EditItemTemplate>
                <HeaderTemplate>
                    ABS? Yes / No
                </HeaderTemplate>
                <InsertItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("ABS") %>' />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("ABS") %>' Enabled="false" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quarter-Mile Time and Speed" SortExpression="Quarter-Mile Time and Speed">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("QuarterMile") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxQuarterMile" runat="server" Text='<%# Bind("QuarterMile") %>'></asp:TextBox>
                    <asp:Label ID="Label16" runat="server" Text="Example: 10.02s at 158mph"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxQuarterMile" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Quarter-Mile Time with Speed"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("QuarterMile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Frame Type" SortExpression="Frame Type">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("FrameType") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxFrameType" runat="server" Text='<%# Bind("FrameType") %>'></asp:TextBox>
                    <asp:Label ID="Label23" runat="server" Text="Example: Steel"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFrameType" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Frame Type"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("FrameType") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Wheel Base" SortExpression="Length">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Length") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxLength" runat="server" Text='<%# Bind("Length") %>'></asp:TextBox>
                    <asp:Label ID="Label17" runat="server" Text="in Inches"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxLength" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Wheel Base Length in Inches." ValidationExpression="^[0-9]{2,3}"></asp:RegularExpressionValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Length") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Rake (Degrees)" SortExpression="Rake (Degrees)">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("RakeDegrees") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxRake" runat="server" Text='<%# Bind("RakeDegrees") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxRake" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter the Rake Degree"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("RakeDegrees") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Trail Length (inches)" SortExpression="Trail Length (in)">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("TrailLength") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBoxTrail" runat="server" Text='<%# Bind("TrailLength") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxTrail" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Please Enter a Trail Length in Inches"></asp:RequiredFieldValidator>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("TrailLength") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <InsertItemTemplate>
                    <br />
&nbsp;
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Insert" Text="Add Bike!" Width="103px" />
                    &nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <ItemStyle Height="10px" />
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>

  </asp:Panel>
   </div>

    <asp:Label ID="LabelInsertSuccess" runat="server" Text=""></asp:Label>
    <asp:Label ID="LabelInsertError" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button1" runat="server" Text="Return to Bike List Page" Visible="False" OnClick="Button1_Click" />

</asp:Content>

