package Tapper::Schema::TestrunDB::Result::TestrunRequestedFeature;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::TestrunRequestedFeature::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::Result::TestrunRequestedFeature::VERSION = '4.1.0';
}

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("testrun_requested_feature");
__PACKAGE__->add_columns
    (
     "id",              { data_type => "INT",     default_value => undef, is_nullable => 0, size => 11, is_auto_increment => 1, },
     "testrun_id",      { data_type => "INT",     default_value => undef, is_nullable => 0, size => 11, is_foreign_key    => 1, },
     "feature",         { data_type => "VARCHAR", default_value => "",    is_nullable => 1, size => 255,                        },
    );

__PACKAGE__->set_primary_key(qw/id/);

__PACKAGE__->belongs_to( testrunscheduling => 'Tapper::Schema::TestrunDB::Result::Testrun', { 'foreign.id' => 'self.testrun_id' });

1;


__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::TestrunRequestedFeature

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::TestrunDB;

=head1 NAME

Tapper::Schema::TestrunDB::Result::PrePrecondition - A ResultSet description

=head1 AUTHOR

AMD OSRC Tapper Team, C<< <tapper at amd64.org> >>

=head1 BUGS

None.

=head1 COPYRIGHT & LICENSE

Copyright 2008-2011 AMD OSRC Tapper Team, all rights reserved.

This program is released under the following license: freebsd

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

