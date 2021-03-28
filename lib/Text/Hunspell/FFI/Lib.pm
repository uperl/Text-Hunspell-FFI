package Text::Hunspell::FFI::Lib;

use strict;
use warnings;

# VERSION

sub _libs
{
  my @libs = eval {
    require Alien::Hunspell;
    Alien::Hunspell->dynamic_libs;
  };

  @libs = eval {
    require FFI::CheckLib;
    FFI::CheckLib::find_lib(
      lib => "*",
      verify => sub { $_[0] =~ /hunspell/ },
      symbol => "Hunspell_create"
    );
  } unless(@libs);

  @libs;
}

1;
