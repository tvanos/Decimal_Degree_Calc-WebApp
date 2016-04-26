<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="WebApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <table id="t3" border="0" style="width:100%" aria-autocomplete="none" title="Degree Calculator">Decimal Calculator
        <tr>
    <td align="right" style="width: 226px; height: 72px;">
    <asp:Button ID="DegreetoDegreeMinute" runat="server" Text="Convert Decimal Degree to Degree Minutes -&gt;" BorderStyle="Outset" />
        </td>
    <td style="width: 247px; height: 72px;">
    <asp:Button ID="DegreeMinutetoDegree" runat="server" Text="Convert Degree Minutes to Decimal Degree" BorderStyle="Outset" />
      </td>
  </tr>

</table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <table id="t01" border="3" style="width:100%; height: 175px;" aria-autocomplete="none" title="Degree Calculator">
            <caption>
                Decimal Degree Calculator
                <tr>
                    <td style="width: 117px; height: 72px;">Latitude</td>
                    <td style="width: 250px; height: 72px;">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ValueBox1" ErrorMessage="Please enter a value between -180 and 180" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="180" Type="Double" MinimumValue="-180">Please enter a value between -180 and 180</asp:RangeValidator>
                        <br />
                        <asp:TextBox ID="ValueBox1" runat="server"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="°"></asp:Label>
                    </td>
                    <td style="width: 250px; height: 72px;">
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="ValueBox2" ErrorMessage="RangeValidator" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="90" MinimumValue="-90" Type="Double">Please enter a value between -90 and 90</asp:RangeValidator>
                        <br />
                        <asp:TextBox ID="ValueBox2" runat="server"></asp:TextBox>
                        <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="'"></asp:Label>
                    </td>
                    <td style="width: 250px; height: 72px">
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="ValueBox3" ErrorMessage="RangeValidator" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="60" MinimumValue="0" Type="Double">Please enter a value between 0 and 60</asp:RangeValidator>
                        <br />
                        <asp:TextBox ID="ValueBox3" runat="server"></asp:TextBox>
                        <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="&quot;"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="width: 117px; height: 64px;">Longitude</td>
                    <td style="width: 250px; height: 64px;">
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="ValueBox4" ErrorMessage="Please enter a value between -180 and 180" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="180" Type="Double" MinimumValue="-180">Please enter a value between -180 and 180</asp:RangeValidator>
                        <asp:TextBox ID="ValueBox4" runat="server"></asp:TextBox>
                        <asp:Label ID="Label7" runat="server" Font-Size="X-Large" Text="°"></asp:Label>
                    </td>
                    <td style="width: 250px; height: 64px;">
                        <asp:RangeValidator ID="RangeValidator14" runat="server" ControlToValidate="ValueBox5" ErrorMessage="RangeValidator" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="90" MinimumValue="-90" Type="Double">Please enter a value between -90 and 90</asp:RangeValidator>
                        <asp:TextBox ID="ValueBox5" runat="server"></asp:TextBox>
                        <asp:Label ID="Label16" runat="server" Font-Size="X-Large" Text="'"></asp:Label>
                    </td>
                    <td style="width: 250px; height: 64px">
                        <asp:RangeValidator ID="RangeValidator15" runat="server" ControlToValidate="ValueBox6" ErrorMessage="RangeValidator" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="60" MinimumValue="0" Type="Double">Please enter a value between 0 and 60</asp:RangeValidator>
                        <br />
                        <asp:TextBox ID="ValueBox6" runat="server"></asp:TextBox>
                        <asp:Label ID="Label17" runat="server" Font-Size="X-Large" Text="&quot;"></asp:Label>
                    </td>
                    <tr>
                        <td style="width: 117px; height: 64px;">&nbsp;</td>
                        <td style="width: 250px; height: 64px;">&nbsp;<br />
                            <asp:Button ID="CalculateButton" runat="server" Text="Calculate! " />
                        </td>
                        <td style="width: 111px; height: 64px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ClearButton" runat="server" Text="Clear" CausesValidation="False" Width="103px" />
                        </td>
                    </tr>
                </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table id="t2" border="0" style="width:100%" aria-autocomplete="none" title="Degree Calculator">
            <caption>
                Degree Minutes Calculator<tr>
                    <td style="width: 108px; height: 72px;">Latitude</td>
                    <td style="width: 250px; height: 72px;">
                        <asp:RangeValidator ID="RangeValidator8" runat="server" ControlToValidate="ValueBox1" ErrorMessage="Please enter a value between -180 and 180" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="180" Type="Double" MinimumValue="-180">Please enter a value between -180 and 180</asp:RangeValidator>
                        <br />
                        <asp:TextBox ID="ValueBox7" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 250px; height: 72px;">&nbsp;</td>
                    <td style="width: 250px; height: 72px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 108px; height: 64px;">Longitude</td>
                    <td style="width: 250px; height: 64px;">
                        <asp:RangeValidator ID="RangeValidator11" runat="server" ControlToValidate="ValueBox4" ErrorMessage="Please enter a value between -180 and 180" Font-Bold="True" Font-Size="X-Small" ForeColor="#CC0000" MaximumValue="180" Type="Double" MinimumValue="-180">Please enter a value between -180 and 180</asp:RangeValidator>
                        <asp:TextBox ID="ValueBox10" runat="server"></asp:TextBox>
                    </td>
                    <td style="width: 250px; height: 64px;">&nbsp;</td>
                    <td style="width: 250px; height: 64px">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 108px; height: 64px;">&nbsp;</td>
                    <td style="width: 250px; height: 64px;">
                        <asp:Button ID="CalculateButtonDegreeMinutetoDecimal" runat="server" Text="Calculate! " />
                    </td>
                    <td style="width: 250px; height: 64px;">
                        <asp:Button ID="ClearButton0" runat="server" CausesValidation="False" Text="Clear" Width="103px" />
                    </td>
                    <td style="width: 250px; height: 64px">&nbsp;</td>
                </tr>
        </table>
    </asp:Panel>
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    
    <asp:Label ID="Label9" runat="server" Text="Latitude:  "></asp:Label>
    <asp:Label ID="ResultLabel0" runat="server" Text="ResultLabel" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
    <asp:Label ID="DegreeMinuteResultLat" runat="server" Text="ResultLabel" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
    <br />
    <asp:Label ID="Label8" runat="server" Text="Longitude:  "></asp:Label>
    <asp:Label ID="ResultLabel" runat="server" Text="ResultLabel" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
    <asp:Label ID="DegreeMinuteResultLong" runat="server" Text="ResultLabel" Font-Bold="True" Font-Size="X-Large" Visible="False"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
