#! /bin/bash

# Passing values to functions
bar() {

    # Using the passed values
    echo "Hello $1 $2 $3"

    local func_result="Some result"

    echo $func_result

    # return value
    return 1
}

#another way of function definition
function cd {
    echo "Hey $1"
}

#Invoking the  builting command line utilities
find_files() {
    find . -name "*.sh"
}

# Invoking the function passing the values.
func_result="$(bar "Vijay" "Manohar" "Dogiparthi")"

# Using the return result
# echo $func_result

echo "List of files"
# find_files

# cd -
# cd /tmp

# Executing the builtin cd command, rather the function being executed.
# builtin cd /tmp

# Getting the contents of /tmp
# ls

declare -f              # Show functions in the environment
declare -F              # Show just the function names

# find_files

function try_cmd {
    $1
    if [[ $? -eq 127 ]]
    then
        echo "What the hell are you doing"
        exit 122
    fi
}

try_cmd ls
try_cmd doesnotexist