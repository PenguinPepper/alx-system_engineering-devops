# file will kill a process called killmenow
exec {'kill killmenow':
command  => 'pkill killmenow',
provider => 'shell',
}
