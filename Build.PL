
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'File::HomeDir returning Path::Class objects',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::More' => '0.88',
                                             'Scalar::Util' => '0',
                                             'English' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601',
                                             'Carp' => '0'
                                           },
                       'dist_name' => 'File-HomeDir-PathClass',
                       'dist_author' => [
                                          'Jerome Quelin'
                                        ],
                       'module_name' => 'File::HomeDir::PathClass',
                       'requires' => {
                                       'perl' => '5.010',
                                       'File::HomeDir' => '0',
                                       'Sub::Exporter' => '0',
                                       'Path::Class' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'Module::Build' => '0.3601'
                                               },
                       'dist_version' => '1.101610'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
