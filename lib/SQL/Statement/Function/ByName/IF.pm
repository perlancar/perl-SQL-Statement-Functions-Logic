package SQL::Statement::Function::ByName::IF;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub SQL_FUNCTION_IF {
    $_[2] ? $_[3] : $_[4];
}

1;
# ABSTRACT: SQL function to return a value or the other depending on condition

=for Pod::Coverage .+

=head1 SYNOPSIS

In your SQL:

 SELECT IF(cond, a, b) FROM table


=head1 DESCRIPTION

Caveat: the notion of true and false follows Perl's notion.

Caveat: due to the current limitation of SQL::Parser, this function is not as
useful as it should be, e.g. SQL::Parser cannot parse this correctly:

 SELECT IF(col > 10, a, b) FROM table
