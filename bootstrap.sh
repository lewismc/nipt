#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
## Simple scrip to create a list of 1M URLs from the 1M
## most popular URLs on the web. Thank you @JustinMclean
temp="./temp"
mkdir $temp
echo "Fetching top-1m.csv.zip..."
wget http://s3.amazonaws.com/alexa-static/top-1m.csv.zip -P $temp
echo "Unzipping top-1m.csv.zip..."
unzip $temp/top-1m.csv.zip -d $temp
sed "s/[^,]*\,/http\:\/\/www./" < $temp/top-1m.csv > seed.txt
rm -r $temp 
rmdir $temp


