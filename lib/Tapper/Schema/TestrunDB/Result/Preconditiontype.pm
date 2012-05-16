package Tapper::Schema::TestrunDB::Result::Preconditiontype;
BEGIN {
  $Tapper::Schema::TestrunDB::Result::Preconditiontype::AUTHORITY = 'cpan:AMD';
}
{
  $Tapper::Schema::TestrunDB::Result::Preconditiontype::VERSION = '4.0.1';
}

use strict;
use warnings;

our %preconditiontype_description =
    (
     package      => 'a package, might be a kernel, eg. .tgz, .rpm, ...',
     image        => 'a complete os image, .tgz, .iso, ...',
     subdir       => 'a subdir that can just be copied/rsynced',
     xen          => 'a setup description for a Xen based host+guests',
     kvm          => 'a setup description for a KVM based host+guests',
     dist_xen     => 'Xen environment of a particular distribution',
     dist_kvm     => 'KVM environment of a particular distribution',
     distribution => 'a particular whole distribution',
     description  => 'just a description, no actual file and not a particular other type. can be used for meta packges or dependency trees',
    );

use parent 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("preconditiontype");
__PACKAGE__->add_columns
    (
     "name",        { data_type => "VARCHAR",  default_value => undef, is_nullable => 0, size => 20,     },
     "description", { data_type => "TEXT",     default_value => "",    is_nullable => 0,                 },
    );
__PACKAGE__->set_primary_key("name");


1;


__END__
=pod

=encoding utf-8

=head1 NAME

Tapper::Schema::TestrunDB::Result::Preconditiontype

=head1 SYNOPSIS

Abstraction for the database table.

 use Tapper::Schema::TestrunDB;

=head1 NAME

Tapper::Schema::TestsDB::Result::Preconditiontype - A Result description

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

This software is Copyright (c) 2012 by Advanced Micro Devices, Inc..

This is free software, licensed under:

  The (two-clause) FreeBSD License

=cut

