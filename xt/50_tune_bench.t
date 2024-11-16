#!perl
use 5.006;

use strict;
use warnings;
use utf8;

binmode(STDOUT,":encoding(UTF-8)");
binmode(STDERR,":encoding(UTF-8)");

use lib qw(
../lib/
./lib/
);

use Test::More;
use Test::More::UTF8;

use Benchmark qw(:all) ;


use Lingua::DE::Syllable;

    cmpthese( -1, {
        'syllables' => sub {
            syllables( 'Tyrannosaurus' )
        },
        'syllables0' => sub {
            syllables0( 'Tyrannosaurus' )
        },
        'syllables1' => sub {
            syllables1( 'Tyrannosaurus' )
        },
        'syllables2' => sub {
            syllables2( 'Tyrannosaurus' )
        },
        'syllables3' => sub {
            syllables3( 'Tyrannosaurus' )
        },

    });




done_testing();
