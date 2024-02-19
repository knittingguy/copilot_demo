<cfscript>
local.qry = "INSERT INTO customer (first_name, last_name, email, phone, address1, city) 
    values (:first_name, :last_name, :email, :phone, :address1, :city)";

    local.params = {
      first_name: {value: form.fname, cfsqltype: "cf_sql_varchar"},
        last_name: {value: form.lname, cfsqltype: "cf_sql_varchar"},
        email: {value: form.email, cfsqltype: "cf_sql_varchar"},
        phone: {value: form.phone, cfsqltype: "cf_sql_varchar"},
        address1: {value: form.address1, cfsqltype: "cf_sql_varchar"},
        city: {value: form.city, cfsqltype: "cf_sql_varchar"}

    };

    local.result = queryExecute(local.qry, local.params, {datasource: "copilot_demo"});

</cfscript>
<cflocation url="customer_form3.cfm">