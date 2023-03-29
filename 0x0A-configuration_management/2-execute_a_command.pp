# file will kill a process called killmenow
exec {'pkill killmenow':
command => 'pkill killmenow',
onlyif  => 'pgrep killmenow',
}
