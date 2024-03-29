package Tapper::Schema::ReportsDB::ResultSet::ReportgroupTestrun;
BEGIN {
  $Tapper::Schema::ReportsDB::ResultSet::ReportgroupTestrun::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::ReportsDB::ResultSet::ReportgroupTestrun::VERSION = '4.1.3';
}

use strict;
use warnings;

use parent 'DBIx::Class::ResultSet';


sub groupreports {
        my ($self) = @_;

        $self->search({}, {rows => 1})->first->groupreports;
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::ResultSet::ReportgroupTestrun

=head2 groupreports

Return the group of all reports belonging to the first testrun of
current result set.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut
