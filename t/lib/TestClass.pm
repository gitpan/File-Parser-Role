package TestClass;

use strict;
use warnings;

use Moo;
use feature 'say';

has blob => ( is => "rw" );

sub parse {

    my $self = shift;
    local $/;
    my $fh = $self->fh;

    $self->blob( <$fh> );

}

with "File::Parser::Role";

1;
