use strict;
use warnings;

use Data::Const::Set;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Const::Set->new;
isa_ok($obj, 'Data::Const::Set');

# Test.
eval {
	Data::Const::Set->new(
		'output_struct' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'output_struct' isn't hash reference.\n",
	"Parameter 'output_struct' isn't hash reference (bad).");
clean();
