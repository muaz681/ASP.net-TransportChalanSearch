<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChalanSearch.aspx.cs" Inherits="UI.Transport.ChalanSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-3">
                            <div class="card-header">
                                Chalan Search
                                <asp:Label ID="Labe4" class="d-block" runat="server" Text="" BorderColor="#CCCCCC" ForeColor="White" Style="background-color: #9D4D26; text-align: center"></asp:Label>
                            </div>
                            <div class="card-body p-3">
                                <div class="input-group">
                                  <div class="form-outline">
                                    <asp:TextBox class="form-control" type="search" ID="SearchText" runat="server"></asp:TextBox>
                                    <label class="form-label" for="form1">Search</label>
                                  </div>
                                    <asp:LinkButton ID="ChalanSearchButton" runat="server" class="btn btn-primary" OnClick="chalan_Submit">
                                        <i class="fas fa-search"></i>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card mt-1">
                            <div class="card-header">
                                Chalan List
                            </div>
                            <div class="card-body p-3">
                                <asp:GridView ID="dgvlist" runat="server" AutoGenerateColumns="False" Font-Size="12px" ShowFooter="True" CellPadding="3" FooterStyle-Font-Bold="true" FooterStyle-HorizontalAlign="Right" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style5" Width="100%">
                                    <Columns>

                                        <asp:TemplateField HeaderText="Name" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="txtName" Font-Size="Medium" runat="server" Text='<%# Bind("intAutoID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Enroll" SortExpression="intId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblintId" Font-Size="Medium" runat="server" Text='<%# Bind("strChallanNo") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType" Font-Size="Medium" runat="server" Text='<%# Bind("intCustID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Action" SortExpression="srId">
                                            <ItemTemplate>
                                                <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                                                    <asp:Button class="btn btn-sm btn-warning" ID="btnDlt" runat="server" OnClick="dltBtnClick" Text="Delete" CommandArgument='<%# Eval("intAutoID") %>' />
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" />
                                        </asp:TemplateField>
                                    </Columns>

                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                Deleted Item
                            </div>
                            <div class="card-body">
                                <asp:GridView ID="deleteStore" runat="server" AutoGenerateColumns="False" Font-Size="12px" ShowFooter="True" CellPadding="3" FooterStyle-Font-Bold="true" FooterStyle-HorizontalAlign="Right" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" CssClass="auto-style5" Width="100%">
                                    <Columns>

                                        <asp:TemplateField HeaderText="Name" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="txtName" Font-Size="Medium" runat="server" Text='<%# Bind("intAutoID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Enroll" SortExpression="intId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblintId" Font-Size="Medium" runat="server" Text='<%# Bind("strChallanNo") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Type" SortExpression="srId">
                                            <ItemTemplate>
                                                <asp:Label ID="lblType" Font-Size="Medium" runat="server" Text='<%# Bind("intCustID") %>'></asp:Label>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" Width="33%" />
                                        </asp:TemplateField>

                                        <asp:TemplateField HeaderText="Action" SortExpression="srId">
                                            <ItemTemplate>
                                                <div class="btn-group btn-group-sm" role="group" aria-label="Basic mixed styles example">
                                                    <asp:Button class="btn btn-sm btn-info" ID="btnDlt" runat="server" OnClick="rstrBtnClick" Text="Restore" CommandArgument='<%# Eval("intAutoID") %>' />
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle HorizontalAlign="left" />
                                        </asp:TemplateField>
                                    </Columns>

                                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- MDB -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.js"></script>
</body>
</html>
