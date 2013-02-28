#!/bin/sh
## Simple scrip to create a list of 1M URLs from the 1M
## most popular URLs on the web. Thank you @JustinMclean
temp="./temp"
mkdir $temp
echo "Fetching top-1m.csv.zip..."
wget http://s3.amazonaws.com/alexa-static/top-1m.csv.zip -P $temp
echo "Unzipping top-1m.csv.zip..."
unzip $temp/top-1m.csv.zip -d $temp
sed "s/[^,]*\,/http\:\/\/www./" < $temp/top-1m.csv > seed.txt
#rm -r $temp 
rmdir $temp


