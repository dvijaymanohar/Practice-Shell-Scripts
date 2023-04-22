

#! /bin/bash

# Linux[0]='Ubuntu'
# Linux[1]='Mandriva'
# Linux[2]='Suse'
# Linux[3]='Redhat'

declare -a Linux=('Ubuntu', 'Mandriva', 'Suse', 'Red hat')

echo ${Linux[3]}

echo "All the Linux flavors tried"
echo ${Linux[*]}

echo "All the Linux flavors tried"
echo ${Linux[@]}

echo ${#Linux[@]} #Number of elements in the array

# Length of the nth element of the array
echo ${#Linux[3]}

# Remove an element from the array
unset Linux[2]

echo ${Linux[@]}
echo ${Linux[*]}


# Adding an element in to an array
# Linux = (${Linux[@]}, "Mandrake", 'Kali Linux', 'Cent OS', 'Fedora')
Unix=(${Linux[@]}, "Mandrake", 'Kali Linux', 'Cent OS', 'Fedora')
echo ${Unix[@]}

LinuxFlavors=(${Linux[@]}, ${Unix[@]})
echo ${LinuxFlavors[@]}
# Deleting the entire array
unset LinuxFlavors
echo ${LinuxFlavors[@]}


fileContent=(`cat array.sh`)


for x in ${fileContent[*]}
do
echo $x
done
