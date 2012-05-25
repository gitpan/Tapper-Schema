package Tapper::Schema::TestrunDB::ResultSet::Host;
BEGIN {
  $Tapper::Schema::TestrunDB::ResultSet::Host::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::ResultSet::Host::VERSION = '4.0.2';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';
use Data::Dumper;


sub free_hosts { shift->search({ free => 1, active => 1 }) }

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::ResultSet::Host

=head2 free_hosts

Return hosts that are active and free.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

