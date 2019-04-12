use strict;
use warnings;
use ExtUtils::MakeMaker;

my %prereqs = qw(
    Encode                          0
    Encode::Locale                  1.05
    File::Basename                  0
    File::Spec                      0
    Getopt::Long                    0
    Moo                             1.003001
    POSIX                           0
    Scalar::Util                    0
    Thread::Semaphore               0
    IO::Scalar                      0
    threads                         1.96
    Time::HiRes                     0
    Unicode::Normalize              0
);
my %recommends = qw(
    Class::XSAccessor               0
    Test::Harness                   0
    Thread::Queue                   0
    threads::shared                 0
);

my $sudo    = grep { $_ eq '--sudo' } @ARGV;
my $gui     = grep { $_ eq '--gui' } @ARGV;
my $xs_only = grep { $_ eq '--xs' }  @ARGV;
if ($gui) {
    %prereqs = qw(
    Class::Accessor                 0
    Wx                              0.9918
    Socket                          2.016
    );
    %recommends = qw(
    Growl::GNTP                     0.15
    Wx::GLCanvas                    0
    OpenGL                          0
    LWP::UserAgent                  0
    Net::Bonjour                    0
    );
    if ($^O eq 'MSWin32') {
        $recommends{"Win32::TieRegistry"} = 0;
        
        # we need an up-to-date Win32::API because older aren't thread-safe (GH #2517)
        $prereqs{'Win32::API'} = 0.79;
    }
} elsif ($xs_only) {
    %prereqs = %recommends = ();
}

sub get_version {
  my $file = 'xs/src/libslic3r/libslic3r.h';
  open my $fh, '<', $file;
  my ($version) = grep /VERSION/, <$fh>;
  $version =~ s/.*"(.*?)".*/$1/;
  $version;
}

WriteMakefile(
  NAME => 'Slic3r',
  AUTHOR => q{Alessandro Ranellucci <alessandro@pintle.it>},
  MIN_PERL_VERSION => '5.012',
  VERSION => get_version(),
  ABSTRACT => 'Perl interface to Slic3r library',
  PREREQ_PM => \%prereqs,
  CONFIGURE_REQUIRES => {
    'Devel::CheckLib' => 0,
    'ExtUtils::CppGuess' => '0.19',
    'ExtUtils::MakeMaker' => 6.80,
    'ExtUtils::MakeMaker' => '6.64', # TEST_REQUIRES
  },
  BUILD_REQUIRES => {
    'ExtUtils::ParseXS' => 3.35,
    'ExtUtils::Typemaps' => 1.00,
    'ExtUtils::Typemaps::Default' => 1.05,
    'ExtUtils::XSpp' => 0.18,
  },
  TEST_REQUIRES => {
    'Test::More' => '0',
  },
  META_MERGE => {
    "meta-spec" => { version => 2 },
    resources => {
      x_IRC => 'irc://irc.freenode.net/#slic3r',
      repository => {
        type => 'git',
        url => 'git@github.com:slic3r/Slic3r.git',
        web => 'https://github.com/slic3r/Slic3r',
      },
      bugtracker => {
        web => 'https://github.com/slic3r/Slic3r/issues',
      },
    },
    prereqs => {
      runtime => {
        recommends => \%recommends,
      },
    },
  },
);
