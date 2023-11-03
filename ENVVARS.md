# Perl

## Compile

./Configure -des -Dprefix=$HOME/localperl

## Env Vars

export PERL5LIB="~/localperl/lib"
%ENV:
    PERL5LIB="~/localperl/lib"
  @INC:
    ~/localperl/lib
    /Users/robertg/localperl/lib/site_perl/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/site_perl/5.38.0
    /Users/robertg/localperl/lib/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/5.38.0

unset PERL5LIB
  @INC:
    /Users/robertg/localperl/lib/site_perl/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/site_perl/5.38.0
    /Users/robertg/localperl/lib/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/5.38.0

export PERL="/Users/robertg/localperl/bin/perl"
  %ENV:
    PERL="/Users/robertg/localperl/bin/perl"
  @INC:
    /Users/robertg/localperl/lib/site_perl/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/site_perl/5.38.0
    /Users/robertg/localperl/lib/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/5.38.0

export PERL5OPT="-I${HOME}/perl/lib/perl5 -I${HOME}/perl/lib/perl5/site_perl"
  %ENV:
    PERL5OPT="-I/Users/robertg/perl/lib/perl5 -I/Users/robertg/perl/lib/perl5/site_perl"
  @INC:
    /Users/robertg/perl/lib/perl5/site_perl
    /Users/robertg/perl/lib/perl5
    /Users/robertg/localperl/lib/site_perl/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/site_perl/5.38.0
    /Users/robertg/localperl/lib/5.38.0/darwin-2level
    /Users/robertg/localperl/lib/5.38.0

## CPAN Init

https://metacpan.org/pod/CPAN::FirstTime

./bin/cpan -j ~/.cpan/CPAN/MyConfig.pm -s
