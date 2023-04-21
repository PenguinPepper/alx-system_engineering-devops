# script to configure nginx on new ubuntu machine
package {'nginx':
ensure => 'installed',
}

service {'nginx':
ensure => 'running',
enable => true,
}

$replace = "    location /redirect_me/ {
                return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
        }"

file { '/var/www/html/index.html':
ensure  => present,
path    => '/var/www/html/index.html',
content => 'Hello World!',
notify  => Service['nginx'],
}

file_line { 'redirect_me':
ensure => present,
path   => '/etc/nginx/sites-available/default',
after  => 'server_name _;',
line   => $replace,
notify => Service['nginx'],
}
