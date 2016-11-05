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

##Variables##

my $logger    =    "";
my $username  =    param("myselect");
my $q         =    new CGI;
my $session   =    new CGI;
my $sid       =    "";
my $cgi       =    "";
my $logout    =    param("Logout");
my $message   =    "";

## blocks if ##
if ($username eq "1"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS ORDER BY DType like 'R%' ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_morning.tmpl');
            $message = "MORNING TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "2"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS WHERE DType like 'L%' ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_lunch.tmpl');
            $message = "LUNCH TIME TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "3"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS WHERE DType like 'A%' ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_afternoon.tmpl');
            $message = "AFTERNOON TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "4"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS WHERE DType like 'S%' ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_supper.tmpl');
            $message = "SUPPER TIME TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "5"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS WHERE DType like 'N%' ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_night.tmpl');
            $message = "NIGHT TIME TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "6"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTSGHB WHERE ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome_hgb.tmpl');
            $message = "GLYCATED HEMOGLOBIN TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
elsif ($username eq "7"){
my $dbh = DBI->connect("DBI:mysql:database=mysql;host=localhost;port=2009", "root", "wojtek29")
    or die $DBI::errstr;
    my $statement = qq{SELECT DateT, Results FROM DRESULTS ORDER BY ID DESC};
    my $sth = $dbh->prepare($statement) or die $dbh->errstr;
    $sth->execute() or die $sth->errstr;
    my $rows = [];
        push @{$rows}, $_ while $_ = $sth->fetchrow_hashref();
            my $template = HTML::Template->new(filename =>'template/newhome.tmpl');
            $message = "GENERAL TEST RESULTS";
            $template->param("MESSAGE", $message);
            $template->param(ROWS => $rows);
            $template->param(JSROWS =>  encode_json($rows));
            print $q->header(-type=> "text/html");
            print $template->output();
    }
