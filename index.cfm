<!--- 
	Plugin: Easy Twitter
 --->

<cfinclude template="plugin/config.cfm" />

<cfsilent>
	<cfset dsn = request.pluginConfig.getSetting('dsn') />
	<cfset dsnprefix = request.pluginConfig.getSetting('dsnprefix') />
	
	<!--- There SHOULD only be one widget set up per site, but I'm going to limit it just in case...--->
	<cfquery name="twitterSettings" datasource="#dsn#">
		SELECT * FROM #dsnprefix#easytwitter
		WHERE siteID = '#session.siteID#'
		LIMIT 1
	</cfquery>
</cfsilent>

<cfsavecontent variable="variables.body">
	<cfoutput>
	<h2>#request.pluginConfig.getName()#</h2>
	<p>Fill in your Twitter details here:</p>
	
	<form method=post>
		<p>
			<label for="username">Username: </label>
			<input type="text" name="username" id="username" value="#twitterSettings.username#" />
		</p>
		<p>
			<label for="poll">Poll for new results?</label>
			<input type="checkbox" name="poll" id="poll" #(twitterSettings.poll EQ 1 ? 'checked' : '')# />
		</p>
		<p>
			<label for="scrollbar">Include scrollbar?</label>
			<input type="checkbox" name="scrollbar" id="scrollbar" #(twitterSettings.scrollbar EQ 1 ? 'checked' : '')# />
		</p>
		<p>
			<label for="avatars">Show Avatars?</label>
			<input type="checkbox" name="avatars" id="avatars" #(twitterSettings.avatars EQ 1 ? 'checked' : '')# />
		</p>
		<p>
			<label for="timestamp">Show Timestamps?</label>
			<input type="checkbox" name="timestamp" id="timestamp" #(twitterSettings.timestamp EQ 1 ? 'checked' : '')# />
		</p>
		<p>
			<label for="hashtags">Show hashtags?</label>
			<input type="checkbox" name="hashtags" id="hashtags" #(twitterSettings.hashtags EQ 1 ? 'checked' : '')# />
		</p>
		<p>
			<label for="tweetnumber">Number of tweets to display:</label>
			<input type="text" name="tweetnumber" id="tweetnumber" value="#twitterSettings.tweetnumber#" />
		</p>
		<p>
			<label for="shellbg">Shell Background Color: </label>
			<input type="text" name="shellbg" id="shellbg" value="#twitterSettings.shellbg#" />
		</p>
		<p>
			<label for="shelltxt">Shell Text Color: </label>
			<input type="text" name="shelltxt" id="shelltxt" value="#twitterSettings.shelltxt#" />
		</p>
		<p>
			<label for="tweetbg">Tweet Background Color: </label>
			<input type="text" name="tweetbg" id="tweetbg" value="#twitterSettings.tweetbg#" />
		</p>
		<p>
			<label for="tweettxt">Tweet Text Color: </label>
			<input type="text" name="tweettxt" id="tweettxt" value="#twitterSettings.tweettxt#" />
		</p>
		<p>
			<label for="linkscolor">Links Color: </label>
			<input type="text" name="linkscolor" id="linkscolor" value="#twitterSettings.linkscolor#" />
		</p>
		<p>
			<label for="width">Width: </label>
			<input type="text" name="width" id="width" value="#twitterSettings.width#" />
		</p>
		<p>
			<label for="height">Height: </label>
			<input type="text" name="height" id="height" value="#twitterSettings.height#" />
		</p>
		<p>
			<input type="submit" value="Submit" />
		</p>
	</form>
	</cfoutput>
</cfsavecontent>

<cfoutput>#application.pluginManager.renderAdminTemplate(body=variables.body,pageTitle=request.pluginConfig.getName())#</cfoutput>