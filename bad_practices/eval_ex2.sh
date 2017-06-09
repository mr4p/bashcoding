#! /bin/bash
# This code is evil and should never be used!
show() {
    _display=$1
    eval echo "Hello $_display"    # DANGER!
}
a="Hello"
show ${1:-$a}

# pass arbitary arguments to the function:
# ./eval_ex2.sh ';ls'
