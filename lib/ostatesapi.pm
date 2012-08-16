package ostatesapi;
use Dancer ':syntax';

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

# http://www.kslegislature.org/li
# http://www.kslegislature.org/li/api/v5/rev
# http://www.kslegislature.org/li/b2011_12/chamber/house/roster/
# http://www.kslegislature.org/li/b2011_12/chamber/senate/roster/
# http://www.kslegislature.org/li/b2011_12/measures/hb2001
# http://www.kslegislature.org/li/b2011_12/measures/odt_view/je_20110111144504_409553/
# http://www.kslegislature.org/li/b2011_12/members/rep_arpke_tom_1/
# http://www.kslegislature.org/li/b2011_12/members/sen_apple_pat_1/
# http://www.kslegislature.org/li/b2011_12/year1/measures/hr6001

get '/li/api/v5/rev' => sub {
}

get '/li/*/chamber/*/roster/' => sub {
}

get '/li/*/measures/*/odt_view/*/' => sub {
}

get '/li/*/measures/*' => sub {
}

get '/li/*/year1/measures/*' => sub {
}

get 'li/*/members/*/' => sub {
}






# 
get '/li' => sub {
    to_xml(
	{
	    "li" => {
		"a" => {
		    href=> "http://www.kslegislature.org/li/b2011_12/measures/bills/",
		    content=> "Senate Bills",
		},
	    }
	});

};
#original :	<li><a href="/li/b2011_12/measures/bills/senate/">Senate Bills</a></li> 
#<li><a href="/li/b2011_12/measures/bills/house/">House Bills</a></li> 
#<li><a href="/li/b2011_12/statute/">Statute</a></li> 
# <li><a href="/li/b2011_12/members/">Legislators</a> 
#     <ul> 
#     <li><a href="http://www.ipsr.ku.edu/ksdata/vote/">Find your Legislator (by map)</a></li> 
#     <li><a href="/li/b2011_12/chamber/house/leadership/">House Leadership</a></li> 
#     <li><a href="/li/b2011_12/chamber/house/roster/">House Roster</a></li> 
#     <li><a href="/li/b2011_12/chamber/senate/leadership/">Senate Leadership</a></li> 
#     <li><a href="/li/b2011_12/chamber/senate/roster/">Senate Roster</a></li>					
#     <li><a href="/li/b2011_12/committees/">Committees</a></li> 
#     </ul>     
#     </li>     
#     <li><a href="/li/b2011_12/committees/">Committees</a> 
#     <ul> 
#     <li><a href="/li/b2011_12/committees/standing/">Standing</a></li> 
#     <li><a href="/li/b2011_12/committees/non_standing/#Joint">Joint</a></li> 
#     <li><a href="/li/b2011_12/committees/non_standing/#Special">Special</a></li> 
#     <li><a href="/li/b2011_12/committees/non_standing/#Commission">Commission</a></li> 
#     <li><a href="/li/b2011_12/committees/non_standing/#Task Force">Task Force</a></li> 
#     <li><a href="/li/b2011_12/committees/conference/">Conference</a></li> 
#     <li><a href="/li/b2011_12/committees/resources/">Resources</a></li> 
#     </ul>     
#     </li> 
#     <li ><a href="/li/b2011_12/year2/measures/bills/">Bills &amp; Laws</a> 
#     <ul> 
#     <li><a href="/li/b2011_12/measures/bills/senate/">Senate Bills</a></li> 
#     <li><a href="/li/b2011_12/measures/bills/house/">House Bills</a></li> 
#     <li><a href="/li/b2011_12/statute/">Statute</a></li> 
    
    
sub bad_href {
    to_xml(
	{
	    "a" => {
		href=> "blah",
		content=> "Senate Bills",
		text => "text",
	    },
	});
}

sub bad_content {
    to_xml(
	{
	    "a" => {
		href=> "blah",
		content=> " Body of a object",
		text => "text",
	    },
	});
}


true;
