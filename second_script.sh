#!/bin/bash -x

export ymd=`date "+_%Y%m%d"`
export path="/Users/Shared/Practice/Scripts/"
export data_file_path="/Users/Shared/Practice/data_files/"
export output_path="/Users/Shared/Practice/output/"
export file="test"
export output_file=log_file
export extn=".txt"

echo "Lets move on to script dir and print the same"

cd $path
echo `pwd`

touch $data_file_path$file$ymd$extn

echo "Execute command to redirect the output to a file"
cd $data_file_path
echo `pwd`
ls > $output_path$output_file$ymd$extn

echo "Below is the inside file content of list_of_files"
cat $output_path$output_file$ymd$extn

exit 0
