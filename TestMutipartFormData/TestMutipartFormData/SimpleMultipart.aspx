<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SimpleMultipart.aspx.cs" Inherits="TestMutipartFormData.SimpleMultipart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
   <form id="Form1" runat="server" name="form1" method="post" enctype="multipart/form-data" action="http://2.235.241.7:8080/bank-report-entries/2/upload">
        <div>
           
            <input name="bankId" type="text" />
        </div>
        <div>
           
            <input name="file" type="file" />
        </div>
        <div>
            <input type="submit" value="Submit" />
        </div>
    </form>
</body>
</html>
