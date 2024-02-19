<cfscript>
    local.demoObj = createObject("component", "copilotDemo");
    local.demoObj.init();
    writeoutput(local.demoObj.getDemoMessage1());
    writeoutput("<br>");
    writeoutput(local.demoObj.getDemoMessage2());
    writeoutput("<br>");
    writeoutput(local.demoObj.getDemoMessage3());
    writeoutput("<br>");
</cfscript>