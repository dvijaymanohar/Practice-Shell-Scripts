
#!/bin/sh

n=0
while [[ ! -a new_file ]]
do
    ((n++))
    echo "In iteration ${n}"
    if [[ $(cat file${n}) == '15' ]]
    then
        touch new_file
    fi

    if [[ ${n} -eq 50 ]]
    then
        break
    fi
done
