<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src='https://www.google.com/recaptcha/api.js'></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        from:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="217px"></asp:TextBox>
        <br />
        to:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="216px"></asp:TextBox>
        <br />
        subject:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox3" runat="server" Width="216px"></asp:TextBox>
        <br />
        body:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox4" runat="server" Height="220px" TextMode="MultiLine" Width="308px"></asp:TextBox>
        </br>
        how many emails?:
        <asp:TextBox ID="TextBox5" runat="server" Width="318px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="I AM AWARE THAT I AM LEGALLY RESPONSIBLE TO ANY OF THE CONSEQUENCES WHETHER DIRECT AND/OR INDIRECT OF ME USING THIS SOFTWARE" />
        <br />
        <div class="g-recaptcha" data-sitekey="6LehuP8SAAAAAD2K8ODX1ogsajg9lLbZEReeB2tZ"></div>
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="127px" ImageUrl="~/BTN.png" OnClick="ImageButton1_Click" Width="473px" />
    
    </div>
    </form>
</body>
</html>
