#!/usr/bin/env perl6

use DB::Pg;

my $pg = DB::Pg.new;

for $pg.cursor('select generate_series(1,10000)') -> @r
{
    say @r;
}

