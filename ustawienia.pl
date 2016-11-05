#/usr/bin/perl
use CGI;
use CGI::Session;
use CGI::Cookie;
use DBI;
use DBD::mysql;
use LWP;

use strict;
use warnings;
use CGI qw(:standard);
use HTML::Template;
use JSON;

my $logger     =    "";
my $ustawienia =    param("ustawienia");
my $q          =    new CGI;
my $session    =    new CGI;
my $sid        =    "";
my $cgi        =    "";
my $logout     =    param("Logout");
my $message    =    "";

if ($ustawienia eq "1"){
            print qq(Content-type: text/plain\n\n);
            print "in preparation";
    }
elsif ($ustawienia eq "2"){
            print qq(Content-type: text/plain\n\n);
            print "in preparation";
    }
elsif ($ustawienia eq "3"){
            my $template = HTML::Template->new(filename => 'login.tmpl');
            $message = "You are now logged out!";
            $template-> param("MESSAGE", $message); 
            print $q->header(-type=> "text/html"); 
            print $template->output();
    }