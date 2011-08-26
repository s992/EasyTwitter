<!--- 
	Plugin: Easy Twitter
	Display Object: tweetWidget
 --->

<cfsilent>
	<cfset username = pluginConfig.getSetting('username') />
	<cfset poll = pluginConfig.getSetting('poll') />
	<cfset scrollbar = pluginConfig.getSetting('scrollbar') />
	<cfset avatars = pluginConfig.getSetting('avatars') />
	<cfset timestamp = pluginConfig.getSetting('timestamp') />
	<cfset hashtags = pluginConfig.getSetting('hashtags') />
	<cfset tweetnumber = pluginConfig.getSetting('tweetnumber') />
	<cfset shellbg = pluginConfig.getSetting('shellbg') />
	<cfset shelltxt = pluginConfig.getSetting('shelltxt') />
	<cfset tweetbg = pluginConfig.getSetting('tweetbg') />
	<cfset tweettxt = pluginConfig.getSetting('tweettxt') />
	<cfset linkcolor = pluginConfig.getSetting('linkcolor') />
	<cfset width = pluginConfig.getSetting('width') />
	<cfset height = pluginConfig.getSetting('height') />	
</cfsilent>

<cfoutput>
	<script src="http://widgets.twimg.com/j/2/widget.js"></script>
	<script>
	new TWTR.Widget({
	  version: 2,
	  type: 'profile',
	  rpp: #val(tweetnumber)#,
	  interval: 30000,
	  width: #(width EQ 0 ? "'auto'" : val(width))#,
	  height: #val(height)#,
	  theme: {
	    shell: {
	      background: '#shellbg#',
	      color: '#shelltxt#'
	    },
	    tweets: {
	      background: '#tweetbg#',
	      color: '#tweettxt#',
	      links: '#linkcolor#'
	    }
	  },
	  features: {
	    scrollbar: #(scrollbar EQ 1 ? 'true' : 'false')#,
	    loop: false,
	    live: #(poll EQ 1 ? 'true' : 'false')#,
	    hashtags: #(hashtags EQ 1 ? 'true' : 'false')#,
	    timestamp: #(timestamp EQ 1 ? 'true' : 'false')#,
	    avatars: #(avatars EQ 1 ? 'true' : 'false')#,
	    behavior: 'all'
	  }
	}).render().setUser('#username#').start();
	</script>
</cfoutput>