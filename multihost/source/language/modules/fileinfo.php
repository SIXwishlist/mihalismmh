<?php
/* 
     // ======================================== \
     // Package: Mihalism Multi Host
     // Version: 5.0.0
     // Copyright (c) 2007, 2008, 2009 Mihalism Technologies
     // License: http://www.gnu.org/licenses/gpl.txt GNU Public License
     // LTE: 1251507464 - Friday, August 28, 2009, 08:57:44 PM EDT -0400
     // ======================================== /
     
     This file contains some language settings that are a part of Mihalism Multi Host but were not able to 
     be placed into template files. In each setting, %s represents a place holder for a value that will 
     be dynamically generated by Mihalism Multi Host; so be careful while editing to not remove them.
     
     Language file index:
		001 -- Error to be displayed when not enough input parameters (GET/POST) are given
		002 -- Error to be displayed when the requested file does not exist

*/
    
	$mmhclass->lang['001'] = "An invalid number of input parameters (<a href=\"http://en.wikipedia.org/wiki/Hypertext_Transfer_Protocol#Request_methods\">GET / POST</a>) have been supplied.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"$('div[class=lightbox_main]').parent().remove();\">Close Window</a>";
	$mmhclass->lang['002'] = "The image file <b>%s</b> does not exist. <br />
Please ensure the filename is spelled correctly.<br />
<br />
<a href=\"javascript:void(0);\" onclick=\"$('div[class=lightbox_main]').parent().remove();\">Close Window</a>";


?>