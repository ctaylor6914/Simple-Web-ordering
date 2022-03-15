<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        SET Pizza Shop
    </title>
	<SCRIPT type="text/javascript">
	
	</script>
	<link rel="stylesheet" type="text/css" href="./StyleSheet1.css" />
</head>
<body>
	<%
	dim confirm, cancel, name
	name = Request.Form("name")
	
	if(Request.Form("Confirm")="Confirm") then
	msg = "You have chosen to proceed with the order.  Thank you for your purchase! Thanks for using the SET Pizza Shop. We hope to see you again soon"
	else if (Request.Form("Cancel")="Cancel") then
	msg = "You have chosen to Cancel the order.  Thanks for using the SET Pizza Shop. We hope to see you again soon"
	end if
	end if
	
	%>
    <h1  style="text-decoration: underline; position: relative; text-align:center">
        <b>SET Pizza Shop</b>
    </h1>
    <form id="form1">
        <div>
            <p>Ciao <%=name%>,</p>
			<p><%=msg%></p>
        </div>
    </form>
</body>
</html>