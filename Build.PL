use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'NagiosCLI',
    license             => 'perl',
    dist_author         => q{Joe Topjian <joe@terrarum.net>},
    dist_version => "0.01",
    dist_abstract => "Nagios cli client",
    build_requires => {
        'Curses' => 0,
        'Curses::UI' => 0,
        'Curses::UI::Grid' => 0,
        'Nagios::Scrape' => 0,
        'Config::IniFiles' => 0,
    },
    add_to_cleanup      => [ 'NagiosCLI-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
