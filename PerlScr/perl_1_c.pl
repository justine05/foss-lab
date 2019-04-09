use strict;
use warnings;
use diagnostics;
use v5.26;
use feature "say";

my $my_file = qq{$ARGV[0]};

my $count = 0;
open my $fh, '<', $my_file or die "Cant open file: $_";
while(<$fh>){
    $count += () = $_ =~ /\bap\w*/gi;
}
say $count;
close $fh or die "Cant open file: $_";