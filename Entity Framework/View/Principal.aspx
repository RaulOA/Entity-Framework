<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="Entity_Framework.View.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Entity Framework Use</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js" integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form2" runat="server">
        <div>

            <asp:Repeater ID="Card_Libro" runat="server">
                <HeaderTemplate>
                    <div class="card-group">
                </HeaderTemplate>
                <ItemTemplate>

                    <!-- Products Card -->

                    <div class="card">
                        <img src="<%# Eval("Photo")%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%# Eval("Name")%></h5>
                            <p class="card-text"><%# Eval("Description")%></p>
                            <p class="card-text"><small class="text-body-secondary">$<%# Eval("Price")%></small></p>
                        </div>
                    </div>

                    <!-- Products Card End-->

                </ItemTemplate>
                <FooterTemplate>
                    </div>
                </FooterTemplate>
            </asp:Repeater>

        </div>
    </form>
</body>
</html>
