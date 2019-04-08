use strict;
use warnings;
use diagnostics;
use v5.26;
use feature "say";

my $my_file = qq{$ARGV[0]};
# say $my_file;
my $count = 0;
open my $fh, '<', $my_file or die "Cant open file: $_";
while(<$fh>){
    
    $count += () = $_ =~ /\w*apple\w*/gi;
}
say $count;
close $fh or die "Cant open file: $_";