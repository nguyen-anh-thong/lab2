<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangkithanhvien.aspx.cs" Inherits="lab2.dangkithanhvien" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/main.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center"> HỒ SƠ ĐĂNG KÝ </h2>
            <div class="row border border-primary bg-nenl display ">
                <div class="col-md-8 p-2 text-center ">
                    Thong ti dang ky
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                    Ho so dang nhap
                </div>
               
            </div>                
            <div class=" row border border-primary">
                <div class="col-md-8">
                    <div class="row mt-2 mb-2">
                     
                            <div class="col-md-3">
                                Ten dang nhap:
                            </div>
                            <div class="col-md-9">
                            <asp:TextBox ID="txtTenDN" CssClass="form-control" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rfvTenDN" runat="server" ControlToValidate="txtTenDN" Text="(*)" ErrorMessage=" Tên đăng nhập không được để trống"  Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="revTenDN" runat="server" ControlToValidate="txtTenDN" Text="(*)" ErrorMessage=" Tên đăng nhập không hợp lệ" Display="Dynamic" ValidationExpression="^[a-zA-Z0-9&_!]{8,16}$"></asp:RegularExpressionValidator>
                            </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                                Mat khau:
                            </div>
                   
                    <div class="col-md-9">
                        <asp:TextBox ID="txtMatkhau" CssClass="form-control" runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtMatkhau" Text="(*)"  ErrorMessage="* Mật khẩu không được để trống"  Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                         </div>
                    <div class="row mb-2">
                       <div class="col-md-3">
                                Nhap lai mat khau:
                            </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtNhaplai" CssClass="form-control" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="rfvNhaplai" runat="server" ControlToValidate="txtNhaplai" Text="(*)" ErrorMessage="* Nhập lại mật khẩu không được để trống"  Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cvNhaplai" runat="server" ControlToValidate="txtNhaplai" ControlToCompare="txtMatkhau" Text="(*)" ErrorMessage="* Nhập lại mật khẩu phải giống với mật khẩu" Display="Dynamic" Operator="Equal"></asp:CompareValidator>
                        </div>
                    </div>
                    <div class="col-md-12 p-2 pt-lg-2  text-center border-left border-primary  bg-nenl">
                    Thong ti dang ky
                </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ho ten khach hang:
                        </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtKhach" CssClass="form-control" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="rfvHoTen" runat="server" ControlToValidate="txtKhach" Text="(*)"  Display="Dynamic" ErrorMessage="* Họ tên khách hàng không được để trống"></asp:RequiredFieldValidator>
                   
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                               Ngay sinh:
                            </div>
                   
                    <div class="col-md-9">
                        <div class="form-inline">
                            <asp:DropDownList ID="ddlngay" runat="server"></asp:DropDownList>/
                            <asp:DropDownList ID="ddlthang" runat="server"></asp:DropDownList>/
                            <asp:DropDownList ID="ddlnam" runat="server"></asp:DropDownList>
                           

                        </div>

                    </div>
                        </div>
                        <div class="row mb-2">
                        <div class="col-md-3">
                            Email:
                        </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtemail" CssClass="form-control"  Display="Dynamic" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEmail" runat="server"  Display="Dynamic" ControlToValidate="txtemail" Text="(*)" ErrorMessage="* Email không được để trống"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revEmail" runat="server"  Display="Dynamic" ControlToValidate="txtemail" Text="(*)" ErrorMessage="* Email không hợp lệ" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                        <div class="row mb-2">
                        <div class="col-md-3">
                           Thu nhap:
                        </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtthunhap" CssClass="form-control" runat="server"></asp:TextBox>
                              <asp:RangeValidator ID="rvThuNhap" runat="server" ControlToValidate="txtthunhap"  Display="Dynamic" Text="(*)" ErrorMessage="* Thu nhập phải nằm trong khoảng từ 1 triệu đến 50 triệu" Type="Integer" MinimumValue="1000000" MaximumValue="50000000"></asp:RangeValidator>
                        </div>
                    </div>
                        <div class="row mb-2">
                        <div class="col-md-3">
                            Gioi tinh:
                        </div>

                        <div class="col-md-9">
                            <asp:CheckBox ID="chkphai" Text="Nam" Checked="true" runat="server" />
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                           Dia chi:
                        </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtdiachi" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" Text="(*)"  Display="Dynamic" ControlToValidate="txtdiachi" ErrorMessage="* Địa chỉ không được để trống"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                           Dien thoai:
                        </div>

                        <div class="col-md-9">
                            <asp:TextBox ID="txtdienthoai" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvDienThoai" runat="server" Text="(*)"  Display="Dynamic" ControlToValidate="txtdienthoai" ErrorMessage="* Điện thoại không được để trống"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="revDienThoai" runat="server" Text="(*)"  Display="Dynamic" ControlToValidate="txtdienthoai" ErrorMessage="* Điện thoại phải là số nguyên" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="row mb-2">
                        <div class="col-md-12 text-center">
                            <asp:Button ID="Button1" runat="server" Text="Button"   />
                        </div>
                    </div>




                </div>
           
                <div>
                <asp:ValidationSummary  ID="vsloi" ForeColor="Red" runat="server"  />
            </div>
            <div class="col-md-4">
                    <asp:Label ID="Lblkq" runat="server" Text=""></asp:Label>
                </div>
            </div>
       
        </div>
    </form>
</body>
</html>

