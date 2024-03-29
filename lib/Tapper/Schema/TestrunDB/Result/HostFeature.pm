package Tapper::Schema::TestrunDB::Result::HostFeature;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::HostFeature::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::TestrunDB::Result::HostFeature::VERSION = '4.1.3';
}

use 5.010;
use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components(qw/InflateColumn::DateTime Core/);
__PACKAGE__->table("host_feature");
__PACKAGE__->add_columns
    (
     "id",         { data_type => "INT",       default_value => undef,                is_nullable => 0, size =>  11, is_auto_increment => 1, },
     "host_id",    { data_type => "INT",       default_value => undef,                is_nullable => 0,                                      },
     # can't call it key because that's a SQL keyword
     "entry",        { data_type => "VARCHAR",   default_value => undef,                is_nullable => 0, size => 255,                       },
     "value",      { data_type => "VARCHAR",   default_value => undef,                is_nullable => 0, size => 255,                         },
     "created_at", { data_type => "TIMESTAMP", default_value => \'CURRENT_TIMESTAMP', is_nullable => 1,                                      },
     "updated_at", { data_type => "DATETIME",  default_value => undef,                is_nullable => 1,                                      },

    );

__PACKAGE__->set_primary_key("id");

(my $basepkg = __PACKAGE__) =~ s/::\w+$//;

__PACKAGE__->belongs_to( host => "${basepkg}::Host", { 'foreign.id' => 'self.host_id'  });


1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::HostFeature

=head1 SYNOPSIS

=head1 NAME

Tapper::Schema::TestrunDB::Result::HostFeature - A ResultSet description

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
