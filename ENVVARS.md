# Perl

## Compile

./Configure -des -Dprefix=$HOME/localperl

perlbrew...

## Env Vars

export PERL5LIB="~/localperl/lib"

export PERL="/Users/robertg/localperl/bin/perl"

export PERL5OPT="-I${HOME}/perl/lib/perl5 -I${HOME}/perl/lib/perl5/site_perl"

## CPAN Init

https://metacpan.org/pod/CPAN::FirstTime

./bin/cpan -j ~/.cpan/CPAN/MyConfig.pm -s
