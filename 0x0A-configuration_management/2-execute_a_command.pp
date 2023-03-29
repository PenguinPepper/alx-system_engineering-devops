# file will kill a process called killmenow
exec {'pkill killmenow':
onlyif => 'pgrep killmenow',
}
