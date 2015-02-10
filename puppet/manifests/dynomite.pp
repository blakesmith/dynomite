Exec {
  path => ["/bin:/usr/bin:/usr/local/bin:/usr/sbin:/sbin"]
}

node default, "dynomite.blakesmith.me" {
  exec { "apt-update":
    command => "/usr/bin/apt-get update"
  }

  Exec["apt-update"] -> Package <| |>

  package { ["build-essential", "automake", "libtool", "gdb", "pkg-config", "valgrind"]:
    ensure => installed
  }

  package { "clang-3.4":
    ensure => installed
  }

  package { ["libssl-dev"]:
    ensure => installed
  }

  class { "redis::server":
    listen_address => "0.0.0.0"
  }
}
