use strict;
use warnings;
use Test::Stream -V1;
use Text::Hunspell::FFI;

plan 1;

my $spell = Text::Hunspell::FFI->new(qw(./t/test.aff ./t/test.dic));
isa_ok $spell, 'Text::Hunspell::FFI';
