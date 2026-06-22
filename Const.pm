package Data::Const;

use strict;
use warnings;

use Class::Utils qw(set_params);
use Error::Pure qw(err);

our $VERSION = 0.03;

# Constructor.
sub new {
	my ($class, @params) = @_;

	# Create object.
	my $self = bless {}, $class;

	# Process parameters.
	set_params($self, @params);

	return $self;
}

sub data {
	my $self = shift;

	err "Need to be implemented.";
}

1;

__END__

=encoding utf8

=head1 NAME

Data::Const - Abstract class for constant data objects.

=head1 SYNOPSIS

 use Data::Const;

 my $obj = Data::Const->new;

 my $data = $obj->data;

=head1 DESCRIPTION

This module is an abstract base class for objects which provide constant data.
Subclasses are expected to implement the C<data()> method.

=head1 METHODS

=head2 C<new>

 my $obj = Data::Const->new;

Constructor.

Returns instance of object.

=head2 C<data>

 my $data = $obj->data;

Abstract method for returning constant data from subclass implementation.

=head1 ERRORS

 new():
         From Class::Utils::set_params():
                 Unknown parameter '%s'.

 data():
         Need to be implemented.

=head1 EXAMPLES

=head2 EXAMPLE1

=for comment filename=data_const_abstract_method.pl

 use strict;
 use warnings;

 use Data::Const;
 use English;
 use Error::Pure::Utils qw(clean);

 my $obj = Data::Const->new;

 eval {
         $obj->data;
 };
 if ($EVAL_ERROR) {
         print $EVAL_ERROR;
         clean();
 }

 # Output:
 # Need to be implemented.

=head2 EXAMPLE2

=for comment filename=data_const_example.pl

 use strict;
 use warnings;

 package Foo;

 use parent 'Data::Const';

 sub data {
         return {
                 'foo' => 'example data',
         };
 }

 package main;

 use Data::Printer;

 my $obj = Foo->new;

 my $data = $obj->data;

 # Dump out.
 p $data;

 # Output:
 # {
 #     foo   "example data"
 # }

=head1 DEPENDENCIES

L<Class::Utils>,
L<Error::Pure>.

=head1 SEE ALSO

=over

=item L<Data::Const::Set>

Abstract class for constant data sets built on this base API.

=back

=head1 REPOSITORY

L<https://github.com/michal-josef-spacek/Data-Const>

=head1 AUTHOR

Michal Josef Špaček L<mailto:skim@cpan.org>

L<http://skim.cz>

=head1 LICENSE AND COPYRIGHT

© 2025 Michal Josef Špaček

BSD 2-Clause License

=head1 VERSION

0.03

=cut
