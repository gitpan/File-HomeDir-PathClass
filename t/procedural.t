#!perl
# 
# This file is part of File-HomeDir-PathClass
# 
# This software is copyright (c) 2010 by Jerome Quelin.
# 
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
# 

use 5.010;
use strict;
use warnings;

use File::HomeDir ();
use File::HomeDir::PathClass '-all';
use Test::More;

my @subs = qw{ my_home my_desktop my_documents my_music };
plan tests => scalar(@subs) * 2;

foreach my $sub ( @subs ) {
    no strict 'refs';
    my $dir   = $sub->();
    my $fhdir = *{"File::HomeDir::$sub"}->();
    isa_ok( $dir, 'Path::Class::Dir', "$sub is wrapped" );
    is( $dir->stringify, $fhdir, "$sub is correctly wrapped" );
}
