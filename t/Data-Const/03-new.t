use strict;
use warnings;

use Data::Const;
use Test::More 'tests' => 2;
use Test::NoWarnings;

# Test.
my $obj = Data::Const->new(
	'output_isa' => 'Foo::Bar',
);
isa_ok($obj, 'Data::Const');
