<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Multipartformdata.aspx.cs" Inherits="TestMutipartFormData.Multipartformdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" method="POST" action="http://localhost/" enctype="multipart/form-data">
        <div>
             File : <input type="file" name="content" size="38" /><br />
  <input type="hidden" name="id" value='fileUpload' />
        </div>
    </form>
</body>
</html>
