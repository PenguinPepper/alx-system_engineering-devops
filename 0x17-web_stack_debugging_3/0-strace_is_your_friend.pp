# script that fixes Apache2 error code 500

exec {'fix typo':
command => 'sed -i "s/phpp/php/g" wp-settings.php',
path     => '/var/www/html',
}
