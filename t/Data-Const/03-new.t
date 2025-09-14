use strict;
use warnings;

use Data::Const;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 3;
use Test::NoWarnings;

# Test.
my $obj = Data::Const->new;
isa_ok($obj, 'Data::Const');

# Test.
eval {
	Data::Const->new(
		'output_struct' => 'bad',
	);
};
is($EVAL_ERROR, "Parameter 'output_struct' isn't hash reference.\n",
	"Parameter 'output_struct' isn't hash reference (string).");
clean();
