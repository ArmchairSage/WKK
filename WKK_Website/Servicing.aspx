<%@ Page Title="" Language="C#" MasterPageFile="~/WKKTemplate.Master" AutoEventWireup="true" CodeBehind="Servicing.aspx.cs" Inherits="WKK_Website.Servicing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        Servicing<br/>
    </div>

    <div class="twoColumnbox">
        <div class="twoColumninnerbox">

            &nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image1" runat="server" Height="190px" Width="190px" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" ImageUrl="images/MOT.jpg" />
            <br /> <br /> <br /> <br />

            &nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image2" runat="server" Height="190px" Width="190px" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" ImageUrl="images/Maintenance.jpg" />
            <br /> <br /> <br /> <br />

            &nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image3" runat="server" Height="190px" Width="190px" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" ImageUrl="~/images/Refurbishment.jpg" />
            <br /> <br /> <br /> <br />

            &nbsp&nbsp&nbsp&nbsp<asp:Image ID="Image4" runat="server" Height="190px" Width="190px" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" ImageUrl="~/images/OrangeCar.jpg" />
            <br /> <br />

        </div>
    </div>

    <div class="threeColumnbox">
        <div class="threeColumninnerbox">

            <asp:Label ID="lblMOT" runat="server" BackColor="DarkSlateGray" BorderColor="DarkSlateGray" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Khaki" Text="MOT Servicing" Width="486px" BorderWidth="10px"></asp:Label>
            <br />
            <asp:Label ID="lblMOTTxt" runat="server" BackColor="#006666" Height="143px" Text="Placeholder text about MOT Servicing" Width="486px" BorderColor="#006666" BorderStyle="Solid" ForeColor="White" BorderWidth="10px"></asp:Label>
            <br /> <br /> <br /> <br />

            <asp:Label ID="lblMaintenance" runat="server" BackColor="DarkSlateGray" BorderColor="DarkSlateGray" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Khaki" Text="Maintenance" Width="486px" BorderWidth="10px"></asp:Label>
            <br />
            <asp:Label ID="lblMaintenanceTxt" runat="server" BackColor="#006666" Height="144px" Text="Placeholder text about Maintenance" Width="486px" BorderColor="#006666" BorderStyle="Solid" ForeColor="White" BorderWidth="10px"></asp:Label>
            <br /> <br /> <br /> <br />

            <asp:Label ID="lblRefurbishment" runat="server" BackColor="DarkSlateGray" BorderColor="DarkSlateGray" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Khaki" Text="Refurbishment" Width="486px" BorderWidth="10px"></asp:Label>
            <br />
            <asp:Label ID="lblRefurbishmentTxt" runat="server" BackColor="#006666" Height="146px" Text="Placeholder text about Refurbishment" Width="486px" BorderColor="#006666" BorderStyle="Solid" ForeColor="White" BorderWidth="10px"></asp:Label>
            <br /> <br /> <br /> <br />

            <asp:Label ID="lblHire" runat="server" BackColor="DarkSlateGray" BorderColor="DarkSlateGray" BorderStyle="Solid" Font-Bold="True" Font-Size="X-Large" ForeColor="Khaki" Text="Hire" Width="486px" BorderWidth="10px"></asp:Label>
            <br />
            <asp:Label ID="lblHireTxt" runat="server" BackColor="#006666" Height="147px" Text="Placeholder text about Hire" Width="486px" BorderColor="#006666" BorderStyle="Solid" ForeColor="White" BorderWidth="10px"></asp:Label>
            <br /> <br />

        </div>
    </div>

</asp:Content>
