# script that comments out a line

$the_line = 'holberton hard nofile 5'
$next_line = '# holberton hard nofile 5'

exec {'comment out a line':
command => 'sed -i s/$the_line/$next_line/ /etc/security/limits.conf',
path    => ['/bin','/sbin','/usr/bin', '/usr/sbin'],
}
