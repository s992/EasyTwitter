<?xml version="1.0" encoding="UTF-8"?>
<plugin>
	<name>Easy Twitter</name>
	<package>easytwitter</package>
	<loadPriority>5</loadPriority>
	<version>1.0.2</version>
	<provider>Sean Walsh</provider>
	<providerURL>http://www.thehatrack.net</providerURL>
	<category>Application</category>
	<settings>
		<setting>  
	        <name>dsntype</name>  
	        <label>Database Type</label>  
	        <hint>The type of database</hint>  
	        <type>select</type>  
	        <required>true</required>  
	        <validation></validation>  
	        <regex></regex>  
	        <message></message>  
	        <defaultvalue>mysql</defaultvalue>  
	        <optionlist>mysql^mssql</optionlist>  
	        <optionlabellist>MySQL^MS SQL</optionlabellist>  
	    </setting>  
	    <setting>  
	        <name>dsn</name>  
	        <label>Datasource</label>  
	        <hint>Enter the name of the *existing* datasource you will use for the plug-in</hint>  
	        <type>text</type>  
	        <required>true</required>  
	        <validation></validation>  
	        <regex></regex>  
	        <message></message>  
	        <defaultvalue></defaultvalue>  
	        <optionlist></optionlist>  
	        <optionlabellist></optionlabellist>  
	    </setting>  
	    <setting>  
	        <name>dsnusername</name>  
	        <label>Datasource username</label>  
	        <hint>Username for the plug-in datasource</hint>  
	        <type>text</type>  
	        <required>true</required>  
	        <validation></validation>  
	        <regex></regex>  
	        <message></message>  
	        <defaultvalue></defaultvalue>  
	        <optionlist></optionlist>  
	        <optionlabellist></optionlabellist>  
	    </setting>  
	    <setting>  
	        <name>dsnpassword</name>  
	        <label>Datasource password</label>  
	        <hint>Password for the plug-in datasource</hint>  
	        <type>text</type>  
	        <required>true</required>  
	        <validation></validation>  
	        <regex></regex>  
	        <message></message>  
	        <defaultvalue></defaultvalue>  
	        <optionlist></optionlist>  
	        <optionlabellist></optionlabellist>  
	    </setting>  
	    <setting>  
	        <name>dsnprefix</name>  
	        <label>Datasource Table Prefix</label>  
	        <hint>Add a prefix to the table names. (optional)</hint>  
	        <type>text</type>  
	        <required>false</required>  
	        <validation></validation>  
	        <regex></regex>  
	        <message></message>  
	        <defaultvalue></defaultvalue>  
	        <optionlist></optionlist>  
	        <optionlabellist></optionlabellist>  
	    </setting>  
	</settings>
	<EventHandlers />
	<DisplayObjects location="null">
		<displayObject name="tweetWidget" displayobjectfile="displayObjects/tweetWidget.cfm" />
	</DisplayObjects>
</plugin>