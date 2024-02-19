<cfscript>
  local.qry = "SELECT first_name, last_name, email, phone, address1, city, state, zip, country  
  FROM customer";

  local.qryResults = queryExecute(local.qry, {}, {datasource="copilot_demo"});
</cfscript>
<cfdump var="#local.qryResults#">
<!DOCTYPE html>
<html>
<body>

<h2>Customer Form</h2>

<form action="create_customer3.cfm" method="post">
    <label for="fname">First Name:</label><br>
    <input type="text" id="fname" name="fname"><br>
    <label for="lname">Last Name:</label><br>
    <input type="text" id="lname" name="lname"><br>
    <label for="email">Email:</label><br>
    <input type="email" id="email" name="email"><br>
    <label for="phone">Phone:</label><br>
    <input type="tel" id="phone" name="phone"><br>
    <label for="address1">address1:</label><br>
    <input type="text" id="address1" name="address1"><br>
    <label for="city">city:</label><br>
    <input type="text" id="city" name="city"><br>
    <input type="submit" value="Submit">
</form> 

</body>
</html>