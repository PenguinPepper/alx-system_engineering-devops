# puppet script to configur SSH client

$line_string = "Host *
	IdentityFile ~/.ssh/school
	PasswordAuthentication no"

file { '/etc/ssh/ssh_config':
ensure  => present,
path    => '/etc/ssh/ssh_config',
content => $line_string,
}
