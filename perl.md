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

## CPAN Init

https://metacpan.org/pod/CPAN::FirstTime

./bin/cpan -j ~/localperl/.cpan/CPAN/Config.pm -s

## Install `mysql_config`

```
request-tracker :: ~ % sudo apt-cache policy libmysqlclient-dev
libmysqlclient-dev:
  Installed: 8.0.35-1ubuntu22.04
  Candidate: 8.0.35-1ubuntu22.04
  Version table:
 *** 8.0.35-1ubuntu22.04 500
        500 http://repo.mysql.com/apt/ubuntu jammy/mysql-8.0 amd64 Packages
        100 /var/lib/dpkg/status
     8.0.34-0ubuntu0.22.04.1 500
        500 http://za.archive.ubuntu.com/ubuntu jammy-updates/main amd64
Packages
     8.0.28-0ubuntu4 500
        500 http://za.archive.ubuntu.com/ubuntu jammy/main amd64 Packages

request-tracker :: ~ % sudo apt-get install libmysqlclient-dev
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
libmysqlclient-dev is already the newest version (8.0.35-1ubuntu22.04).
0 upgraded, 0 newly installed, 0 to remove and 160 not upgraded.
```

## CGI-Emulate-PSGI Fails

Unset `proxy` vars.

```
t/06_httproxy.t ........ 1/?
#   Failed test at t/06_httproxy.t line 9.
# Looks like you failed 1 test of 2.
t/06_httproxy.t ........ Dubious, test returned 1 (wstat 256, 0x100)
Failed 1/2 subtests
t/author-pod-syntax.t .. skipped: these tests are for testing by the author
Test Summary Report
-------------------
t/06_httproxy.t      (Wstat: 256 (exited 1) Tests: 2 Failed: 1)
  Failed test:  1
  Non-zero exit status: 1
Files=8, Tests=41,  0 wallclock secs ( 0.02 usr  0.01 sys +  0.35 cusr  0.06
csys =  0.44 CPU)
Result: FAIL
Failed 1/8 test programs. 1/41 subtests failed.
make[1]: *** [Makefile:861: test_dynamic] Error 255
make[1]: Leaving directory '/home/robertg/.cpan/build/CGI-Emulate-PSGI-0.23-10'
  TOKUHIROM/CGI-Emulate-PSGI-0.23.tar.gz
  /usr/bin/make test -- NOT OK
//hint// to see the cpan-testers results for installing this module, try:
  reports TOKUHIROM/CGI-Emulate-PSGI-0.23.tar.gz
```

## RT

RT_FIX_DEPS_CMD="SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt /home/robertg/localperl/bin/cpan -j /home/robertg/.cpan/CPAN/MyConfig.pm" make fixdeps
