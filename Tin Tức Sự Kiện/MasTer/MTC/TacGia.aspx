<%@ Page Title="" Language="C#" MasterPageFile="~/MasTer/Home.Master" AutoEventWireup="true" CodeBehind="TacGia.aspx.cs" Inherits="Tin_Tức_Sự_Kiện.MasTer.MTC.TacGia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TACGIA_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="TACGIA_ID" HeaderText="TACGIA_ID" ReadOnly="True" SortExpression="TACGIA_ID" />
        <asp:BoundField DataField="TENTACGIA" HeaderText="TENTACGIA" SortExpression="TENTACGIA" />
        <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" SelectCommand="SELECT * FROM [TACGIA]"></asp:SqlDataSource>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TinTucConnectionString1 %>" DeleteCommand="DELETE FROM [TACGIA] WHERE [TGia_ID] = @TGia_ID" InsertCommand="INSERT INTO [TACGIA] ([TGia_ID], [TENTG], [EMAIL]) VALUES (@TGia_ID, @TENTG, @EMAIL)" ProviderName="<%$ ConnectionStrings:TinTucConnectionString1.ProviderName %>" SelectCommand="SELECT [TGia_ID], [TENTG], [EMAIL] FROM [TACGIA]" UpdateCommand="UPDATE [TACGIA] SET [TENTG] = @TENTG, [EMAIL] = @EMAIL WHERE [TGia_ID] = @TGia_ID">
    <DeleteParameters>
        <asp:Parameter Name="TGia_ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="TGia_ID" Type="String" />
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="TENTG" Type="String" />
        <asp:Parameter Name="EMAIL" Type="String" />
        <asp:Parameter Name="TGia_ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
