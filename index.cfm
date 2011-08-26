<!--- 
	Plugin: Easy Twitter
 --->

<cfinclude template="plugin/config.cfm" />

<cfsilent>
	<!--- TODO: Implement code... --->
</cfsilent>

<cfsavecontent variable="variables.body">
	<cfoutput>
	<h2>#request.pluginConfig.getName()#</h2>
	<p>
		To modify the display settings for the plugin, go <a href="javascript:history.go(-1)">back</a> to the main plugins list and click the "Edit" icon.
	</p>
	</cfoutput>
</cfsavecontent>

<cfoutput>#application.pluginManager.renderAdminTemplate(body=variables.body,pageTitle=request.pluginConfig.getName())#</cfoutput>