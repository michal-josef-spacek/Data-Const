#!/usr/bin/env perl

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