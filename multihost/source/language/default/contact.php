<?php
/* 
     // ======================================== \
     // Package: Mihalism Multi Host
     // Version: 5.0.0
     // Copyright (c) 2007, 2008, 2009 Mihalism Technologies
     // License: http://www.gnu.org/licenses/gpl.txt GNU Public License
     // LTE: 1251507890 - Friday, August 28, 2009, 09:04:50 PM EDT -0400
     // ======================================== /
     
     This file contains some language settings that are a part of Mihalism Multi Host but were not able to 
     be placed into template files. In each setting, %s represents a place holder for a value that will 
     be dynamically generated by Mihalism Multi Host; so be careful while editing to not remove them.
     
     Language file index:
		001 -- Initial page title for contact pages
		002 -- Extended page title for the contact us page
		003 -- Error to be displayed if all form fields are not filled in
		004 -- Error to be displayed if the wrong security code is given
		005 -- Error to be displayed if the given email address is invalid
		006 -- Subject line of the contact us email
		007 -- Message to be displayed on successful contact of administration
		008 -- Error to be displayed if an email fails to be sent
		009 -- Extended page title for the report abuse page
		010 -- Error to be displayed if an image file does not exist when being reported
		011 -- Subject line of the report abuse email
		012 -- Error to be displayed if an invalid page is requested
		013 -- List of reasons that can be used when reporting an image

*/
    
	$mmhclass->lang['001'] = "%s » Contact » ";
	$mmhclass->lang['002'] = "Contact Us";
	$mmhclass->lang['003'] = "The form on the previous page has not been filled in completely. <br />
One or more fields have been left blank. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['004'] = "The security code entered did not match the one displayed. <br />
A new code has been generated. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['005'] = "The email address <b>%s</b> appears to be in an invalid format.<br />
A valid address would look like: <b>username@example.com</b>.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['006'] = "Contact Us Form (%s) #%s";
	$mmhclass->lang['007'] = "The %s administration has been successfully contacted.<br />
<br />
<a href=\"index.php\">Site Index</a>";
	$mmhclass->lang['008'] = "Failed to send email due to an error with the mail server. Please try again.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['009'] = "Report Abuse";
	$mmhclass->lang['010'] = "The image file <b>%s</b> does not exist. <br />
Please ensure the filename is spelled correctly.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"history.go(-1);\">Return to Previous Page</a>";
	$mmhclass->lang['011'] = "Terms of Service Violation Report (%s) #%s";
	$mmhclass->lang['012'] = "You have reached this page in error. Please use your back button to return to the previous page.";
	$mmhclass->lang['013'] = array (
  1 => 'Pornographic Image',
  2 => 'Distribution Without Permission',
  3 => 'Harasses One or Many People',
  4 => 'Promotion Through Advertisement -- "Spam"',
  5 => 'Against International Media Distribution Laws',
  6 => 'Other',
);


?>