package Tapper::Schema::ReportsDB::Result::ReportgroupArbitrary;
BEGIN {
  $Tapper::Schema::ReportsDB::Result::ReportgroupArbitrary::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::ReportsDB::Result::ReportgroupArbitrary::VERSION = '4.1.0';
}

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("reportgrouparbitrary");
__PACKAGE__->add_columns
    (
     "arbitrary_id",  { data_type => "VARCHAR", default_value => undef,  is_nullable => 0, size => 255,                     },
     "report_id",     { data_type => "INT",     default_value => undef,  is_nullable => 0, size => 11, is_foreign_key => 1, },
     "primaryreport", { data_type => "INT",     default_value => undef,  is_nullable => 1, size => 11,                      },
     "owner",         { data_type => "VARCHAR", default_value => undef,  is_nullable => 1, size => 255,                      },
    );

__PACKAGE__->set_primary_key(qw/arbitrary_id report_id/);

__PACKAGE__->belongs_to ( report => 'Tapper::Schema::ReportsDB::Result::Report', { 'foreign.id' => 'self.report_id' });

# -------------------- methods on results --------------------


sub groupreports {
        my ($self) = @_;

        my @report_ids;
        my $rg = $self->result_source->schema->resultset('ReportgroupArbitrary')->search({ arbitrary_id => $self->arbitrary_id });
        while (my $rg_entry = $rg->next) {
                push @report_ids, $rg_entry->report_id;
        }
        return $self->result_source->schema->resultset('Report')->search({ id => [ -or => [ @report_ids ] ] });
}


sub sqlt_deploy_hook
{
        my ($self, $sqlt_table) = @_;
        # $sqlt_table->add_index(name => 'reportgrouparbitrary_idx_report_id', fields => ['report_id']); # implicitely done(?)
}


1;

__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::Result::ReportgroupArbitrary

=head2 groupreports

Return all reports of this testrun report group.

=head2 sqlt_deploy_hook

Add useful indexes at deploy time.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

