<%@ Page Title="" Language="C#" MasterPageFile="~/WKKTemplate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WKK_Website.Home1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        About Us<br/>
    </div>

    <div class="twoColumnbox">
        <div class="twoColumninnerbox">
            [Placeholder text for "About Us"] <br /> <br />
            Welcome to the Wacky Kar Klub website! A gathering hub for the vintage car enthusiasts of Northern Ireland!<br /> <br />
            Established by a small group of passionate car owners in 1986, we aim to celebrate, preserve and share the rich heritage of automotive history. <br /> <br />
            Since then, we have grown to become a vibrant community dedicated to appreciating, restoring, and enjoying vintage vehicles. <br /> <br />
            We cherish a diverse array of registered vehicles, from the elegant Rolls-Royce and powerful Bentley models of the 1920s to the iconic Ford Model T and pre-war MG roadsters. <br />
        </div>
    </div>

    <div class="threeColumnbox">
        <div class="threeColumninnerbox">
            <asp:AdRotator ID="adrImages" runat="server" AdvertisementFile="AboutUs.xml" Height="500px" Width="500px" />
        </div>
    </div>

</asp:Content>