package Data::Const;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Error::Pure qw(err);
use Mo::utils::Hash qw(check_hash);

our $VERSION = 0.02;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Output structure.
	$self->{'output_struct'} = {};

	# Process parameters.
	set_params($self, @params);

	# Check 'output_struct'.
	check_hash($self, 'output_struct');

	return $self;
}

sub data {
	my $self = shift;

	err "Need to be implemented.";
}

sub add_object_to_output_array {
	my ($self, $key, $object) = @_;

	if (exists $self->{'output_struct'}->{$key}) {
		if (ref $self->{'output_struct'}->{$key} ne 'ARRAY') {
			err "Bad output structure defined in constructor.";
		} else {
			push @{$self->{'output_struct'}->{$key}}, $object;
		}
	} else {
		$self->{'output_struct'}->{$key} = [$object];
	}

	return;
}

1;

__END__
