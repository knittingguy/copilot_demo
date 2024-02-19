<cfscript>
  local.sql = "
    SELECT first_name, last_name, email, phone, address1, city, state, zip, country
    FROM customer
  ";

  // RUN THE QUERY
  local.qry = queryExecute(local.sql, {}, {datasource: "copilot_demo"});

  // DISPLAY THE RESULTS
  writedump(local.qry);
</cfscript>

<html>
    <head>
        <title>Create Customer</title>
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
            }
            label {
                display: inline-block;
                width: 100px;
            }
            input {
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <h1>Create Customer</h1>
        <form method="post" action="create_customer.cfm" target="new_popup" onSubmit="window.open('about:blank','new_popup','width=500,height=400')">
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required><br>
            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required><br>
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required><br>
            <label for="address1">Address 1:</label>
            <input type="text" id="address1" name="address1" required><br>
            <label for="city">City:</label>
            <input type="text" id="city" name="city" required><br>
            <label for="state">State:</label>
            <input type="text" id="state" name="state" required><br>
            <label for="zip">Zip:</label>
            <input type="text" id="zip" name="zip" required><br>
            <label for="country">Country:</label>
            <input type="text" id="country" name="country" required><br>
            <input type="submit" value="Create">
        </form>
    </body>
</html>