package SQL::Statement::Functions::Logic;

# DATE
# VERSION

1;
# ABSTRACT: Logic functions

=head1 DESCRIPTION

This distribution contains several SQL functions to be used with
L<SQL::Statement>:

 IF()

To use a function from Perl script:

 require SQL::Statement::Function::ByName::IF;
 $dbh->do(qq{CREATE FUNCTION IF NAME "SQL::Statement::Function::ByName::MAXNUM::SQL_FUNCTION_IF"});

To use a function from L<fsql>:

 % fsql -F IF --add-csv path/to/sometable.csv "SELECT IF(a > b,c,d) FROM sometable ..."


=head1 SEE ALSO

L<SQL::Statement>

L<App::fsql>
