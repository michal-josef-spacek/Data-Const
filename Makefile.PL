use lib '.';
use strict;
use warnings;

use inc::Module::Install;

# Definition.
abstract 'Constant data abstract class.';
author 'Michal Josef Spacek <skim@cpan.org>';
author_requires 'English' => 0;
author_requires 'File::Object' => 0.05;
author_requires 'Test::More' => 0;
author_requires 'Test::NoWarnings' => 0;
author_requires 'Test::Pod' => 0;
author_requires 'Test::Pod::Coverage' => 0;
license 'bsd';
name 'Data-Const';
perl_version 5.006002;
readme_from 'Const.pm';
recursive_author_tests('xt');
requires 'Class::Utils' => 0.03;
requires 'Error::Pure' => 0;
resources 'bugtracker' => 'https://github.com/michal-josef-spacek/Data-Const/issues';
resources 'homepage' => 'https://github.com/michal-josef-spacek/Data-Const';
resources 'repository' => 'git://github.com/michal-josef-spacek/Data-Const';
test_requires 'Test::More' => 0;
test_requires 'Test::NoWarnings' => 0;
tests_recursive;
version '0.02';

# Run.
WriteAll();
