package Tapper::Schema::ReportsDB::Result::ReportgroupTestrun;
BEGIN {
  $Tapper::Schema::ReportsDB::Result::ReportgroupTestrun::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::ReportsDB::Result::ReportgroupTestrun::VERSION = '4.0.2';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("reportgrouptestrun");
__PACKAGE__->add_columns
    (
     "testrun_id",    { data_type => "INT",     default_value => undef,  is_nullable => 0, size => 11, is_foreign_key => 1, },
     "report_id",     { data_type => "INT",     default_value => undef,  is_nullable => 0, size => 11, is_foreign_key => 1, },
     "primaryreport", { data_type => "INT",     default_value => undef,  is_nullable => 1, size => 11,                      },
     "owner",         { data_type => "VARCHAR", default_value => undef,  is_nullable => 1, size => 255,                      },
    );

__PACKAGE__->set_primary_key(qw/testrun_id report_id/);

__PACKAGE__->might_have ( reportgrouptestrunstats => 'Tapper::Schema::ReportsDB::Result::ReportgroupTestrunStats', { 'foreign.testrun_id' => 'self.testrun_id' }, { is_foreign_key_constraint => 0 } );
__PACKAGE__->belongs_to ( report => 'Tapper::Schema::ReportsDB::Result::Report', { 'foreign.id' => 'self.report_id' } );

# -------------------- methods on results --------------------


sub groupreports {
        my ($self) = @_;

        my @report_ids;
        my $rg = $self->result_source->schema->resultset('ReportgroupTestrun')->search({ testrun_id => $self->testrun_id });
        while (my $rg_entry = $rg->next) {
                push @report_ids, $rg_entry->report_id;
        }
        return $self->result_source->schema->resultset('Report')->search({ id => [ -or => [ @report_ids ] ] });
}

1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::Result::ReportgroupTestrun

=head2 groupreports

Return group of all reports belonging to this same testrun.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

