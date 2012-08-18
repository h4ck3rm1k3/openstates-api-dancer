package ostatesapi;
use Dancer ':syntax';

our $VERSION = '0.1';

#http://www.kslegislature.org/li/api/v5/rev-1/ctte/ctte_h_int_coop_1/
get '/li/api/v5/rev-1/ctte/:schedule/' => sub {
#    template "ctte";
    to_json ({
	
	"content" => [
	    {
		"CHAIR" =>  [
		    {
			"FULLNAME"=> "First Last",
			"KPID" => "rep_first_last_1"
		    }
		    ],
	    }
	    ] 
		
	     });
};

#/li/b2011_12/chamber/senate/roster/
get '/li/:slug/chamber/:chamber/roster/' => sub {
    # return "Why, hello there " 
    # 	. params->{slug}
    # . " Chamber:"
    # 	. params->{chamber}
    # . " Thanks"	;	
    template 'senate_roster';
};

#

get '/li/api/v5/rev-1/bill_status/' => sub {
    to_json ({
	"content" => [
	    {
		"BILLNO" => "HB2175",
		"EFFECTIVEDATE" => "This act shall take effect and be in force from and after its publication in the Kansas register.",
		"HISTORY" => [
		    {
			"action_code" => "gov_mg_150",
			"chamber" => "House",
			"journal_page_number" => "",
			"occurred_datetime" => "2012-06-01T13:28:13",
			"status" => "Approved by Governor on Friday, 01 June 2012"
		    },
		    {
			"action_code" => "ee_enrb_149",
			"chamber" => "House",
			"journal_page_number" => "",
			"occurred_datetime" => "2012-05-25T09:53:03",
			"status" => "Enrolled and presented to Governor on Friday, May 25, 2012"
		    },
		    {
			"action_code" => "ee_eng_225",
			"chamber" => "House",
			"journal_page_number" => "2937",
			"occurred_datetime" => "2012-05-19T20:03:04",
			"status" => "Engrossed on Saturday, 19 May 2012"
		    },
		    {
			"action_code" => "ccac_om_832",
			"chamber" => "House",
			"journal_page_number" => "2930",
			"occurred_datetime" => "2012-05-19T12:07:09",
			"status" => "Conference Committee Report was adopted;  Yea: 113 Nay: 0"
		    },
		    {
			"action_code" => "mot_susp_202",
			"chamber" => "House",
			"journal_page_number" => "2924",
			"occurred_datetime" => "2012-05-19T11:44:36",
			"status" => "Motion to suspend Joint Rule 4 (k) to allow consideration adopted;"
		    },
		    {
			"action_code" => "ccac_om_832",
			"chamber" => "Senate",
			"journal_page_number" => "3228",
			"occurred_datetime" => "2012-05-18T13:07:40",
			"status" => "Conference Committee Report was adopted;  Yea: 38 Nay: 0"
		    },
		    {
			"action_code" => "mot_susp_202",
			"chamber" => "Senate",
			"journal_page_number" => "3136",
			"occurred_datetime" => "2012-05-18T11:16:03",
			"status" => "Motion to suspend Joint Rule 4 (k) to allow consideration adopted;"
		    },
		    {
			"action_code" => "ccr_rel_100",
			"chamber" => "Senate",
			"journal_page_number" => "",
			"occurred_datetime" => "2012-05-18T11:00:31",
			"status" => "Conference committee report now available"
		    },
		    {
			"action_code" => "ccac_om_370",
			"chamber" => "Senate",
			"journal_page_number" => "389",
			"occurred_datetime" => "2011-03-18T10:06:37",
			"status" => "Motion to accede adopted;  Senator Umbarger,  Senator Marshall and  Senator Kultala appointed as  conferees"
		    },
		    {
			"action_code" => "cur_con_374",
			"chamber" => "House",
			"conferee_names" => [
			    "Representative Burgess",
			    "Representative Hayzlett",
			    "Representative Trimmer"
			    ],
			    "journal_page_number" => "538",
			    "occurred_datetime" => "2011-03-17T11:28:34",
			    "status" => "Nonconcurred with amendments; Conference Committee requested; appointed"
		    },
		    {
			"action_code" => "efa_fabc_343",
			"chamber" => "Senate",
			"journal_page_number" => "306",
			"occurred_datetime" => "2011-03-09T16:32:20",
			"status" => "Emergency Final Action - Passed as amended;  Yea: 39 Nay: 0"
		    },
		    {
			"action_code" => "cow_jcow_191",
			"chamber" => "Senate",
			"journal_page_number" => "302",
			"occurred_datetime" => "2011-03-09T16:10:29",
			"status" => "Committee of the Whole - Be passed as amended"
		    },
		    {
			"action_code" => "cow_jcow_195",
			"chamber" => "Senate",
			"journal_page_number" => "302",
			"occurred_datetime" => "2011-03-09T16:08:35",
			"status" => "Committee of the Whole - Committee Report be adopted"
		    },
		    {
			"action_code" => "cow_jcow_695",
			"chamber" => "Senate",
			"journal_page_number" => "",
			"occurred_datetime" => "2011-03-09T16:08:07",
			"status" => "Committee of the Whole - Now working on"
		    },
		    {
			"action_code" => "cr_rsc_282",
			"chamber" => "Senate",
			"committee_names" => [
			    "Committee on Transportation"
			    ],
			    "journal_page_number" => "282",
			    "occurred_datetime" => "2011-03-03T15:05:59",
			    "status" => "Committee Report recommending bill be passed as amended by"
		    },
		    {
			"action_code" => "ref_rbc_310",
			"chamber" => "Senate",
			"committee_names" => [
			    "Committee on Transportation"
			    ],
			    "journal_page_number" => "224",
			    "occurred_datetime" => "2011-02-22T16:47:17",
			    "status" => "Referred to"
		    },
		    {
			"action_code" => "intro_iopbc_158",
			"chamber" => "Senate",
			"journal_page_number" => "218",
			"occurred_datetime" => "2011-02-21T15:02:29",
			"status" => "Received and Introduced"
		    },
		    {
			"action_code" => "fa_fabc_340",
			"chamber" => "House",
			"journal_page_number" => "303",
			"occurred_datetime" => "2011-02-21T11:38:07",
			"status" => "Final Action - Passed;   Yea: 120 Nay: 0"
		    },
		    {
			"action_code" => "cow_jcow_180",
			"chamber" => "House",
			"journal_page_number" => "288",
			"occurred_datetime" => "2011-02-18T11:40:32",
			"status" => "Committee of the Whole - Be passed"
		    },
		    {
			"action_code" => "cr_rsc_281",
			"chamber" => "House",
			"committee_names" => [
			    "Committee on Government Efficiency"
			    ],
			    "journal_page_number" => "268",
			    "occurred_datetime" => "2011-02-16T11:56:18",
			    "status" => "Committee Report recommending bill be passed by"
		    },
		    {
			"action_code" => "ref_rbc_310",
			"chamber" => "House",
			"committee_names" => [
			    "Committee on Government Efficiency"
			    ],
			    "journal_page_number" => "192",
			    "occurred_datetime" => "2011-02-08T09:04:20",
			    "status" => "Referred to"
		    },
		    {
			"action_code" => "intro_ibc_157",
			"chamber" => "House",
			"journal_page_number" => "170",
			"occurred_datetime" => "2011-02-07T12:22:51",
			"status" => "Introduced"
		    }
		    ],
		"LONGTITLE" => "AN ACT concerning geographic information, systems and services; establishing the Kansas geographic information systems policy board and the office of state geographic information systems officer.",
		"RELATEDRS" => "11rs0246",
		"SHORTTITLE" => "Kansas one map act; geographic information systems and services, policy board and officer.",
		"SPONSOR_NAMES" => [
		    "Committee on Transportation"
		    ],
		    "STATUS" => "enacted",
		    "apn" => "b2011_12/year2/house/governors_actions/law/hb_2175/hb2175_enrolled.odt"
	    }
	    ]
	     })
};


