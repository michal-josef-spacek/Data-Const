use strict;
use warnings;

use Data::Const;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
is($Data::Const::VERSION, 0.02, 'Version.');
