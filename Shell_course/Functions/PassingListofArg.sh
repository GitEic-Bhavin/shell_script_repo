#!/bin/bash
function hello() {
  for NAME in $@
do
    echo “Hello $NAME”
done
}

hello jason dan ryan

# OutPut:-
# “Hello jason”
# “Hello dan”
# “Hello ryan”