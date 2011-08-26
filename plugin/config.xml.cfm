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
			<name>username</name>
			<label>Twitter Username</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>poll</name>
			<label>Poll for new results?</label>
			<hint></hint>
			<type>SelectBox</type>
			<required>false</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList>0^1</optionList>
			<optionLabelList>No^Yes</optionLabelList>
		</setting>
		<setting>
			<name>scrollbar</name>
			<label>Include Scrollbar?</label>
			<hint></hint>
			<type>SelectBox</type>
			<required>false</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList>0^1</optionList>
			<optionLabelList>No^Yes</optionLabelList>
		</setting>
		<setting>
			<name>avatars</name>
			<label>Show avatars?</label>
			<hint></hint>
			<type>SelectBox</type>
			<required>false</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList>0^1</optionList>
			<optionLabelList>No^Yes</optionLabelList>
		</setting>
		<setting>
			<name>timestamp</name>
			<label>Show timestamp?</label>
			<hint></hint>
			<type>SelectBox</type>
			<required>false</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList>0^1</optionList>
			<optionLabelList>No^Yes</optionLabelList>
		</setting>
		<setting>
			<name>hashtags</name>
			<label>Show hashtags?</label>
			<hint></hint>
			<type>SelectBox</type>
			<required>false</required>
			<validation>None</validation>
			<regex></regex>
			<message></message>
			<defaultValue></defaultValue>
			<optionList>0^1</optionList>
			<optionLabelList>No^Yes</optionLabelList>
		</setting>
		<setting>
			<name>tweetnumber</name>
			<label>Number of Tweets</label>
			<hint>The number of tweets that will display at once</hint>
			<type>TextBox</type>
			<required>true</required>
			<validation>Numeric</validation>
			<regex></regex>
			<message></message>
			<defaultValue>4</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>shellbg</name>
			<label>Shell Background Color</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation></validation>
			<regex></regex>
			<message></message>
			<defaultValue>#333333</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>shelltxt</name>
			<label>Shell Text Color</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation></validation>
			<regex></regex>
			<message></message>
			<defaultValue>#ffffff</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>tweetbg</name>
			<label>Tweet Background Color</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation></validation>
			<regex></regex>
			<message></message>
			<defaultValue>#000000</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>tweettxt</name>
			<label>Tweet Text Color</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation></validation>
			<regex></regex>
			<message></message>
			<defaultValue>#ffffff</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>linkcolor</name>
			<label>Links Color</label>
			<hint></hint>
			<type>TextBox</type>
			<required>true</required>
			<validation></validation>
			<regex></regex>
			<message></message>
			<defaultValue>#4aed05</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>width</name>
			<label>Width</label>
			<hint>Width in pixels. Set to 0 if you want to use automatic width.</hint>
			<type>TextBox</type>
			<required>true</required>
			<validation>numeric</validation>
			<regex></regex>
			<message></message>
			<defaultValue>250</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
		<setting>
			<name>height</name>
			<label>Height</label>
			<hint>Height in pixels</hint>
			<type>TextBox</type>
			<required>true</required>
			<validation>numeric</validation>
			<regex></regex>
			<message></message>
			<defaultValue>300</defaultValue>
			<optionList></optionList>
			<optionLabelList></optionLabelList>
		</setting>
	</settings>
	<EventHandlers />
	<DisplayObjects location="null">
		<displayObject name="tweetWidget" displayobjectfile="displayObjects/tweetWidget.cfm" />
	</DisplayObjects>
</plugin>