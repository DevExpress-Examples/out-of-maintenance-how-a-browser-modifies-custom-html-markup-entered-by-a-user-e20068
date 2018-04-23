<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validate custom HTML markup in a browser</title>
    <script language="javascript" type="text/javascript">
        function OnClick() {            
            var myMarkup = document.getElementById("myTextarea").value;
            var testDiv = document.getElementById("myTestDiv");
            testDiv.innerHTML = myMarkup;
            myMarkup = testDiv.innerHTML;
            alert(myMarkup);
        }    
    </script>
</head>
<body>
    <form id="form1" runat="server">
        Input custom HTML markup here:
        <textarea id="myTextarea" rows="20" cols="300"></textarea>
        <input type="button" value="Validate HTML" onclick="OnClick()"/>
        <div id="myTestDiv"></div>
    </form>
</body>
</html>