

#!/bin/bash

if [ 10 -lt 2 ]
then
    echo 'does not compute'
elif [ 10 -gt 2 ]
then
    echo 'computes'
else
    echo 'nether greater than nor less that, so it is equal to'
fi

if grep not_there /dev/null
then
    echo 'Its right there'
else
    echo 'Not there'
fi


if [[ 1 == 1 ]]
then
    echo 'Its true'
else
    echo 'Its false'
fi


if [[ x'ASTRING' == x'ANOTHER_STRING' ]]
then
    echo 'Its true'
else
    echo 'Its false'
fi

