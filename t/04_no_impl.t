use strict;
use Test::More tests => 1;

use Apache::Session::CacheAny;

my %session;

eval {
    tie %session, 'Apache::Session::CacheAny', undef, {
	CacheImpl => 'Cache::NoImplementation',
    };
};

ok $@, $@;

