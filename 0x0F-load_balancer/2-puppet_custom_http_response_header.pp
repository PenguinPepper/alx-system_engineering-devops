# script that configures ngnix to have a custom header
package {'nginx':
ensure => 'installed',
}

service {'nginx':
ensure => 'running',
enable => true,
}

$header = "	add_header X-Served-By '\$hostname';"

file_line {'add_header':
ensure => present,
path   => '/etc/nginx/sites-available/default',
after  => '# include snippets/snakeoil.conf;',
line   => $header,
notify => Service['nginx'],
}
