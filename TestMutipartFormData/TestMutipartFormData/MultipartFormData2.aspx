<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MultipartFormData2.aspx.cs" Inherits="TestMutipartFormData.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="post" enctype="multipart/form-data" action="http://2.235.241.7:8080/bank-report-entries/Checking1/upload">
<%--         <div>
        <label for="caption">Image Caption</label>
        <input name="caption" type="text" />
    </div>--%>
    <div>
        <label for="image1">Image File</label>
        <input name="image1" type="file" />
    </div>
    <div>
        <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" />
        <input type="submit" value="Submit" />
    </div>
    </form>
</body>
</html>
