
use strict;
use warnings;

use 5.010001;

use ExtUtils::MakeMaker 6.48;



my %WriteMakefileArgs = (
  "ABSTRACT" => "support for various ways to sign AWS requests",
  "AUTHOR" => "Tom Molesworth <cpan\@entitymodel.com>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.48"
  },
  "DISTNAME" => "WebService-Amazon-Signature",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "WebService::Amazon::Signature",
  "PREREQ_PM" => {
    "Digest::HMAC" => 0,
    "Digest::SHA" => 0,
    "HTTP::StreamParser" => "0.100",
    "List::UtilsBy" => 0,
    "Mixin::Event::Dispatch" => "1.000",
    "POSIX" => 0,
    "POSIX::2008" => 0,
    "URI" => 0,
    "URI::Escape" => 0,
    "URI::QueryParam" => 0,
    "parent" => 0
  },
  "TEST_REQUIRES" => {
    "Dir::Self" => 0,
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Path::Tiny" => 0,
    "Test::CheckDeps" => "0.010",
    "Test::Fatal" => "0.010",
    "Test::More" => "0.98"
  },
  "VERSION" => "0.001",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Digest::HMAC" => 0,
  "Digest::SHA" => 0,
  "Dir::Self" => 0,
  "File::Spec" => 0,
  "HTTP::StreamParser" => "0.100",
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "List::UtilsBy" => 0,
  "Mixin::Event::Dispatch" => "1.000",
  "POSIX" => 0,
  "POSIX::2008" => 0,
  "Path::Tiny" => 0,
  "Test::CheckDeps" => "0.010",
  "Test::Fatal" => "0.010",
  "Test::More" => "0.98",
  "URI" => 0,
  "URI::Escape" => 0,
  "URI::QueryParam" => 0,
  "parent" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



