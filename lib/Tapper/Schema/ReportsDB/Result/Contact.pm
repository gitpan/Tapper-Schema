package Tapper::Schema::ReportsDB::Result::Contact;
BEGIN {
  $Tapper::Schema::ReportsDB::Result::Contact::AUTHORITY = 'cpan:TAPPER';
}
{
  $Tapper::Schema::ReportsDB::Result::Contact::VERSION = '4.1.3';
}

use strict;
use warnings;

use parent 'DBIx::Class';
use YAML::Syck;

__PACKAGE__->load_components(qw/InflateColumn::DateTime Core/);
__PACKAGE__->table("contact");
__PACKAGE__->add_columns
    ( "id",        { data_type => "INT",       default_value => undef,                is_nullable => 0, size => 11, is_auto_increment => 1, },
     "owner_id",   { data_type => "INT",       default_value => undef,                is_nullable => 0, size => 11, is_foreign_key    => 1, extra => { renamed_from => 'user_id'  }, },
     "address",    { data_type => "VARCHAR",   default_value => undef,                is_nullable => 0, size => 255, },
     "protocol",   { data_type => "VARCHAR",   default_value => undef,                is_nullable => 0, size => 255, },
     "created_at", { data_type => "TIMESTAMP", default_value => \'CURRENT_TIMESTAMP', is_nullable => 1, },
     "updated_at", { data_type => "DATETIME",  default_value => undef,                is_nullable => 1, },
    );


(my $basepkg = __PACKAGE__) =~ s/::\w+$//;

__PACKAGE__->set_primary_key("id");
__PACKAGE__->belongs_to( owner => "${basepkg}::Owner", { 'foreign.id' => 'self.owner_id' });


1;

__END__

=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::ReportsDB::Result::Contact

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::ReportsDB;

=head1 NAME

Tapper::Schema::ReportsDB::Result::Contact - Keep contact information for owners

=head1 AUTHOR

AMD OSRC Tapper Team, C<< <tapper at amd64.org> >>

=head1 BUGS

None.

=head1 COPYRIGHT & LICENSE

Copyright 2008-2012 AMD OSRC Tapper Team, all rights reserved.

This program is released under the following license: freebsd

=head1 AUTHOR

AMD OSRC Tapper Team <tapper@amd64.org>

=head1 COPYRIGHT AND LICENSE

This software is Copyright (c) 2013 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut
