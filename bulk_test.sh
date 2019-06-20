#~/bin/bash

# Place this file in the root of your darknet project folder

if [ $# -ne 2 ]
  then
    echo "Incorrect arguments supplied"
    echo "args: <weight file> <save folder/zip name>"
    exit
fi

weights_regex='^.+\.weights'
if ! [[ $1 =~ $weights_regex ]]
then
	echo "Not a weight file"
	exit
fi

mkdir $2_tmp

# TODO: make this part variable (different file names and number of files)
for i in {1..18}
do
	./darknet detector test data/Pothole/obj.data cfg/yolov3-tiny-pothole.cfg $1 data/Pothole_Test_Images/pothole$i.jpg -dont_show
	cp predictions.jpg $2_tmp/results_$i.jpg
done

zip -r $2.zip $2_tmp/
rm -rf $2_tmp
