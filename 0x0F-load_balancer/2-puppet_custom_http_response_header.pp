# script that configures ngnix to have a custom header
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

$header = "add_header X-Served-By '$hostname';"

file_line {'add_header':
ensure => present,
path   => '/etc/nginx/sites-available/default',
after  => 'listen [::]:80 default_server;',
line   => $header,
notify => Service['nginx'],
}
