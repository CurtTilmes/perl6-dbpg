#!/usr/bin/env raku

use DB::Pg;

my $pg = DB::Pg.new;

for $pg.execute("copy foo to stdout (format csv)") -> $line
{
    print $line;
}
