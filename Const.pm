package Data::Const;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Error::Pure qw(err);
use Mo::utils 0.01 qw(check_required);
use Scalar::Util qw(blessed);

our $VERSION = 0.02;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Output ISA.
	$self->{'output_isa'} = undef;

	# Process parameters.
	set_params($self, @params);

	# Check 'output_isa';
	check_required($self, 'output_isa');

	return $self;
}

sub data {
	my $self = shift;

	my $obj = $self->_data;

	if (! defined $obj
		|| ! blessed($obj)
		|| ! $obj->isa($self->{'output_isa'})) {

		err 'Bad output object.';
	}

	return $obj;
}

sub _data {
	my $self = shift;

	err "Need to be implemented.";
}

1;

__END__
