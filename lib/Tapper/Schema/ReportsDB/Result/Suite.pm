package Tapper::Schema::ReportsDB::Result::Suite;
BEGIN {
  $Tapper::Schema::ReportsDB::Result::Suite::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::ReportsDB::Result::Suite::VERSION = '4.1.3';
}

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("suite");
__PACKAGE__->add_columns
    (
     "id",          { data_type => "INT",     default_value => undef, is_nullable => 0, size => 11, is_auto_increment => 1, },
     "name",        { data_type => "VARCHAR", default_value => undef, is_nullable => 0, size => 255,                        },
     "type",        { data_type => "VARCHAR", default_value => undef, is_nullable => 0, size => 255,                        },
     "description", { data_type => "TEXT",    default_value => undef, is_nullable => 0,                                     },
    );

__PACKAGE__->set_primary_key("id");

__PACKAGE__->has_many   ( reports => 'Tapper::Schema::ReportsDB::Result::Report', { 'foreign.suite_id'        => 'self.id' });



sub sqlt_deploy_hook
{
        my ($self, $sqlt_table) = @_;
        $sqlt_table->add_index(name => 'suite_idx_name', fields => ['name']);
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::Result::Suite

=head2 sqlt_deploy_hook

Add useful indexes at deploy time.

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut
