package Tapper::Schema::ReportsDB::Result::Owner;
BEGIN {
  $Tapper::Schema::ReportsDB::Result::Owner::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::ReportsDB::Result::Owner::VERSION = '4.1.3';
}

use strict;
use warnings;

use parent 'DBIx::Class';

__PACKAGE__->load_components(qw(Core));
__PACKAGE__->table("owner");
__PACKAGE__->add_columns
    (
     "id",       { data_type => "INT",     default_value => undef, is_nullable => 0, size => 11, is_auto_increment => 1, },
     "name",     { data_type => "VARCHAR", default_value => undef, is_nullable => 0, size => 255,                        },
     "login",    { data_type => "VARCHAR", default_value => undef, is_nullable => 0, size => 255,                        },
     "password", { data_type => "VARCHAR", default_value => undef, is_nullable => 1, size => 255,                        },
    );

(my $basepkg = __PACKAGE__) =~ s/::\w+$//;

__PACKAGE__->set_primary_key("id");
__PACKAGE__->add_unique_constraint( unique_login => [ qw/login/ ], );
__PACKAGE__->has_many( contacts => "${basepkg}::Contact", { 'foreign.owner_id' => 'self.id' });
__PACKAGE__->has_many( notifications => "${basepkg}::Notification", { 'foreign.owner_id' => 'self.id' });

1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::Result::Owner

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::ReportsDB;

=head1 NAME

Tapper::Schema::ReportsDB::Result::Owner - A ResultSet description

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
