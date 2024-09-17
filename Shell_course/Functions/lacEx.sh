#!/bin/bash
function hello() {
  echo “Hello! $1”
  now   # now is a other function is called in hello function.
}
hello 
# This will print Hello! 
#                 It’s 2024-07-21 PM 

function now() {
  echo “It’s $(date +%r)”
}
hello