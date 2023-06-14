# script that increases the munber of descriptors

service {'nginx':
ensure => 'running',
enable => true,
}

exec {'increase file descriptors':
command => 'sed -i s/4/7/g /etc/nginx/nginx.conf',
path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
notify  => Service[nginx],
}
