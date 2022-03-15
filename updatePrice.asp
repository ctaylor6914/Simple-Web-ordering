<%
dim incoming, total
incoming = CDbl(Request.QueryString("price"))

total = 10+incoming
Response.write(total)
%>

