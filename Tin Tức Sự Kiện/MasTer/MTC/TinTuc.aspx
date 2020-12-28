<%@ Page Title="" Language="C#" MasterPageFile="~/MasTer/Home.Master" AutoEventWireup="true" CodeBehind="TinTuc.aspx.cs" Inherits="Tin_Tức_Sự_Kiện.MasTer.MTC.TinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TIN_ID" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
        <Columns>
            <asp:BoundField DataField="TIN_ID" HeaderText="TIN_ID" ReadOnly="True" SortExpression="TIN_ID" />
            <asp:BoundField DataField="NOIDUNG" HeaderText="NOIDUNG" SortExpression="NOIDUNG" />
            <asp:BoundField DataField="NGAYGUI" HeaderText="NGAYGUI" SortExpression="NGAYGUI" />
            <asp:BoundField DataField="TACGIA_ID" HeaderText="TACGIA_ID" SortExpression="TACGIA_ID" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLBHConnectionString %>" SelectCommand="SELECT * FROM [TINTUC]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TinTucConnectionString1 %>" DeleteCommand="DELETE FROM [TINTUC] WHERE [Tin_ID] = @Tin_ID" InsertCommand="INSERT INTO [TINTUC] ([Tin_ID], [NoiDung], [NgayGui], [TGia_ID]) VALUES (@Tin_ID, @NoiDung, @NgayGui, @TGia_ID)" ProviderName="<%$ ConnectionStrings:TinTucConnectionString1.ProviderName %>" SelectCommand="SELECT [Tin_ID], [NoiDung], [NgayGui], [TGia_ID] FROM [TINTUC]" UpdateCommand="UPDATE [TINTUC] SET [NoiDung] = @NoiDung, [NgayGui] = @NgayGui, [TGia_ID] = @TGia_ID WHERE [Tin_ID] = @Tin_ID">
        <DeleteParameters>
            <asp:Parameter Name="Tin_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Tin_ID" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter DbType="Date" Name="NgayGui" />
            <asp:Parameter Name="TGia_ID" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter DbType="Date" Name="NgayGui" />
            <asp:Parameter Name="TGia_ID" Type="String" />
            <asp:Parameter Name="Tin_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
