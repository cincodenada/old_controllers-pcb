#!/usr/bin/perl
$linenum = @ARGV[0];
$filename = @ARGV[1];

open(FILE,"<",$filename) or die "Cannot open $filename";
$extralines = 0;
$curline = 0;
while(<FILE>) {
    $curline++;
    if($linenum == $curline + $extralines) {
        die "Adjusted line #$curline: $_";
    } else {
        if(/^include\s+<(.*)>/) {
            $includefile = $1;
            $includeline = 0;
            open(INCLUDE,"<",$includefile) or next;
            while(<INCLUDE>) {
                $includeline++;
                if($linenum == $curline + $extralines + $includeline - 1) {
                    die "Line #$includeline in $includefile: $_";
                }
            }
            close INCLUDE;
            $extralines += $includeline - 1;
        }
    }
}
