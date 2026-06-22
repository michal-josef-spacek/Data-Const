#!/usr/bin/env perl

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