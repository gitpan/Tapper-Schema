
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Tapper - Database schemas for Tapper",
  "AUTHOR" => "AMD OSRC Tapper Team <tapper\@amd64.org>",
  "BUILD_REQUIRES" => {
    "Scalar::Util" => 0,
    "Test::Deep" => 0,
    "Test::Fixture::DBIC::Schema" => 0,
    "Test::More" => "0.88"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Tapper-Schema",
  "EXE_FILES" => [],
  "LICENSE" => "open_source",
  "NAME" => "Tapper::Schema",
  "PREREQ_PM" => {
    "Class::C3" => 0,
    "Compress::Bzip2" => 0,
    "DBIx::Class" => 0,
    "DBIx::Class::Core" => 0,
    "DBIx::Class::InflateColumn::DateTime" => 0,
    "DBIx::Class::InflateColumn::Object::Enum" => 0,
    "DBIx::Class::ResultSet" => 0,
    "DBIx::Class::Schema" => 0,
    "DBIx::Class::TimeStamp" => 0,
    "Data::Dumper" => 0,
    "DateTime" => 0,
    "DateTime::Format::MySQL" => 0,
    "DateTime::Format::Pg" => 0,
    "DateTime::Format::SQLite" => 0,
    "MRO::Compat" => 0,
    "SQL::Translator" => "0.11006",
    "TAP::DOM" => 0,
    "Tapper::Config" => 0,
    "Tapper::TAP::Harness" => 0,
    "YAML::Syck" => 0,
    "common::sense" => 0,
    "parent" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "4.1.3",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



