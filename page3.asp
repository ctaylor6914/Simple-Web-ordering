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
	dim price, pepperoni, mush, olives, peppers, cheese
	dim pep, m, o, pepp, che
	name = Request.Form("name")
	
	fName = Left(name, (InStr(name," ")-1))
	
	if(Request.Form("pepperoni")="1.5") then
	pepperoni = "Pepperoni"
	pep= 1.5
	else 
	pep = 0
	end if
    
	if(Request.Form("mushrooms")="1") then
	mush = "Mushrooms"
	m=1
	else 
	m = 0
	end if
	
	if(Request.Form("olives")="1") then
	olives = "Green Olives"
	o=1
	else 
	o = 0
	end if
	
	if(Request.Form("peppers")="1") then
	peppers="Green Peppers"
	pepp=1
	else 
	pepp = 0
	end if
	
	if(Request.Form("cheese")="2.25") then
	cheese = "Double Cheese"
	che = 2.25
	else 
	che = 0
	end if
	
	price = 10+pep+m+o+pepp+che
	
	%>
    <h1  style="text-decoration: underline; position: relative; text-align:center">
        <b>SET Pizza Shop</b>
    </h1>
    <form id="form1" action="page4.asp" onsubmit="" method="POST">
        <div>
			<p>Ciao <%= fName%>,</p>
            <p>You've Ordered a Pizza with the following:</p>
			<p><%=pepperoni%></p>
			<p><%=mush%></p>
			<p><%=olives%></p>
			<p><%=peppers%></p>
			<p><%=cheese%></p>
			<p>For a total of <b>$<%=price%></b></p> 
			<p>Please review you order and choose an option below</p>
			</br>
			<input name="confirm" ID="Enter" type="submit" Value="Confirm"/>
			<input name="cancel" ID="Enter" type="submit" Value="Cancel"/>
			<input type="hidden" name="name" value="<%=name%>"/>
        </div>
		
    </form>
</body>
</html>