
#! /bin/bash

A=1
[ $A = 1 ]
echo $?
[ $A == 1 ]
echo $?


( [ 1 = 1 ] || [ ! '0' = '0' ] ) && [ '2' = '2' ]
echo $?

[[ 1 = 1 ]]
echo $?




unset DOESNOTEXIST
[ ${DOESNOTEXIST} = '' ]
echo $?
[[ ${DOESNOTEXIST} = '' ]]
echo $?
[ x${DOESNOTEXIST} = x ]
echo $?



echo $PWD

# -z returns true only if the argument is an empty string. Interestingly, this test is OK with no argument!
[ -z "$PWD" ]            # -z is a unary operator that takes one argument
echo $?                  # Returns false, as PWD has content


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