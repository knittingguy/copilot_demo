<cfscript>
    local.sql = "
        SELECT first_name, last_name, email, phone, address1, city, state, zip, country
        FROM customer
    "
    local.qry = queryExecute(local.sql, {}, {datasource="copilot_demo"});
    writeDump(local.qry);

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
        </style>
    </head>
    <body>
        <h1>Create Customer</h1>
        <form method="post" action="create_customer2.cfm">
            <label for="first_name">First Name:</label>
            <input type="text" id="first_name" name="first_name" required><br>

            <label for="last_name">Last Name:</label>
            <input type="text" id="last_name" name="last_name" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="phone">Phone:</label>
            <input type="tel" id="phone" name="phone" required><br>

            <label for="address">Address:</label>
            <textarea id="address" name="address" required></textarea><br>

            <input type="submit" value="Create Customer">
        </form>
    </body>
</html>