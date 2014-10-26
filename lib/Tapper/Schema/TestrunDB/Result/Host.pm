package Tapper::Schema::TestrunDB::Result::Host;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::Host::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::TestrunDB::Result::Host::VERSION = '4.1.3';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components(qw/InflateColumn::DateTime Core/);
__PACKAGE__->table("host");
__PACKAGE__->add_columns
    (
     "id",         { data_type => "INT",       default_value => undef,                is_nullable => 0, size => 11,    is_auto_increment => 1, },
     "name",       { data_type => "VARCHAR",   default_value => "",                   is_nullable => 1, size => 255,                           },
     "comment",    { data_type => "VARCHAR",   default_value => "",                   is_nullable => 1, size => 255,                           },
     "free",       { data_type => "TINYINT",   default_value => "0",                  is_nullable => 1,                                        },
     "active",     { data_type => "TINYINT",   default_value => "0",                  is_nullable => 1,                                        },
     "is_deleted", { data_type => "TINYINT",   default_value => "0",                  is_nullable => 1,                                        }, # deleted hosts need to be kept in db to show old testruns correctly
     "created_at", { data_type => "TIMESTAMP", default_value => \'CURRENT_TIMESTAMP', is_nullable => 1,                                        }, # '
     "updated_at", { data_type => "DATETIME",  default_value => undef,                is_nullable => 1,                                        },

    );

__PACKAGE__->set_primary_key("id");

(my $basepkg = __PACKAGE__) =~ s/::\w+$//;
__PACKAGE__->add_unique_constraint( constraint_name => [ qw/name/ ] );
__PACKAGE__->has_many ( testrunschedulings => "${basepkg}::TestrunScheduling", { 'foreign.host_id' => 'self.id' });
__PACKAGE__->has_many ( queuehosts         => "${basepkg}::QueueHost",         { 'foreign.host_id' => 'self.id' });
__PACKAGE__->has_many ( denied_from_queue  => "${basepkg}::DeniedHost",        { 'foreign.host_id' => 'self.id' });
__PACKAGE__->has_many ( features           => "${basepkg}::HostFeature",       { 'foreign.host_id' => 'self.id' });


1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::Host

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::TestrunDB;

=head1 NAME

Tapper::Schema::TestrunDB::Testrun - A ResultSet description

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
