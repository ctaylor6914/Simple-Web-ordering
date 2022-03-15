<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        SET Pizza Shop
    </title>
	<SCRIPT type="text/javascript">
	var xmlhttp = new XMLHttpRequest();
	var money;
	function updatePrice()
	{
		var check1=0;
		var check2=0;
		var check3=0;
		var check4=0;
		var check5=0;
		
		if(document.getElementById("check1").checked == true)
		{
			check1=Number(document.getElementById("check1").value);
		}
		if(document.getElementById("check2").checked == true)
		{
			var check2=Number(document.getElementById("check2").value);
		}
		if(document.getElementById("check3").checked == true)
		{
			var check3=Number(document.getElementById("check3").value);
		}
		if(document.getElementById("check4").checked == true)
		{
			var check4=Number(document.getElementById("check4").value);
		}
		if(document.getElementById("check5").checked == true)
		{
			var check5=Number(document.getElementById("check5").value);
		}
		
		var total = check1+check2+check3+check4+check5;
		xmlhttp.onreadystatechange=getResponse;

        // ASYNCHRONOUS BACKGROUND PROCESSING RESOURCE
        //xmlhttp.open("GET","./savePage.asp?file="+fileName+"&"+"text="+text,true);
		xmlhttp.open("GET","./updatePrice.asp?price="+total,true);

        // SEND THE ACTUAL AJAX REQUEST
        xmlhttp.send(null);
	}
	// ------------------------------------------------------------
    //          Function	: getResponse()
	//			Arguments	: void
	//			Description	: This function is called on the readystatechange
	//						: of the saveText xmlhttp object to tell the user
	//						: if the file has been saved
	//			
    // ------------------------------------------------------------
	function getResponse()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
        {
          //document.getElementById("Textarea").innerHTML=xmlhttp.responseText;
		  document.getElementById("price").innerHTML = xmlhttp.responseText;
        }
	}
	
	</script>
	<link rel="stylesheet" type="text/css" href="./StyleSheet1.css" />
</head>
<body>
	<%
	name = Request.Form("UserName")
	
	fName = Left(name, (InStr(name," ")-1))
	%>
    <h1  style="text-decoration: underline; position: relative; text-align:center">
        <b>SET Pizza Shop</b>
    </h1>
    <form id="form1" action="page3.asp" onsubmit="" method="POST">
        <div>
            <p>Ciao <%= fName%>,</p>
			<p>Here at the SET Pizza Shop you can only order <b>ONE</b> Large pizza.</p>
			</br>
			<p>Your Pizza comes with cheese and sauce.  Please select any additional Toppings</p>
			</br>
			<p>Total Pizza Price: $ <span id="price">10</span> </p>
        </div>
		
		
        <input name="pepperoni" ID="check1" type="Checkbox" OnClick="updatePrice()" Value="1.5" >Pepperoni  + $1.50</input>
		</br>
		<input name="mushrooms" ID="check2" type="Checkbox" OnClick="updatePrice()" Value="1">Mushrooms  + $1.00</input>
		</br>
		<input name="olives" ID="check3" type="Checkbox" OnClick="updatePrice()"  Value="1">Green Olives  + $1.00</input>
		</br>
		<input name="peppers" ID="check4" type="Checkbox" OnClick="updatePrice()"  Value="1">Green Peppers  + $1.00</input>
		</br>
		<input name="cheese" ID="check5" type="Checkbox" OnClick="updatePrice()"  Value="2.25">Double Cheese  + $2.25</input>
		</br>
		</br>
		<input ID="Enter" type="submit" Value="Make It!!"/>
		<input type="hidden" name="name" value="<%=name%>" />
		
    </form>
</body>
</html>