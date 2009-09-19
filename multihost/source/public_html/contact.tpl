<!-- BEGIN: CONTACT US PAGE -->
<template id="contact_us_page">

<form action="contact.php?act=contact_us-s" method="post">
	<div class="table_border">
		<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
			<tr>
				<th colspan="2">Contact Us</th>
			</tr>
			<tr>
				<td style="width: 27%;" class="tdrow1"><span>Name:</span></td> 
				<td class="tdrow2"><input type="text" name="username" style="width: 300px;" class="input_field" value="<# USERNAME #>" /></td>
			</tr>
			<tr>
				<td style="width: 27%;" class="tdrow1"><span>E-Mail Address:</span> <br /> <div class="explain">This is the E-Mail Address at which we will reply to if necessary so ensure that it is correct.</div></td> 
				<td valign="top" class="tdrow2"><input type="text" name="email_address" style="width: 300px;" class="input_field" value="<# EMAIL_ADDRESS #>" /></td>
			</tr>
			<tr>
				<td style="width: 27%;" class="tdrow1" valign="top"><span>Message:</span> <br /> <div class="explain">Please do not use HTML because this message will be sent in a plain text format. If any HTML is found, then it will automatically be removed.</div></td> 
				<td class="tdrow2"><textarea rows="25" cols="80" class="input_field" name="message_body"></textarea></td>
			</tr>
			<tr>
				<td style="width: 27%;" class="tdrow1" valign="top"><span>Security Code:</span></td> 
				<td class="tdrow2"><# CAPTCHA_CODE #></td>
			</tr>
			<tr>
				<td class="table_footer" colspan="2"><input class="button1" type="submit" value="Send Message" /></td>
			</tr>
		</table>
	</div>
</form>

</template>
<!-- END: CONTACT US PAGE -->

<!-- BEGIN: CONTACT US EMAIL -->
<template id="contact_us_email">

Dear <# SITE_NAME #> Administrator,
<br /><br />

The following is an email submitted from the contact form<br />
located on your website at: <# BASE_URL #><br />
-------------------------<br />
<# USERNAME #> wrote,
<br /><br />

<# EMAIL_BODY #>

</template>
<!-- END: CONTACT US EMAIL -->

<!-- BEGIN: FILE REPORT PAGE -->	
<template id="report_files_page">
	
<form action="contact.php?act=file_report-s" method="post">
	<if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['file']) == false">
		<p><input type="hidden" name="filename" value="<# FILENAME #>" /></p>
	</endif>
    
	<div class="table_border">
		<table cellpadding="4" cellspacing="1" border="0" style="width: 100%;">
			<tr>
				<th colspan="2">Report Abuse to <# SITE_NAME #></th>
			</tr>
			<tr>
				<td colspan="2" class="tdrow1"><strong>Important</strong>: Although we do review every report submission we do not guarantee that the submitted images will be removed.</td>
			</tr>
			<tr>
				<td style="width: 30%;" class="tdrow1"><span>Name:</span></td> 
				<td class="tdrow2"><input type="text" name="username" style="width: 300px;" class="input_field" value="<# USERNAME #>" /></td>
			</tr>
			<tr>
				<td style="width: 30%;" class="tdrow1"><span>E-Mail Address:</span> <br /> <div class="explain">Please use a valid E-Mail Address because we may need to contact you for more information.</div></td> 
				<td valign="top" class="tdrow2"><input type="text" name="email_address" style="width: 300px;" class="input_field" value="<# EMAIL_ADDRESS #>" /></td>
			</tr>
            
			<if="$mmhclass->funcs->is_null($mmhclass->input->get_vars['file']) == true">
				<tr>
					<td style="width: 30%;" class="tdrow1"><span>Images to Report:</span> <br /> <div class="explain">Enter as many filenames as you would like to report. Separate each with a comma, but do not use 'and' or spaces. Example filename: 431714620407606949.jpg</div></td>
					<td valign="top" class="tdrow2"><input type="text" name="filename" style="width: 300px;" class="input_field" /></td>
				</tr>
			</endif>
            
			<tr>
				<td style="width: 30%;" class="tdrow1" valign="top"><span>Report Reason:</span> <br /> <div class="explain">What part of our <a href="info.php?act=rules">Terms of Service</a> has been violated?</div></td> 
				<td class="tdrow2">
					<select name="report_reason" style="width: 300px;">
						<option value="1">I.&nbsp;&nbsp;&nbsp;Pornographic Image</option>
						<option value="2">II.&nbsp;&nbsp;Distribution Without Permission</option>
						<option value="3">III.&nbsp;Harasses One or Many People</option>
						<option value="4">IV.&nbsp;Promotion Through Advertisement -- "Spam"</option>
						<option value="5">V.&nbsp;&nbsp;Against International Media Distribution Laws</option>
						<option value="6">VI.&nbsp;Other</option>
					</select>
				</td>
			</tr>
			<tr>
				<td style="width: 30%;" class="tdrow1" valign="top"><span>Security Code:</span></td> 
				<td class="tdrow2"><# CAPTCHA_CODE #></td>
			</tr>
			<tr>
				<td class="table_footer" colspan="2"><input class="button1" type="submit" value="Send Report" /></td>
			</tr>
		</table>
	</div>
</form>
	
</template>
<!-- END: FILE REPORT PAGE -->	

<!-- BEGIN: FILE REPORT EMAIL -->
<template id="report_files_email">

Dear <# SITE_NAME #> Administrator,
<br /><br />

The following is a Terms of Service violation report email automatically<br />
generated by Mihalism Multi Host. The list below shows the images that<br />
have been reported.
<br /><br />

Report By: <# USERNAME #> &lt;<# EMAIL_ADDRESS #>&gt;<br />
Report Reason: <# REPORT_REASON #><br />
Reported Images:
<br /><br />
----------------------------
<br /><br />

<while id="reported_files_whileloop">

<div style="width: 200px; text-align: center;">
<strong><a href="<# DIRECT_LINK #>"><# FILENAME #></a></strong>
<br /><br />
<img src="<# THUMBNAIL #>" alt="<# FILENAME #> Thumbnail" />
<br /><br />
( <a href="<# DIRECT_LINK #>">Full Size</a> | <a href="<# DELETE_LINK #>">Delete</a> )
</div><br />

</endwhile>

----------------------------
<br /><br />
<em>Ignoring this email will have no effect on the images presented above.</em>

</template>
<!-- END: FILE REPORT EMAIL -->