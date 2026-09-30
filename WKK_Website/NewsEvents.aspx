<%@ Page Title="" Language="C#" MasterPageFile="~/WKKTemplate.Master" AutoEventWireup="true" CodeBehind="NewsEvents.aspx.cs" Inherits="WKK_Website.NewsEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        News & Events<br/>
    </div>

    <div class="twoColumnbox">
        <div class="twoColumninnerbox">
            
            <asp:Calendar ID="Calendar1" runat="server" Height="307px" Width="355px" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#009999" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" ForeColor="White">
                <DayStyle Font-Bold="False" />
                <OtherMonthDayStyle ForeColor="#006666" />
                <SelectedDayStyle BackColor="Khaki" ForeColor="Black" />
                <TitleStyle BackColor="#006666" Font-Bold="True" ForeColor="Khaki" />
                <TodayDayStyle BackColor="#006666" Font-Bold="True" />
                <WeekendDayStyle Font-Bold="False" />
            </asp:Calendar>
            <br /> <br />
            <asp:Label ID="lblEvents" runat="server" ForeColor="White" Width="356px"></asp:Label>

        </div>
    </div>

    <div class="threeColumnbox">
        <div class="threeColumninnerbox">
            <asp:TextBox ID="txtReviews" runat="server" Font-Size="X-Large" Height="250px" TextMode="MultiLine" Width="438px" BackColor="#006666" ForeColor="White" ReadOnly="True" Columns="80"></asp:TextBox>
            <br /> <br />
            <asp:Label ID="lblChat" runat="server" ForeColor="White" Text="Feel free to leave a review about one of our events you attended!"></asp:Label>
            <br /> <br />

            <asp:TextBox ID="txtEntry" runat="server" Font-Size="X-Large" Width="350px" AutoCompleteType="Disabled"></asp:TextBox> 
            &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" Height="27px" Width="80px" CausesValidation="False" />

            <br /> <br />
            <asp:TextBox ID="txtName" runat="server" Width="189px" AutoCompleteType="Disabled"></asp:TextBox>
            &nbsp;<asp:Label ID="lblName" runat="server" ForeColor="White" Text="&lt; Enter your name here!"></asp:Label>
            <br /> 

            <asp:Label ID="lblStatus" runat="server" ForeColor="White"></asp:Label>

        </div>
    </div>

</asp:Content>