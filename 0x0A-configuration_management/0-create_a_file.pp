# file  will create a file called school on tmp directory
file { '/tmp/school':
ensure  => file,
owner   => 'www-data',
group   => 'www-data',
content => 'I love Puppet',
mode    => '0744',
}
