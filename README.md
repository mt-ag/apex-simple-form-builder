<h1>Oracle APEX Application for JSON Form Creation</h1>

<h2>Introduction</h2>

<p>Here, I present to you an Oracle Apex application. With this application, you can easily generate JSON-based forms. You don't need any knowledge of Oracle Apex, JSON, or any programming skills. You can simply create a form through a few clicks in the menu, define the columns, and optionally add properties to the columns. In the end, you have your JSON generated. It is very easy to use and user-friendly.</p>

<p><strong>Demo</strong>: <a href="https://apex.oracle.com/pls/apex/r/sajjad/json-sfb/home">https://apex.oracle.com/pls/apex/r/sajjad/json-sfb/home</a></p>




<h2>Download Options</h2>

<h3>1. Local App</h3>

<p><strong>Description</strong>: The Local App is a local version of the application that is installed on your own server or instance. This version is publicly accessible, and any user can create, edit, and delete forms.</p>

<p><strong>Important Note</strong>: In this version, every user has access to the forms of all other users. This means that all forms are public and can be viewed by anyone.</p>

<p><strong>Deletion</strong>: Forms are not automatically deleted. However, users have the option to manually delete forms when they are no longer needed.</p>

<h3>2. Cloud App</h3>

<p><strong>Description</strong>: The Cloud App is a hosted version of the application that operates in the cloud. This version is also publicly accessible, but each user can only view and edit their own forms.</p>

<p><strong>Important Note</strong>: In this version, the forms are private and only visible to the respective creator. Other users cannot view the forms.</p>

<p><strong>Deletion</strong>: Forms are automatically deleted after 24 hours. However, users have the option to manually delete forms if they wish to do so before the 24-hour period expires.</p>

<h2>Installation</h2>

<h3>1. Step: Download the App</h3>

<p>Download the Oracle Apex App from the official website or a provided link. Save the file on your local computer.</p>

<h3>2. Step: Upload the App to Oracle Apex Workspace</h3>

<ol>
<li>Log in to your Oracle Apex Workspace.</li>
<li>Navigate to App Builder.</li>
<li>Click on Import.</li>
<li>Select the downloaded app file and follow the instructions to upload the app to your workspace.</li>
</ol>

<h3>3. Step: Install Supporting Objects</h3>

<p>During the app installation, you will be prompted to install Supporting Objects. These must be installed. The following objects will be automatically created by the installation scripts in the background:</p>

<ul>
<li><strong>Sequences</strong>: These are used to generate unique IDs for records.</li>
<li><strong>Tables</strong>: These store the form data.</li>
<li><strong>Views</strong>: These provide a user-friendly view of the data.</li>
<li><strong>Packages</strong>: These contain PL/SQL code to support the app functionality.</li>
</ul>

<p><strong>Note:</strong> This application uses the <a href="https://github.com/simonuwe/oracle-apex-json-region" target="_blank">JSON Region Plugin by Uwe Simon</a>, version <strong>0.9.5</strong>. This plugin is essential for integrating and managing the JSON structures within Oracle APEX. For more information about this plugin and detailed instructions on how to configure it, please visit the <a href="https://github.com/simonuwe/oracle-apex-json-region" target="_blank">official documentation</a>.</p>

<h3>4. Step: Launch the App</h3>

<p>After successful installation, you can launch the app. Navigate to App Builder and click on the name of the newly installed app to start it. You can now begin creating forms directly.</p>

<h2>Uninstallation</h2>

<h3>1. Step: Delete the App</h3>

<p>If you want to delete the app and the associated objects, you can do this through the Oracle Apex interface:</p>

<ol>
<li>Log in to your Oracle Apex Workspace.</li>
<li>Navigate to App Builder.</li>
<li>Select the app you want to delete.</li>
<li>Click on Delete.</li>
<li>Check the box to also delete the associated objects (sequences, tables, views, and packages).</li>
<li>Confirm the deletion.</li>
</ol>

<p>The uninstallation of the objects will be automatically executed by an uninstallation script in the background.</p>
