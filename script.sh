#!/bin/sh
# Generate data.csv

data_dir="data"

# All the dmpcas files
dmpcas="${data_dir}/dmpcas.*"

# Header
echo force,length,sticky > data.csv

for f in $dmpcas ; do
	number=$(echo $f | cut -d "." -f 2)
	force=$number
	sticky=$(echo $f | cut -d "." -f 3)
	is_sticky="FALSE"
	length=$(sed '103!d' $data_dir/dmpcas.$number | cut -d " " -f 1)
	if [ "$sticky" = "sticky" ]; then
		is_sticky="TRUE"
	    length=$(sed '127!d' $data_dir/dmpcas.$number.sticky | cut -d " " -f 1)
	fi
	echo $force,$length,$is_sticky >> data.csv
done
