<%@ Page Title="" Language="C#" MasterPageFile="~/WKKTemplate.Master" AutoEventWireup="true" CodeBehind="Merchandise.aspx.cs" Inherits="WKK_Website.Merchandise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pagetitle">
        Club Merchandise<br/>
    </div>

    <div class="threeColumnbox">
        <div class="threeColumninnerbox">

            <asp:Label ID="lblFilter" runat="server" BackColor="DarkSlateGray" BorderColor="DarkSlateGray" BorderStyle="Solid" BorderWidth="10px" Font-Bold="True" ForeColor="Khaki" Text="Filter and Sort" Width="192px"></asp:Label>
            <br />

            <asp:DropDownList ID="ddlCountry" runat="server" AutoPostBack="True" BackColor="#006666" ForeColor="White" Width="212px" Height="40px" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged">
                <asp:ListItem Value="*">Country of Origin</asp:ListItem>
                <asp:ListItem>Austria</asp:ListItem>
                <asp:ListItem>Belgium</asp:ListItem>
                <asp:ListItem>Denmark</asp:ListItem>
                <asp:ListItem>France</asp:ListItem>
                <asp:ListItem>Germany</asp:ListItem>
                <asp:ListItem>Hungary</asp:ListItem>
                <asp:ListItem>Ireland</asp:ListItem>
                <asp:ListItem>Italy</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>United States</asp:ListItem>
            </asp:DropDownList>
            <br />

            <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="True" BackColor="#006666" ForeColor="White" Width="212px" Height="40px" OnSelectedIndexChanged="ddlYear_SelectedIndexChanged">
                <asp:ListItem Value="*">Year Range</asp:ListItem>
                <asp:ListItem Value="18">Before 1900</asp:ListItem>
                <asp:ListItem Value="190">1900 - 1909</asp:ListItem>
                <asp:ListItem Value="191">1910 - 1919</asp:ListItem>
                <asp:ListItem Value="192">1920 - 1929</asp:ListItem>
                <asp:ListItem Value="193">1930 - 1939</asp:ListItem>
                <asp:ListItem Value="194">1940 - 1949</asp:ListItem>
                <asp:ListItem Value="195">1950 - 1959</asp:ListItem>
            </asp:DropDownList>
            <br />

            <asp:DropDownList ID="ddlType" runat="server" AutoPostBack="True" BackColor="#006666" ForeColor="White" Width="212px" Height="40px" OnSelectedIndexChanged="ddlType_SelectedIndexChanged">
                <asp:ListItem Value="*">Type of Merchandise</asp:ListItem>
                <asp:ListItem Value="Apparel">Apparel (Clothing)</asp:ListItem>
                <asp:ListItem Value="Automotive Accessory">Automotive Accessories</asp:ListItem>
                <asp:ListItem Value="Collectible">Collectibles</asp:ListItem>
                <asp:ListItem>Memorabilia</asp:ListItem>
            </asp:DropDownList>
            <br /> <br />

            <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear all" Font-Bold="False" Font-Size="Large" CausesValidation="False" />

        </div>
    </div>

    <div class="twoColumnbox">
        <div class="twoColumninnerbox">

            <asp:GridView ID="gvMerchandise" runat="server" AutoGenerateColumns="False" Width="620px">
                <Columns>
                    <asp:ImageField AlternateText="Photo of the item on sale." DataImageUrlField="imgUrl" HeaderText=" " NullImageUrl="images/NoImage.jpg" ShowHeader="False">
                    </asp:ImageField>
                    <asp:BoundField DataField="name" HeaderText="Item Name" NullDisplayText="???" ReadOnly="True" />
                    <asp:BoundField DataField="type" HeaderText="Type" NullDisplayText="???" ReadOnly="True" />
                    <asp:BoundField DataField="owner" HeaderText="Seller" NullDisplayText="Anonymous" ReadOnly="True" />
                    <asp:BoundField DataField="produced" HeaderText="Produced" NullDisplayText="Unknown" ReadOnly="True" />
                    <asp:BoundField DataField="origin" HeaderText="Country of Origin" NullDisplayText="Unknown" ReadOnly="True" />
                    <asp:BoundField DataField="price" HeaderText="Price" NullDisplayText="Not Disclosed" ReadOnly="True" />
                </Columns>
                <HeaderStyle BackColor="#006666" BorderColor="#006666" BorderStyle="Solid" BorderWidth="10px" ForeColor="Khaki" HorizontalAlign="Center" />
                <RowStyle BackColor="DarkCyan" BorderColor="#006666" BorderStyle="Solid" BorderWidth="10px" HorizontalAlign="Center" />
            </asp:GridView>

        </div>
    </div>

</asp:Content>
