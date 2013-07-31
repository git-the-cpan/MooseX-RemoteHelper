use strict;
use warnings;

# This test was generated via Dist::Zilla::Plugin::Test::Compile 2.011

use Test::More 0.88;



use Capture::Tiny qw{ capture };

my @module_files = qw(
lib/MooseX/RemoteHelper.pm
lib/MooseX/RemoteHelper/CompositeSerialization.pm
lib/MooseX/RemoteHelper/Meta/Trait/Attribute.pm
lib/MooseX/RemoteHelper/Meta/Trait/Class.pm
lib/MooseX/RemoteHelper/Meta/Trait/Role.pm
lib/MooseX/RemoteHelper/Meta/Trait/Role/ApplicationToClass.pm
lib/MooseX/RemoteHelper/Meta/Trait/Role/ApplicationToRole.pm
lib/MooseX/RemoteHelper/Meta/Trait/Role/Composite.pm
lib/MooseX/RemoteHelper/Types.pm
lib/MooseY/RemoteHelper/MessagePart.pm
lib/MooseY/RemoteHelper/Role/Client.pm
);

my @scripts = qw(

);

# no fake home requested

my @warnings;
for my $lib (@module_files)
{
    my ($stdout, $stderr, $exit) = capture {
        system($^X, '-Mblib', '-e', qq{require qq[$lib]});
    };
    is($?, 0, "$lib loaded ok");
    warn $stderr if $stderr;
    push @warnings, $stderr if $stderr;
}

is(scalar(@warnings), 0, 'no warnings found') if $ENV{AUTHOR_TESTING};





done_testing;
