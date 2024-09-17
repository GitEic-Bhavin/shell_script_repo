#!/bin/bash -e
File_Name="/not/here"
ls $File_Name
echo $File_Name

# OutPut:-
# ls: cannot access '/not/here': No such file or directory

#!/bin/bash -ex
File_Name="/not/here"
ls $File_Name
echo $File_Name

# OutPut:-
# + File_Name=/not/here
# + ls /not/here
# ls: cannot access '/not/here': No such file or directory

