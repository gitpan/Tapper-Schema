package Tapper::Schema::TestrunDB::Result::PrePrecondition;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::PrePrecondition::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::Result::PrePrecondition::VERSION = '4.0.1';
}

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("pre_precondition");
__PACKAGE__->add_columns
    (
     "parent_precondition_id", { data_type => "INT",      default_value => undef, is_nullable => 0, size => 11, is_foreign_key => 1, },
     "child_precondition_id",  { data_type => "INT",      default_value => undef, is_nullable => 0, size => 11, is_foreign_key => 1, },
     "succession",             { data_type => "INT",      default_value => undef, is_nullable => 0, size => 10,                      },
    );

__PACKAGE__->set_primary_key(qw/parent_precondition_id child_precondition_id/);

__PACKAGE__->belongs_to( parent => 'Tapper::Schema::TestrunDB::Result::Precondition', { 'foreign.id' => 'self.parent_precondition_id' });
__PACKAGE__->belongs_to( child  => 'Tapper::Schema::TestrunDB::Result::Precondition', { 'foreign.id' => 'self.child_precondition_id'  });

1;


__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::PrePrecondition

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

