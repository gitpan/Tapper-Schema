package Tapper::Schema::TestrunDB::Result::ScenarioElement;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::ScenarioElement::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::TestrunDB::Result::ScenarioElement::VERSION = '4.1.3';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components("InflateColumn::Object::Enum", "Core");
__PACKAGE__->table("scenario_element");
__PACKAGE__->add_columns
    (
     "id",          { data_type => "INT", default_value => undef, is_nullable => 0, size => 11,  is_auto_increment => 1, },
     "testrun_id",  { data_type => "INT", default_value => undef, is_nullable => 0, size => 11,  is_foreign_key => 1,    },
     "scenario_id", { data_type => "INT", default_value => undef, is_nullable => 0, size => 11,  is_foreign_key => 1,    },
     "is_fitted",   { data_type => "INT", default_value => 0,     is_nullable => 0, size => 1,                           },
    );

__PACKAGE__->set_primary_key(qw/id/);

(my $basepkg = __PACKAGE__) =~ s/::\w+$//;

__PACKAGE__->belongs_to( testrun       => "${basepkg}::Testrun",         { 'foreign.id'  => 'self.testrun_id'            });
__PACKAGE__->belongs_to( scenario      => "${basepkg}::Scenario",        { 'foreign.id'  => 'self.scenario_id'           });
__PACKAGE__->has_many  ( peer_elements => "${basepkg}::ScenarioElement", { 'foreign.scenario_id'   => 'self.scenario_id' });


sub peers_need_fitting
{
        my ($self) = @_;
        return $self->peer_elements->search({is_fitted => { '!=' => 1,}})->count;
}

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::ScenarioElement

=head2 peers_need_fitting

Count how many elements of this scenario do not have is_fitted already
set. This count may include $self.

@return int - number of unfitted elements in same scenario

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut
