<cfscript>
    <cfset local.sql = "INSERT INTO customer (first_name, last_name, email, phone, address1, city, state, zip, country) 
    VALUES (:first_name, :last_name, :email, :phone, :address1, :city, :state, :zip, :country)">
    
    <cfset local.params = {
        first_name: {value: form.first_name, cfsqltype: "cf_sql_varchar"},
        last_name: {value: form.last_name, cfsqltype: "cf_sql_varchar"},
        email: {value: form.email, cfsqltype: "cf_sql_varchar"},
        phone: {value: form.phone, cfsqltype: "cf_sql_varchar"},
        address1: {value: form.address1, cfsqltype: "cf_sql_varchar"},
        city: {value: form.city, cfsqltype: "cf_sql_varchar"},
        state: {value: form.state, cfsqltype: "cf_sql_varchar"},
        zip: {value: form.zip, cfsqltype: "cf_sql_varchar"},
        country: {value: form.country, cfsqltype: "cf_sql_varchar"}
    }>
    
    <cfset local.result = queryExecute(local.sql, local.params, {datasource: "copilot_demo"})>
    <cflocation("customer_form3.cfm")>

    local.sql = "INSERT INTO customer (first_name, last_name, email, phone, address1, city, state, zip, country) 
    VALUES (:first_name, :last_name, :email, :phone, :address1, :city, :state, :zip, :country)";

    local.params = {
        first_name: {value: form.first_name, cfsqltype: "cf_sql_varchar"},
        last_name: {value: form.last_name, cfsqltype: "cf_sql_varchar"},
        email: {value: form.email, cfsqltype: "cf_sql_varchar"},
        phone: {value: form.phone, cfsqltype: "cf_sql_varchar"},
        address1: {value: form.address1, cfsqltype: "cf_sql_varchar"},
        city: {value: form.city, cfsqltype: "cf_sql_varchar"},
        state: {value: form.state, cfsqltype: "cf_sql_varchar"},
        zip: {value: form.zip, cfsqltype: "cf_sql_varchar"},
        country: {value: form.country, cfsqltype: "cf_sql_varchar"}
    };
    
    local.result = queryExecute(local.sql, local.params, {datasource: "copilot_demo"});
    location("customer_form3.cfm");
</cfscript>


Essentially, this presentation is the same as the one given at the Adobe ColdFusion Summit 2023.  By no means am I saying that these are all that Github Copilot can do.  Hopefully, this would generate enough interests in you to explore the full functionality yourselves.

The whole thing used to be 55 minutes in length.  I didn't know that youTube didn't allow uploading anything longer than 15 minutes without going through some verification.  Plus, it takes forever to upload such a long clip.  Instead of redoing the whole thing, I just separated the whole thing into four parts.  Because of that, some of the cut off points may seem weird; please accept my apologies.


Utilizing Github Copilot to help with ColdFusion Development