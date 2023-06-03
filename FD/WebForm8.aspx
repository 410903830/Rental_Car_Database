<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="FD.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

    <style>
        body{
            text-align:center;
        }

    </style>

<body>
    <form id="form1" runat="server">
        <div class="header">
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:RentelConnectionString %>" DeleteCommand="DELETE FROM [Vehicles] WHERE [v_no] = @v_no" InsertCommand="INSERT INTO [Vehicles] ([car_model], [car_number], [car_year], [per_hour_price], [is_rented]) VALUES (@car_model, @car_number, @car_year, @per_hour_price, @is_rented)" SelectCommand="SELECT * FROM [Vehicles] ORDER BY [car_model]" UpdateCommand="UPDATE [Vehicles] SET [car_model] = @car_model, [car_number] = @car_number, [car_year] = @car_year, [per_hour_price] = @per_hour_price, [is_rented] = @is_rented WHERE [v_no] = @v_no">
                <DeleteParameters>
                    <asp:Parameter Name="v_no" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="car_model" Type="String" />
                    <asp:Parameter Name="car_number" Type="String" />
                    <asp:Parameter DbType="Date" Name="car_year" />
                    <asp:Parameter Name="per_hour_price" Type="Int32" />
                    <asp:Parameter Name="is_rented" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="car_model" Type="String" />
                    <asp:Parameter Name="car_number" Type="String" />
                    <asp:Parameter DbType="Date" Name="car_year" />
                    <asp:Parameter Name="per_hour_price" Type="Int32" />
                    <asp:Parameter Name="is_rented" Type="String" />
                    <asp:Parameter Name="v_no" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

           <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------->

            <p  style="text-align:center; font-size:30px; font-weight:bolder">客戶資料</p>
        </div>


         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RentelConnectionString %>" SelectCommand="SELECT * FROM [Customer]" DeleteCommand="DELETE FROM [Customer] WHERE [s_no] = @s_no" InsertCommand="INSERT INTO [Customer] ([name], [birthday], [eamil], [address], [phone_number], [diver_license], [credit_card]) VALUES (@name, @birthday, @eamil, @address, @phone_number, @diver_license, @credit_card)" UpdateCommand="UPDATE [Customer] SET [name] = @name, [birthday] = @birthday, [eamil] = @eamil, [address] = @address, [phone_number] = @phone_number, [diver_license] = @diver_license, [credit_card] = @credit_card WHERE [s_no] = @s_no">
            <DeleteParameters>
                <asp:Parameter Name="s_no" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="birthday" />
                <asp:Parameter Name="eamil" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="diver_license" Type="String" />
                <asp:Parameter Name="credit_card" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter DbType="Date" Name="birthday" />
                <asp:Parameter Name="eamil" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="diver_license" Type="String" />
                <asp:Parameter Name="credit_card" Type="String" />
                <asp:Parameter Name="s_no" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
           
        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

        <div style="display:flex; justify-content:center;">
                <asp:DetailsView ID="DetailsView2" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="s_no" DataSourceID="SqlDataSource1" Height="50px" Width="852px">
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="s_no" HeaderText="s_no" InsertVisible="False" ReadOnly="True" SortExpression="s_no" />
                        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                        <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                        <asp:BoundField DataField="eamil" HeaderText="eamil" SortExpression="eamil" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="phone_number" HeaderText="phone_number" SortExpression="phone_number" />
                        <asp:BoundField DataField="diver_license" HeaderText="diver_license" SortExpression="diver_license" />
                        <asp:BoundField DataField="credit_card" HeaderText="credit_card" SortExpression="credit_card" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                </asp:DetailsView>

            </div>

        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
            <p style="font-size:30px; font-weight:bolder; text-align:center;">訂單</p>


         <div style="display:flex; justify-content:center;">
            <asp:DetailsView ID="DetailsView1"  runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="r_no" DataSourceID="SqlDataSource3" Height="16px" style="margin-left: 0px" Width="844px">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"/>
                <Fields>
                    <asp:BoundField DataField="r_no" HeaderText="r_no" InsertVisible="False" ReadOnly="True" SortExpression="r_no" />
                    <asp:BoundField DataField="total_cost" HeaderText="total_cost" SortExpression="total_cost" />
                    <asp:BoundField DataField="rental_start_time" HeaderText="rental_start_time" SortExpression="rental_start_time" />
                    <asp:BoundField DataField="rental_end_time" HeaderText="rental_end_time" SortExpression="rental_end_time" />
                    <asp:BoundField DataField="s_no" HeaderText="s_no" SortExpression="s_no" />
                    <asp:BoundField DataField="v_no" HeaderText="v_no" SortExpression="v_no" />
                    <asp:BoundField DataField="rental_return_location_id" HeaderText="rental_return_location_id" SortExpression="rental_return_location_id" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:DetailsView>
             </div>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:RentelConnectionString %>" DeleteCommand="DELETE FROM [Rental] WHERE [r_no] = @r_no" InsertCommand="INSERT INTO [Rental] ([total_cost], [rental_start_time], [rental_end_time], [s_no], [v_no], [rental_return_location_id]) VALUES (@total_cost, @rental_start_time, @rental_end_time, @s_no, @v_no, @rental_return_location_id)" SelectCommand="SELECT * FROM [Rental]" UpdateCommand="UPDATE [Rental] SET [total_cost] = @total_cost, [rental_start_time] = @rental_start_time, [rental_end_time] = @rental_end_time, [s_no] = @s_no, [v_no] = @v_no, [rental_return_location_id] = @rental_return_location_id WHERE [r_no] = @r_no">
                <DeleteParameters>
                    <asp:Parameter Name="r_no" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="total_cost" Type="Int32" />
                    <asp:Parameter Name="rental_start_time" Type="DateTime" />
                    <asp:Parameter Name="rental_end_time" Type="DateTime" />
                    <asp:Parameter Name="s_no" Type="Int32" />
                    <asp:Parameter Name="v_no" Type="Int32" />
                    <asp:Parameter Name="rental_return_location_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="total_cost" Type="Int32" />
                    <asp:Parameter Name="rental_start_time" Type="DateTime" />
                    <asp:Parameter Name="rental_end_time" Type="DateTime" />
                    <asp:Parameter Name="s_no" Type="Int32" />
                    <asp:Parameter Name="v_no" Type="Int32" />
                    <asp:Parameter Name="rental_return_location_id" Type="Int32" />
                    <asp:Parameter Name="r_no" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        <!--------------------------------------------------------------------------------------------------------------------------------------------------------------------------->




        <p style="font-size:30px; font-weight:bolder; text-align:center;">車輛資訊</p>

         <div style="display:flex; justify-content:center;">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="v_no" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
                <AlternatingItemTemplate>
                    <tr style="background-color: #FAFAD2;color: #284775;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        </td>
                        <td>
                            <asp:Label ID="v_noLabel" runat="server" Text='<%# Eval("v_no") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_modelLabel" runat="server" Text='<%# Eval("car_model") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_numberLabel" runat="server" Text='<%# Eval("car_number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_yearLabel" runat="server" Text='<%# Eval("car_year") %>' />
                        </td>
                        <td>
                            <asp:Label ID="per_hour_priceLabel" runat="server" Text='<%# Eval("per_hour_price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="is_rentedLabel" runat="server" Text='<%# Eval("is_rented") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #FFCC66;color: #000080;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                        </td>
                        <td>
                            <asp:Label ID="v_noLabel1" runat="server" Text='<%# Eval("v_no") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="car_numberTextBox" runat="server" Text='<%# Bind("car_number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="car_yearTextBox" runat="server" Text='<%# Bind("car_year") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="per_hour_priceTextBox" runat="server" Text='<%# Bind("per_hour_price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="is_rentedTextBox" runat="server" Text='<%# Bind("is_rented") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>未傳回資料。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:TextBox ID="car_modelTextBox" runat="server" Text='<%# Bind("car_model") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="car_numberTextBox" runat="server" Text='<%# Bind("car_number") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="car_yearTextBox" runat="server" Text='<%# Bind("car_year") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="per_hour_priceTextBox" runat="server" Text='<%# Bind("per_hour_price") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="is_rentedTextBox" runat="server" Text='<%# Bind("is_rented") %>' />
                        </td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color: #FFFBD6;color: #333333;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        </td>
                        <td>
                            <asp:Label ID="v_noLabel" runat="server" Text='<%# Eval("v_no") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_modelLabel" runat="server" Text='<%# Eval("car_model") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_numberLabel" runat="server" Text='<%# Eval("car_number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_yearLabel" runat="server" Text='<%# Eval("car_year") %>' />
                        </td>
                        <td>
                            <asp:Label ID="per_hour_priceLabel" runat="server" Text='<%# Eval("per_hour_price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="is_rentedLabel" runat="server" Text='<%# Eval("is_rented") %>' />
                        </td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                        <th runat="server"></th>
                                        <th runat="server">v_no</th>
                                        <th runat="server">car_model</th>
                                        <th runat="server">car_number</th>
                                        <th runat="server">car_year</th>
                                        <th runat="server">per_hour_price</th>
                                        <th runat="server">is_rented</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                        </td>
                        <td>
                            <asp:Label ID="v_noLabel" runat="server" Text='<%# Eval("v_no") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_modelLabel" runat="server" Text='<%# Eval("car_model") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_numberLabel" runat="server" Text='<%# Eval("car_number") %>' />
                        </td>
                        <td>
                            <asp:Label ID="car_yearLabel" runat="server" Text='<%# Eval("car_year") %>' />
                        </td>
                        <td>
                            <asp:Label ID="per_hour_priceLabel" runat="server" Text='<%# Eval("per_hour_price") %>' />
                        </td>
                        <td>
                            <asp:Label ID="is_rentedLabel" runat="server" Text='<%# Eval("is_rented") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
             </div>

        <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->





        <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

        <p style="font-size:30px; font-weight:bolder; text-align:center;">租車地點</p>

         <div style="display:flex; justify-content:center;">
        <asp:ListView ID="ListView2" runat="server" DataKeyNames="rental_return_location_id" DataSourceID="SqlDataSource4" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2;color: #284775;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="rental_return_location_idLabel" runat="server" Text='<%# Eval("rental_return_location_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_nameLabel" runat="server" Text='<%# Eval("location_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_addessLabel" runat="server" Text='<%# Eval("location_addess") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66;color: #000080;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="rental_return_location_idLabel1" runat="server" Text='<%# Eval("rental_return_location_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="location_nameTextBox" runat="server" Text='<%# Bind("location_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="phone_numberTextBox" runat="server" Text='<%# Bind("phone_number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="location_addessTextBox" runat="server" Text='<%# Bind("location_addess") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="location_nameTextBox" runat="server" Text='<%# Bind("location_name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="phone_numberTextBox" runat="server" Text='<%# Bind("phone_number") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="location_addessTextBox" runat="server" Text='<%# Bind("location_addess") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6;color: #333333;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="rental_return_location_idLabel" runat="server" Text='<%# Eval("rental_return_location_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_nameLabel" runat="server" Text='<%# Eval("location_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_addessLabel" runat="server" Text='<%# Eval("location_addess") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                    <th runat="server"></th>
                                    <th runat="server">rental_return_location_id</th>
                                    <th runat="server">location_name</th>
                                    <th runat="server">email</th>
                                    <th runat="server">phone_number</th>
                                    <th runat="server">location_addess</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                    </td>
                    <td>
                        <asp:Label ID="rental_return_location_idLabel" runat="server" Text='<%# Eval("rental_return_location_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_nameLabel" runat="server" Text='<%# Eval("location_name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phone_numberLabel" runat="server" Text='<%# Eval("phone_number") %>' />
                    </td>
                    <td>
                        <asp:Label ID="location_addessLabel" runat="server" Text='<%# Eval("location_addess") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
             </div>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:RentelConnectionString %>" DeleteCommand="DELETE FROM [Rental_return_location] WHERE [rental_return_location_id] = @rental_return_location_id" InsertCommand="INSERT INTO [Rental_return_location] ([location_name], [email], [phone_number], [location_addess]) VALUES (@location_name, @email, @phone_number, @location_addess)" SelectCommand="SELECT * FROM [Rental_return_location]" UpdateCommand="UPDATE [Rental_return_location] SET [location_name] = @location_name, [email] = @email, [phone_number] = @phone_number, [location_addess] = @location_addess WHERE [rental_return_location_id] = @rental_return_location_id">
            <DeleteParameters>
                <asp:Parameter Name="rental_return_location_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="location_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="location_addess" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="location_name" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="phone_number" Type="String" />
                <asp:Parameter Name="location_addess" Type="String" />
                <asp:Parameter Name="rental_return_location_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 


        <p style="font-size:30px; font-weight:bolder; text-align:center;">Order</p>
        <div style="display:flex; justify-content:center;">
        <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource5">
            <AlternatingItemTemplate>
                <tr style="background-color: #FAFAD2;color: #284775;">
                    <td>
                        <asp:Label ID="名子Label" runat="server" Text='<%# Eval("名子") %>' />
                    </td>
                    <td>
                        <asp:Label ID="總金額Label" runat="server" Text='<%# Eval("總金額") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車型Label" runat="server" Text='<%# Eval("車型") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車牌Label" runat="server" Text='<%# Eval("車牌") %>' />
                    </td>
                    <td>
                        <asp:Label ID="店家Label" runat="server" Text='<%# Eval("店家") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #FFCC66;color: #000080;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:TextBox ID="名子TextBox" runat="server" Text='<%# Bind("名子") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="總金額TextBox" runat="server" Text='<%# Bind("總金額") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="車型TextBox" runat="server" Text='<%# Bind("車型") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="車牌TextBox" runat="server" Text='<%# Bind("車牌") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="店家TextBox" runat="server" Text='<%# Bind("店家") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未傳回資料。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>
                        <asp:TextBox ID="名子TextBox" runat="server" Text='<%# Bind("名子") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="總金額TextBox" runat="server" Text='<%# Bind("總金額") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="車型TextBox" runat="server" Text='<%# Bind("車型") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="車牌TextBox" runat="server" Text='<%# Bind("車牌") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="店家TextBox" runat="server" Text='<%# Bind("店家") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #FFFBD6;color: #333333;">
                    <td>
                        <asp:Label ID="名子Label" runat="server" Text='<%# Eval("名子") %>' />
                    </td>
                    <td>
                        <asp:Label ID="總金額Label" runat="server" Text='<%# Eval("總金額") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車型Label" runat="server" Text='<%# Eval("車型") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車牌Label" runat="server" Text='<%# Eval("車牌") %>' />
                    </td>
                    <td>
                        <asp:Label ID="店家Label" runat="server" Text='<%# Eval("店家") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #FFFBD6;color: #333333;">
                                    <th runat="server">名子</th>
                                    <th runat="server">總金額</th>
                                    <th runat="server">車型</th>
                                    <th runat="server">車牌</th>
                                    <th runat="server">店家</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #FFCC66;font-weight: bold;color: #000080;">
                    <td>
                        <asp:Label ID="名子Label" runat="server" Text='<%# Eval("名子") %>' />
                    </td>
                    <td>
                        <asp:Label ID="總金額Label" runat="server" Text='<%# Eval("總金額") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車型Label" runat="server" Text='<%# Eval("車型") %>' />
                    </td>
                    <td>
                        <asp:Label ID="車牌Label" runat="server" Text='<%# Eval("車牌") %>' />
                    </td>
                    <td>
                        <asp:Label ID="店家Label" runat="server" Text='<%# Eval("店家") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
            </div>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:RentelConnectionString %>" SelectCommand="SELECT * FROM [Orders] ORDER BY [名子]"></asp:SqlDataSource>
 
    </form>
</body>
</html>
