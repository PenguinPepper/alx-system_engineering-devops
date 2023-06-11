# script that fixes Apache2 error code 500

exec {'fix typo':
command => 'sed -i s/phpp/php/g /var/www/html/wp-settings.php',
path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
}
