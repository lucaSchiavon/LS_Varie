﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MicrosoftExMutiPartFormData.aspx.cs" Inherits="TestMutipartFormData.MicrosoftExMutiPartFormData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <%-- <form id="form1" runat="server">
        <div>
        </div>
    </form>--%>

    <form name="form1" method="post" enctype="multipart/form-data" action="api/upload">
    <div>
        <label for="caption">Image Caption</label>
        <input name="caption" type="text" />
    </div>
    <div>
        <label for="image1">Image File</label>
        <input name="image1" type="file" />
    </div>
    <div>
        <input type="submit" value="Submit" />
    </div>
</form>
</body>
</html>
