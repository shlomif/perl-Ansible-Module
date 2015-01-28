package Ansible::Module::Utils;

use 5.020;
use utf8;

use Exporter qw( import );

our @EXPORT = qw( BOOLEANS True False );

sub BOOLEANS ();
sub True ();
sub False ();

sub BOOLEANS () {
    return Ansible::Module::Booleans::Any->new();
}

sub True () {
    return Ansible::Module::Booleans::True->new();
}

sub False () {
    return Ansible::Module::Booleans::False->new();
}

sub getopt {
    shift if $_[0] eq __PACKAGE__;
    my ($args_ref) = @_;
    my @opts = @ARGV;
    my %rv;
    for my $opt (@opts) {
        ...
    }
    return \%rv;
}

1;
