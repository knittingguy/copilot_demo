<cfscript>
    // Define query
 local.sql = "
        INSERT INTO customer (first_name, last_name, email, phone, address1, city, state, zip, country)
        VALUES (:first_name, :last_name, :email, :phone, :address1, :city, :state, :zip, :country)
    ";


 // Set query parameters
 local.params = {
        first_name: { value: form.first_name, cfsqltype: "cf_sql_varchar" },
        last_name: { value: form.last_name, cfsqltype: "cf_sql_varchar" },
        email: { value: form.email, cfsqltype: "cf_sql_varchar" },
        phone: { value: form.phone, cfsqltype: "cf_sql_varchar" },
        address1: { value: form.address1, cfsqltype: "cf_sql_varchar" },
        city: { value: form.city, cfsqltype: "cf_sql_varchar" },
        state: { value: form.state, cfsqltype: "cf_sql_varchar" },
        zip: { value: form.zip, cfsqltype: "cf_sql_varchar" },
        country: { value: form.country, cfsqltype: "cf_sql_varchar" }
    };

 // Execute query
 local.result = queryExecute(sql=local.sql, params=local.params, options={ datasource: "copilot_demo" });


 // Redirect to form
 location("customer_form.cfm")
</cfscript>

