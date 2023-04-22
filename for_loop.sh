
#!/bin/sh

mkdir tmp
cd tmp

for ((i=0; i<10; i++))
do
    echo $i
    echo $i > file${i}
done

ls

cd ..


for f in $(ls for_loop.sh)
do
    echo "$f contains: $(cat $f)"
done
