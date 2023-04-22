
#!/bin/bash


cmd=ls
echo "$cmd"
echo `$cmd`

# Dollar - Bracket Method
#output of the command hostname is made available in the shell script as below.
echo "$(hostname)"

# Backtick method
echo `hostname`

# Sequence of commands with dollar-bracket method
mkdir tmp
cd tmp
# This output is substituted in over the $(ls ..). The ‘words’ returned are placed as the arguments
# to the touch command. The touch command creates a set of empty files, based on the list of the
# parent directory’s contents
echo $(touch $(ls ..))
ls
cd -
rm -rf tmp

# Sequence of commands with backtick method
mkdir tmp
cd tmp

# Escape the nested backticks
echo `touch \`ls ..\``
ls -l
cd -
rm -rf tmp

echo $PWD
[ -z "$PWD" ]            # -z is a unary operator that takes one argument
echo "-z PWD: $?"        # Returns false, as PWD has content
unset DOESNOTEXIST
[ -z "$DOESNOTEXIST" ]
echo $?                  # Returns true, as "$DOESNOTEXIST" is evaluated to empty
[ -z ]                   # No argument?
echo $?                  # Returns true...



touch tests_file   # Create tests file
mkdir tests_dir
[ -a tests_file ]  # -a returns true if file exists
echo $?
[ -d tests_file ]  # -d returns false if the directory does not exist
echo $?            # A normal file is not a directory
[ -a tests_dir ]   # A directory is a type of file, so returns true
echo $?
[ -d tests_dir ]   # -d returns true if directory exists
echo $?



[ 10 < 2 ]       # Throws an error, as single bracket tests don't handle '<'
echo $?
[ '10' < '2' ]   # Quotes do not help
echo $?
[[ 10 < 2 ]]     # Double bracket tests work
echo $?          # But it treats the input as strings, not integers
[[ '10' < '2' ]] # Same result when quoted as a string
echo $?


