<cfscript>
    local.qry = "INSERT INTO customer (first_name, last_name, email, phone, address1, city, state, zip, country)
    VALUES (:first_name, :last_name, :email, :phone, :address1, :city, :state, :zip, :country)";

    local.params = {
        first_name: {value: form.fname, cfsqltype: "cf_sql_varchar"},
        last_name: {value: form.lname, cfsqltype: "cf_sql_varchar"},
        email: {value: form.email, cfsqltype: "cf_sql_varchar"},
        phone: {value: form.phone, cfsqltype: "cf_sql_varchar"},
        address1: {value: form.address1, cfsqltype: "cf_sql_varchar"},
        city: {value: form.city, cfsqltype: "cf_sql_varchar"},
        state: {value: form.state, cfsqltype: "cf_sql_varchar"},
        zip: {value: form.zip, cfsqltype: "cf_sql_varchar"},
        country: {value: form.country, cfsqltype: "cf_sql_varchar"}
    } 

    local.result = queryExecute(local.qry, local.params, {datasource: "copilot_demo"});
</cfscript>
<cflocation url="customer_form1.cfm">