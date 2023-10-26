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

## CPAN Init

cpan?

./bin/cpan -j ~/localperl/.cpan/CPAN/Config.pm -s
