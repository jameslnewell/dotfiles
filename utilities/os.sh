
cmd_exists() {
  cmd=$1
  command $cmd -v >/dev/null 2>&1
}
