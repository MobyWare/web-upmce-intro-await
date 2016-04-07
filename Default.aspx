<%@ Page Language="C#" %>
<%@Import Namespace="System.Net" %>
<%@Import Namespace="System.Net.Http" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title>Test Async Page</title>    
</head>
<body>
    <form id="form1" runat="server"> 
          <asp:DropDownList ID="NamesDropdownList" runat="server" OnSelectedIndexChanged="NamesDropdownList_SelectedIndexChanged" >
              <asp:ListItem Text="<select name>" Value="0" Enabled="false" Selected="True" />
              <asp:ListItem Text="Mohinder Dick" Value="1" />
              <asp:ListItem Text="Abel Dick" Value="2" />
              <asp:ListItem Text="Adam Dick" Value="3" />
          </asp:DropDownList>

        <div>
            <asp:Label runat="server" ID="SelectedNameLabel" Text="List of Names Selected" /> <asp:TextBox runat="server" ID="SelectedNamesTextArea" TextMode="MultiLine" ReadOnly="true" />
            <asp:Label runat="server" ID="ContentLabel" Tex="Content" /><asp:TextBox runat="server" ID="ContentTextArea" ReadOnly="true" TextMode="MultiLine" />
        </div>

        <asp:Button runat="server" ID="GetContentButton" Text="Get Content Blocking" OnClick="GetContentButton_Click" />
        <asp:Button runat="server" ID="GetContentAsyncButton" Text="Get Content non-Blocking" />
        <asp:Button runat="server" ID="ClearContentButton" Text="Clear Content" OnClick="Clear" />

    </form>
    <script runat="server" >
        
        void Clear(Object sender, EventArgs e)
        {
            SelectedNamesTextArea.Text = string.Empty;
            ContentTextArea.Text = string.Empty;
        }


        protected void NamesDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            SelectedNamesTextArea.Text += NamesDropdownList.SelectedValue.ToString();
        }

        protected void GetContentButton_Click(object sender, EventArgs e)
        {
            
        }
</script>
</body>
</html>
