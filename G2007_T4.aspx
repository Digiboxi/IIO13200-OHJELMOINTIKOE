<%@ Page Title="" Language="C#" MasterPageFile="~/JAMK.master" AutoEventWireup="true" CodeFile="G2007_T4.aspx.cs" Inherits="G2007_T4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="lblWarning" runat="server"></asp:Label>

    <div id="content">
        <div id="holder">
            <asp:Label ID="lblSignups" runat="server"></asp:Label>
            <br />
            <asp:Label ID="lblStudents" runat="server"></asp:Label>

            <div id="allStudentsDiv">
                <table border="1">
                    <tr>
                        <td>
                            <asp:GridView ID="allStudents" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="allStudentsSql" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="asioid" HeaderText="asioid" SortExpression="asioid" />
                                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            Tavallinen</td>
                        <td>

                            <asp:GridView ID="allStudentsSortable" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="allStudentsSql" ForeColor="#333333" GridLines="None" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="asioid" HeaderText="asioid" SortExpression="asioid" />
                                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            Sortattava</td>
                    </tr>
                    <tr>
                        <td id="checkBoxes" runat="server">
                            <p>Harmittaa vähän ettei tätä saanut toimimaan. Se olisi ollut hieno!</p>
                            <asp:CheckBoxList ID="checkBoxList" runat="server" DataSourceID="getCourses" DataTextField="course" DataValueField="course" OnSelectedIndexChanged="checkBoxList_SelectedIndexChanged" AutoPostBack="True">

                            </asp:CheckBoxList>
                            <asp:GridView ID="studentsByCourses" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="allStudentsSql" ForeColor="#333333" GridLines="None" AllowPaging="True">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="asioid" HeaderText="asioid" SortExpression="asioid" />
                                    <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                                    <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="getCourses" runat="server" ConnectionString="<%$ ConnectionStrings:Ilmot %>" SelectCommand="SELECT DISTINCT [course] FROM [lasnaolot]"></asp:SqlDataSource>
                            <asp:SqlDataSource ID="getStudentsByCourses" runat="server" ConnectionString="<%$ ConnectionStrings:Ilmot %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname], [course] FROM [lasnaolot] WHERE ([course] = @course)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="checkBoxList" Name="course" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>

                        </td>
                    </tr>
                </table>
                <asp:SqlDataSource ID="allStudentsSql" runat="server" ConnectionString="<%$ ConnectionStrings:Ilmot %>" SelectCommand="SELECT DISTINCT [asioid], [firstname], [lastname] FROM [lasnaolot]"></asp:SqlDataSource>
            </div>
        </div>
    </div>

</asp:Content>

