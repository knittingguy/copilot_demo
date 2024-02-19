<cfscript>
    local.qry = queryExecute("
        SELECT first_name, last_name, email, phone, address1, city, state, zip, country
        FROM customer
    ", {}, {datasource: "copilot_demo"});

    writedump(local.qry);
</cfscript>

<!DOCTYPE html>
<html>
<head>
    <title>Customer Form</title>
</head>
<body>
    <h1>Customer Form</h1>
    <form action="create_customer1.cfm" method="post">
        <label for="fname">First Name:</label><br>
        <input type="text" id="fname" name="fname"><br>
        <label for="lname">Last Name:</label><br>
        <input type="text" id="lname" name="lname"><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email"><br>
        <label for="phone">Phone:</label><br>
        <input type="tel" id="phone" name="phone"><br>
        <label for="address1">Address1:</label><br>
        <input type="text" id="address1" name="address1"><br>
        <label for="city">City:</label><br>
        <input type="text" id="city" name="city"><br>
        <label for="state">State:</label><br>
        <input type="text" id="state" name="state"><br>
        <label for="zip">Zip:</label><br>
        <input type="text" id="zip" name="zip"><br>
        <label for="country">Country:</label><br>
        <input type="text" id="country" name="country"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>