<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U4_W3_D3.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ordini pizza</title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
    <div class="container mt-5 border rounded p-4">
        <h1 class="orders">Ordina la tua pizza</h1>
        <br /><br />
        <div class="form-group">
            <label for="ddlPizza" class="orders">Seleziona una pizza:</label>
            <asp:DropDownList ID="ddlPizza" runat="server" CssClass="form-control orders">
                <asp:ListItem Text="Margherita - 10€" Value="10" />
                <asp:ListItem Text="Napoli - 12€" Value="12" />
                <asp:ListItem Text="Diavola - 15€" Value="15" />
                <asp:ListItem Text="Quattro Stagioni - 13€" Value="13" />
                <asp:ListItem Text="Boscaiola - 14€" Value="14" />
                <asp:ListItem Text="Capricciosa - 13.50€" Value="13.50" />
            </asp:DropDownList>
        </div>
        <br />
        <div class="form-group">
            <label class="orders">Aggiungi degli extra:</label>
            <div class="row">
                <div class="col-md-3">
                    <asp:CheckBox ID="cbMozzarella" runat="server" Text="Mozzarella - 1.50€" CssClass="form-check-input orders" Value="1.50" />
                </div>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbSalamePiccante" runat="server" Text="Salame piccante - 2€" CssClass="form-check-input orders" Value="2" />
                </div>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbBufala" runat="server" Text="Bufala - 2.50€" CssClass="form-check-input orders" Value="2.50" />
                </div>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbFunghi" runat="server" Text="Funghi - 1.50€" CssClass="form-check-input orders" Value="1.50" />
                </div>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbTonno" runat="server" Text="Tonno - 2€" CssClass="form-check-input orders" Value="2" />
                </div>
                <div class="col-md-3">
                    <asp:CheckBox ID="cbPatatine" runat="server" Text="Patatine - 1.50€" CssClass="form-check-input orders" Value="1.50" />
                </div>
            </div>
        </div>
        <br />
        <div class="form-group">
            <asp:Button ID="BtnAggiungiPiatto" runat="server" Text="Aggiungi Piatto" OnClick="BtnAggiungiPiatto_Click" CssClass="btn btn-primary" />
        </div>
        <br />
        <div class="form-group">
            <asp:Button ID="BtnConcludiOrdine" runat="server" Text="Concludi Ordine" OnClick="BtnConcludiOrdine_Click" CssClass="btn btn-success" />
        </div>

        <asp:Label ID="lblOrdini" runat="server" EnableViewState="False" CssClass="orders"></asp:Label>
    </div>
</form>
</body>
</html>
