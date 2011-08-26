<cfcomponent extends="mura.plugin.plugincfc">

	<cffunction name="init" returntype="any" access="public" output="false">
		<cfargument name="pluginConfig" type="any" default="" />

		<cfset variables.pluginConfig = arguments.pluginConfig />

		<cfreturn this />
	</cffunction>

	<cffunction name="install" returntype="void" access="public" output="false">
		<cfset updateDatabaseSchema()>
	</cffunction>

	<cffunction name="update" returntype="void" access="public" output="false">
		<cfset updateDatabaseSchema()>
	</cffunction>

	<cffunction name="delete" returntype="void" access="public" output="false">
		<!--- TODO: Auto-generated method stub --->
	</cffunction>
	
	<cffunction name="updateDatabaseSchema" returntype="void" access="public" output="false">
		<!--- Later on, I'll see about checking against schema modifications. --->
		<cfset createDatabaseSchema()>
	</cffunction>
	
	<cffunction name="createDatabaseSchema" returntype="void" access="public" output="false">
		<cfset var dsn = pluginConfig.getSetting('dsn') />
		<cfset var dsnprefix = pluginConfig.getSetting('dsnprefix') />
		
		<cfquery name="createTwitterTable" datasource="#dsn#">
			CREATE TABLE `#dsnprefix#easytwitter` (
			  `siteid` varchar(45) NOT NULL,
			  `username` varchar(45) NOT NULL,
			  `poll` tinyint(1) NOT NULL,
			  `scrollbar` tinyint(1) NOT NULL,
			  `avatars` tinyint(1) NOT NULL,
			  `timestamp` tinyint(1) NOT NULL,
			  `hashtags` tinyint(1) NOT NULL,
			  `tweetnumber` int(10) unsigned NOT NULL,
			  `shellbg` varchar(7) NOT NULL,
			  `shelltxt` varchar(7) NOT NULL,
			  `tweetbg` varchar(7) NOT NULL,
			  `tweettxt` varchar(7) NOT NULL,
			  `linkscolor` varchar(7) NOT NULL,
			  `width` int(10) unsigned NOT NULL,
			  `height` int(10) unsigned NOT NULL,
			  PRIMARY KEY (`siteid`)
			)
		</cfquery>
	</cffunction>

</cfcomponent>