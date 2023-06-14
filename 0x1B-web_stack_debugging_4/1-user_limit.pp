# scrip that changes user limit

$the_line = 'holberton hard nofile 5'

comment_line{'comment out a line':
ensure => commented,
path   => '/etc/security/limits.conf',
match  => $the_line,
}
