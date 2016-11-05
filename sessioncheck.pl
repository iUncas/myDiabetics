#!/usr/bin/perl
use CGI;
use CGI::Session qw(:ip_match); 
use HTML::Template; 
##VARIABLES##
my $session = CGI::Session->load(); 
my $q = new CGI;  
my $cgi = ""; 
my $sid = "";
 if($session->is_expired)	{
my $template = HTML::Template->new(filename => 'login.tmpl');
$message = "Session expired, please login again";
$template-> param("MESSAGE", $message); 
print $q->header(-type=> "text/html"); 
print $template->output();
		}
elsif($session->is_empty) {
my $template1 = HTML::Template->new(filename => 'login.tmpl');
$message = "Session is empty!!! Please login to the Workspace.";
$template1-> param("MESSAGE", $message); 
print $q->header(-type=> "text/html"); 
print $template1->output();	
 	 }
## THIS BLOCK SHOULD OPEN UP EXISTING SESSION WORKING AROUND##
else {
my $template3 = HTML::Template->new(filename => 'login.tmpl');
$message = "You need to login again";
$template3-> param("MESSAGE", $message); 
print $q->header(-type=> "text/html"); 
print $template3->output();
 }

