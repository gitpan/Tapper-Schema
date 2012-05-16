package Tapper::Schema::TestrunDB::ResultSet::Queue;
BEGIN {
  $Tapper::Schema::TestrunDB::ResultSet::Queue::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::ResultSet::Queue::VERSION = '4.0.1';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';
use Data::Dumper;


sub official_queuelist {
        my ($self) = @_;

        my %queues;
        while (my $q = $self->next) {
                next if not $q->active;
                $queues{$q->name} = $q;
        }
        return \%queues;
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::ResultSet::Queue

=head2 official_queuelist

Return hash of active queues.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

