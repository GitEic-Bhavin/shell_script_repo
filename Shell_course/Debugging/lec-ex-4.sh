#!/bin/bash -v
Test_Var="test"
echo "$Test_Var"

# OutPut:-
#!/bin/bash -v
# Test_Var="test"
# echo "$Test_Var"
# test

#!/bin/bash -vx
Test_Var="test"
echo "$Test_Var"

# OutPut:-
#!/bin/bash -vx
# Test_Var="test"
# + Test_Var=test
# echo "$Test_Var"
# + echo test
# test