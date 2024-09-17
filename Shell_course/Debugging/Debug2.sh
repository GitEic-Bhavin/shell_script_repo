#!/bin/bash 

debug () {
    echo "Executing: $@"
    $@
}

debug ls
echo
echo
debug ls -ltr