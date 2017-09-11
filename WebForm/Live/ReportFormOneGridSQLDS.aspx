<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReportFormOneGridSQLDS.aspx.cs" Inherits="WebForm.Live.ReportFormOneGrid" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"
                OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating"
                OnRowCancelingEdit="GridView1_RowCancelingEdit">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                    <%--<asp:ButtonField ButtonType="Button" CommandName="Edit" HeaderText="Action" ShowHeader="True" Text="Edit" />--%> <%--Button field can be used for Modal, Command field can be used for Inline CRUD in grid as it provides Update and cancel option in grid--%>
                   <asp:TemplateField HeaderText="TBOX" SortExpression="TBOX">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TBOX") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("TBOX") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="DD" SortExpression="DD">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("DD") %>' runat="server">
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("DD") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CB" SortExpression="CB">
                        <EditItemTemplate>
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server"  RepeatDirection="Horizontal">
                                <asp:ListItem >B</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                            </asp:CheckBoxList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("CB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="RB" SortExpression="RB">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server"  RepeatDirection="Horizontal">
                                <asp:ListItem >B</asp:ListItem>
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("RB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WEBFORMSConnectionString %>" 
                SelectCommand="SELECT * FROM [GRIDSIMPLEEDIT]" DeleteCommand="DELETE FROM [GRIDSIMPLEEDIT] WHERE [ID] = @ID" 
                InsertCommand="INSERT INTO [GRIDSIMPLEEDIT] ([TBOX], [DD], [CB], [RB]) VALUES (@TBOX, @DD, @CB, @RB)" 
                UpdateCommand="UPDATE [GRIDSIMPLEEDIT] SET [TBOX] = @TBOX, [DD] = @DD, [CB] = @CB, [RB] = @RB WHERE [ID] = @ID" 
                 >
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TBOX" Type="String" />
                    <asp:Parameter Name="DD" Type="String" />
                    <asp:Parameter Name="CB" Type="String" />
                    <asp:Parameter Name="RB" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TBOX" Type="String" />
                    <asp:Parameter Name="DD" Type="String" />
                    <asp:Parameter Name="CB" Type="String" />
                    <asp:Parameter Name="RB" Type="String" />
                    <asp:Parameter Name="ID" Type="Int32" />
                </UpdateParameters>
             </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
