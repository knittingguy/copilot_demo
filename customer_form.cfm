<cfscript>
  local.sql = "
    SELECT first_name, last_name, email, phone, address1, city, state, zip, country
    FROM customer
  ";

  // RUN THE QUERY
  local.qry = queryExecute(local.sql, {}, {datasource: "copilot_demo"});

</cfscript>

<html>
    <head>
        <title>Customer Management</title>
    </head>
    <body>
 

        <div class="container">
            <h1>Customer Management</h1>

            <!-- CREATE FORM -->
            <form id="customer_form" method="post" action="customer_form.cfm" >
                <div class="form_group">
                    <label for="first_name">First Name:</label>
                    <input type="text" id="first_name" name="first_name">
                    
                </div>
                <div class="form_group">
                    <label for="last_name">Last Name:</label>
                    <input type="text" id="last_name" name="last_name">
                    
                </div>
                <div class="form_group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                    
                </div>
                <div class="form_group">
                    <label for="phone">Phone:</label>
                    <input type="tel" id="phone" name="phone">
                 
                </div>
                <div class="form_group">
                    <label for="address1">Address 1:</label>
                    <input type="text" id="address1" name="address1">
                </div>
                <div class="form_group">
                    <label for="city">City:</label>
                    <input type="text" id="city" name="city">
                </div>
                <div class="form_group">
                    <label for="state">State:</label>
                    <input type="text" id="state" name="state">
                </div>
                <div class="form_group">
                    <label for="zip">Zip:</label>
                    <input type="text" id="zip" name="zip">
                </div>
                <div class="form_group">
                    <label for="country">Country:</label>
                    <input type="text" id="country" name="country">
                </div>
                <input type="submit" name="submit" value="Create Customer">
            </form>
        </div>
    </body>
</html>