use strict;
use warnings;
use diagnostics;
use v5.22;
use feature "say";

my $my_file = qq{$ARGV[0]};
my $count = 0;
my @word_a_s;
my @line;
open my $fh, '<', $my_file or die "Cant open file: $_";
local $/ = ' ';

while(<$fh>){
    chomp;
    @line = split(' ');
    foreach my $word (@line) {
        push @word_a_s, $word if $word =~ /\w*e\w*/;
        $count++ if $word =~ /\w*e\w*/;
    }
}
say "Number of type l<substing>m = ", $count;
say "The words are: ", join ", ", @word_a_s;
close $fh or die "Cant open file: $_";
