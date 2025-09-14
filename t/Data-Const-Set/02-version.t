use strict;
use warnings;

use Data::Const::Set;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Const::Set::VERSION, 0.02, 'Version.');
