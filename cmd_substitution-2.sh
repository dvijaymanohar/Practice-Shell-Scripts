

[ 10 -lt 2 ]      # The -lt operator works in single brackets
echo $?
[ '10' -lt '2' ]
echo $?           # Still treats arguments as integers when quoted
[ 1 -lt 2 ]
echo $?
[ 10 -gt 1 ]
echo $?
[ 1 -eq 1 ]
echo $?
[ 1 -ne 1 ]
echo $?