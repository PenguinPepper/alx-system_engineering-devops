# script that fixes Apache2 error code 500

package{'apache2':
ensure => 'running',
}