get '/li/api/v5/rev-1/ctte/' => sub {
#    template "ctte";
    to_json ({
	"content" => {
	    "house_committees" =>  [
		{
		    "CHAMBER"=>"House",
		    "KPID"=>"ctte_h_cal_print_1",
		    "TITLE"=>"Calendar and Printing",
		    "TYPE"=>"Standing",
		},
		{
		    "CHAMBER"=>"House",
		    "KPID"=>"ctte_h_int_coop_1",
		    "TITLE"=>"Interstate Cooperation",
		    "TYPE"=>"Standing"
		}
		
		],
	    
	    
	    "senate_committees" =>[
		{
		    "CHAMBER"=>"Senate",
		    "KPID"=>"ctte_s_ed_1",
		    "TITLE"=>"Education",
		    "TYPE"=>"Standing"
		},
		]
	},
		"revno"=> 285137
		
	       }
	);
};


get '/li/*/measures/*/odt_view/*/' => sub {
};


#www1.kslegislature.org/li/b2011_12/measures/hb2175/
get '/li/:slug/measures/:bill/' => sub {
    # 	. params->{slug}
    # 	. params->{chamber}
    template 'bill_details';    
};

get '/li/*/year1/measures/*' => sub {
};

get 'li/*/members/*/' => sub {
};



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
    ""
};


get '/' => sub {
    template 'index';
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
