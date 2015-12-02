txtblue='\e[0;36m' # Blue
txtyellow='\e[0;33m' # Green
txtgreen='\e[0;32m' # Green
txtred='\e[0;31m' # Red
clroff='\e[0m' # Text Reset

echo_red() {
    echo -e "$txtred$1$clroff"
}

echo_yellow() {
    echo -e "$txtyellow$1$clroff"
}

echo_green() {
  echo -e "$txtgreen$1$clroff"
}

echo_blue() {
  echo -e "$txtblue$1$clroff"
}

puts_notice() {
  echo " "
  echo -e "$txtblue### $1 ###$clroff"
  echo " "
}

puts_success() {
  echo " "
  echo -e "$txtgreen### $1 ###$clroff"
  echo " "
}
