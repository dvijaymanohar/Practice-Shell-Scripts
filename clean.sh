
find . -name "unmanaged" | xargs rm -rfv
find . -name ".git" | xargs rm -rfv
find . -name "*.o" | xargs rm -rfv
#find . -name "shared_code" | xargs rm -rfv
#find . -name "test_template" | xargs rm -rfv
find . -name "tags" | xargs rm -rfv
find . -name ".dir_placeholder" | xargs rm -rfv
find . -name "*.swp" | xargs rm -rfv
find . -name "*.swo" | xargs rm -rfv
find . -name "*.axf" | xargs rm -rfv
find . -name "*.lst" | xargs rm -rfv
find . -name "*.log" | xargs rm -rfv
find . -name "*.out" | xargs rm -rfv
find . -name "*.ss" | xargs rm -rfv
find . -name "fbout.txt" | xargs rm -rfv
