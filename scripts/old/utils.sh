
function reset_color() {
  echo -e "\033[0m\c"
}

function red_color() {
  echo -e "\033[0;31m\c"
}

function green_color() {
  echo -e "\033[0;32m\c"
}

function blue_color() {
  echo -e "\033[0;34m\c"
}

function seperator() {
  echo "================";
}

function execute() {
  set -o pipefail
  name=$1
  command=$3
  blue_color
  echo "$name"
  reset_color
  eval $($command)
  exitCode=$?
  if ! [ "$condition" ]; then
    blue_color
    echo "$name succeeded"
  else
    blue_color
    echo "$name failed"
  fi
  reset_color
  seperator
}

# function link() {

# }
