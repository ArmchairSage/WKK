<%@ Page Title="" Language="C#" MasterPageFile="~/WKKTemplate.Master" AutoEventWireup="true" CodeBehind="CommunityBlog.aspx.cs" Inherits="WKK_Website.CommunityBlog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        Community Blog<br/>
    </div>

    <div class="threeColumnbox">
        <div class="threeColumninnerbox">
            <asp:Image ID="Image1" runat="server" ImageUrl="images/WKKBlogBannerCrop.jpg" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" Height="179px" Width="876px" />
            <br /> <br />

            <asp:TextBox ID="txtBlog" runat="server" Font-Size="X-Large" Height="250px" TextMode="MultiLine" Width="891px" BackColor="#006666" ForeColor="White" ReadOnly="True" Columns="80"></asp:TextBox>
            <br /> <br /> 
            <asp:Label ID="lblChat" runat="server" ForeColor="White" Text="Type below to start chatting!"></asp:Label>
            <br /> <br />

            <asp:TextBox ID="txtEntry" runat="server" Font-Size="X-Large" Width="534px" AutoCompleteType="Disabled"></asp:TextBox> 
            &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Height="27px" Width="80px" CausesValidation="False" />
            &nbsp;<asp:FileUpload ID="fulBrowse" runat="server" Height="24px" Width="220px" ForeColor="White" />

            <br /> <br />
            <asp:TextBox ID="txtName" runat="server" Width="189px" AutoCompleteType="Disabled"></asp:TextBox>
            &nbsp;<asp:Label ID="lblName" runat="server" ForeColor="White" Text="&lt; Enter your name here!"></asp:Label>
            <br />  
            
            <asp:Label ID="lblStatus" runat="server" ForeColor="White"></asp:Label>

            <br /> <br />

            <asp:Image ID="imgPreview" runat="server" Width="200px" Height="200px" AlternateText="To view a posted image, enter the full file name" BackColor="#006666" BorderColor="#006666" BorderStyle="Solid" ForeColor="White" />
            &nbsp;<asp:TextBox ID="txtImageSearch" runat="server" Font-Size="Medium" Height="23px" Width="131px" AutoCompleteType="Disabled">here!</asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" CausesValidation="False" />
            &nbsp;<br /> <br />
            <asp:Label ID="lblImageStatus" runat="server" Font-Bold="True" ForeColor="White"></asp:Label>
            <br />
            
        </div>
    </div>

</asp:Content>
