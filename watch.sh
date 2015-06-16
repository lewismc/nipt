#!/bin/bash
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

while true
  do
    # EDIT 1: change the path to the directory you wish to monitor
    fswatch ./bioregnet-core/src/main/webapp | while read line
      do
        echo "file changed; reloading war file"
        mvn package
        # EDIT 2: change the path to the generated artifact and also the path to the deployment directory
        cp bioregnet-core/target/bioregnet-coreui-0.1-SNAPSHOT.war /usr/local/apache-tomcat-7.0.54/webapps/
      done
  done
