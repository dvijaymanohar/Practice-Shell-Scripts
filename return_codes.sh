
#!/bin/bash


if grep Ubuntu array.sh
then
    echo "Return code: $?"
    echo "Not Matched"
else
    echo "Matched"
fi


if grep Ubuntus array.sh
then
    echo "Return code: $?"
    echo 'matched!'
else
    echo "not Matched"
fi

bash
exit 67
echo $?

