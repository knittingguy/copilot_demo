<cfscript>
    // define the SQL query to execute
    local.sql = "
        INSERT INTO customer (first_name, last_name, email, phone)
        VALUES (:first_name, :last_name, :email, :phone)
    ";

    // define the parameters to pass to the query
    local.params = { first_name: { value: form.first_name, cfsqltype: "cf_sql_varchar" },
                     last_name: { value: form.last_name, cfsqltype: "cf_sql_varchar" },
                     email: { value: form.email, cfsqltype: "cf_sql_varchar" },
                     phone: { value: form.phone, cfsqltype: "cf_sql_varchar" }
                   };
    
    // execute the query
    local.result = queryExecute(local.sql, local.params, {datasource="copilot_demo"});
    
</cfscript>
<cflocation url="customer_form2.cfm">