package Tapper::Schema::TestrunDB::ResultSet::TestrunScheduling;
BEGIN {
  $Tapper::Schema::TestrunDB::ResultSet::TestrunScheduling::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::ResultSet::TestrunScheduling::VERSION = '4.0.2';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';


sub non_scheduled_jobs
{
        shift->search({ status => "schedule" });
}


sub max_priority_seq {
        my ($self) = @_;

        my $job_with_max_seq = $self->result_source->schema->resultset('TestrunScheduling')->search
          (
           { prioqueue_seq => { '>', 0 } },
           {
            select => [ { max => 'prioqueue_seq' } ],
            as     => [ 'max_seq' ], }
          )->first;
        return $job_with_max_seq->get_column('max_seq') if $job_with_max_seq and $job_with_max_seq->get_column('max_seq');
        return 0;
}


sub running_jobs
{
        shift->search({ status => "running" });
}


sub running {
        shift->search({ status => 'running' });
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::ResultSet::TestrunScheduling

=head2 non_scheduled_jobs

Return due testruns.

=head2 max_priority_seq

Search for queue with highhest C<max_seq>.

=head2 running_jobs

Return all currently running testruns.

=head2 running

Get all running jobs.

@return __PACKAGE__ object

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

