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
