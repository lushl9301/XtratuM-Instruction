use warnings;

$filename = "dif";

open FILE, "<", $filename or die "can't open file";

@config = ();

while ($readinline = <FILE>) {
    if ($readinline =~ /^\n/) {
	next;
    }
    if (substr($readinline, 2, 1) =~ /#/) {
	next;
    }
    if ($readinline =~ /^</) {
	if ($readinline =~ /not\sset/) {
	    next;
	} else {
	    push(@config, $readinline);
	}
    }

    if ($readinline =~ /^>/) {
	if ($readinline =~ /not\sset/) {
	    next;
	} else {
	    $readinline =~ /^>\s(CONFIG[\w_\d]+)=m/ || next;
	    $temp = $1;
	    foreach $a (@config) {
		if (index($a, $temp) != -1) {
		    $a = "#".$a;
		    last;
		}
	    }
	}
    }
}

print @config;
