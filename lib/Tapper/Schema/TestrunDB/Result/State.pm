package Tapper::Schema::TestrunDB::Result::State;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::State::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::TestrunDB::Result::State::VERSION = '4.1.3';
}

use strict;
use warnings;

use parent 'DBIx::Class';
use YAML::Syck;

__PACKAGE__->load_components(qw/InflateColumn::DateTime InflateColumn::Object::Enum Core/);
__PACKAGE__->table("state");
__PACKAGE__->add_columns
    ( "id",        { data_type => "INT",       default_value => undef,                is_nullable => 0, size => 11, is_auto_increment => 1, },
     "testrun_id", { data_type => "INT",       default_value => undef,                is_nullable => 0, size => 11, is_foreign_key    => 1, },
     "state",      { data_type => "VARCHAR",   default_value => undef,                is_nullable => 1, size => 65000, },
     "created_at", { data_type => "TIMESTAMP", default_value => \'CURRENT_TIMESTAMP', is_nullable => 1, },
     "updated_at", { data_type => "DATETIME",  default_value => undef,                is_nullable => 1, },
    );
__PACKAGE__->inflate_column( state => {
                                       inflate => sub { Load(shift) },
                                       deflate => sub { Dump(shift)},
                                      });


(my $basepkg = __PACKAGE__) =~ s/::\w+$//;

__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint( unique_testrun_id => [ qw/testrun_id/ ], );
__PACKAGE__->belongs_to( testrun => "${basepkg}::Testrun", { 'foreign.id' => 'self.testrun_id' });


1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::State

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::TestrunDB;

=head1 NAME

Tapper::Schema::TestrunDB::Result::State - A ResultSet description

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

This software is Copyright (c) 2013 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut
