$line_string = "Host *
	IdentityFile ~/.ssh/school
	PasswordAuthentication no"

file { '~/.ssh/config':
ensure  => present,
content => $line_string,
}
