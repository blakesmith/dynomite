class redis::server(
  $listen_address = "0.0.0.0"
){
  package {"redis-server":
    ensure => installed
  } ->

  file { "/etc/redis/redis.conf":
    owner => root,
    group => root,
    mode => 0644,
    content => template("redis/redis.conf"),
  }
}
