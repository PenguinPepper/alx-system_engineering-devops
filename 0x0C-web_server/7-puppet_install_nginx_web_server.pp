# script to configure nginx on new ubuntu machine

$replace = "	location /redirect_me/ {
		return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
	}"

package {'nginx':
ensure => installed,
}

file { '/var/www/html/index.html':
ensure  => present,
path    => '/var/www/html/index.html',
content => 'Hello World!',
}

exec { 'redirect me':
group   => 'root',
command => 'sed -i "47s/^$/$replace/" /etc/nginx/sites-available/default',
path    => '/etc/nginx/sites-available/default',
}
