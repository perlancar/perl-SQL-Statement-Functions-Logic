#!perl

use 5.010;
use strict;
use warnings;

use Test::More 0.98;

sub get_func {
    no strict 'refs';

    my $name = shift;
    require "SQL/Statement/Function/ByName/$name.pm";
    \&{"SQL::Statement::Function::ByName::$name\::SQL_FUNCTION_$name"};
}

subtest MINSTR => sub {
    my $func = get_func("MINSTR");
    is_deeply($func->(undef, undef, 1, 10, 2, 3), 1);
};

subtest MAXSTR => sub {
    my $func = get_func("MAXSTR");
    is_deeply($func->(undef, undef, 1, 10, 2, 3), 3);
};

subtest MINNUM => sub {
    my $func = get_func("MINSTR");
    is_deeply($func->(undef, undef, 1, 10, 2, 3), 1);
};

subtest MAXNUM => sub {
    my $func = get_func("MAXNUM");
    is_deeply($func->(undef, undef, 1, 10, 2, 3), 10);
};


done_testing;
