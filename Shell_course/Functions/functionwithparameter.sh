#!/bin/bash

function hello() {
    echo "Hello! $1"
}
hello json

# $1 is passing our argument in functions
# hello json -- calling function hello and passing arg "json" in $1
