nipt
====

This is a utility directory which I am gradually adding simple scripts to, which make my life a hellish lot easier.

# Scripts

Current scripts include
 * bootstrap.sh
 * watch.sh

## bootstrap.sh

### Description

This is a (really) simple bash script which I use to inject 1M URLs into Apache Nutch on a daily basis... as a cron job. I called it nipt and called the actual script bootstrap.sh because that is how I bootstrap the Apache Nutch crawl. 

### Functionality

* Fetches 1M URLs 
* Unzips the zip file containing the URLs
* Makes a simple regex find and replace to ensure that the URLs can written to the format we desire in the Apache Nutch InjectorJob
* Writes the URLs into a plain text file (which we use within the InjectorJob).

### Observable Limitations

The source of the zip file is from alexa-static. The idea here is that this zip file apparently (I haven't tried to confirm) represents the top 1 million MOST POPULAR URLs on the web. 
The problem with this is that EVERYONE uses google, so you can certainly not make the inference that these URLs will change significantly over time as popular sites are pretty much consistent (in order of ranking) within the most popular sites on the net. As of Feburary 2013, the list of URLs rarely changes... as google is always top, followed by others.
Consequently this means that you are not exaclty injecting unique URLs into your Nutch web database.
In my case this is not a problem. I really don't care. I just want to try and break Nutch + Gora to make the technology better. 

### Credits

I would like to thank @JustinMclean for his help and support during the first ApacheBarCamp2013 in Portland, Oregon. He stood by me whilst I took around 10 minutes to remember that the letter "l" came before "m" in the alphabet. The Malt whisky got to me from the night before.

## watch.sh

### Description

Watch is an extremely useful utility script which uses the excellent [fswatch](https://github.com/emcrisostomo/fswatch) tool to automate (for example) deployment of a WAR into Tomcat based upon ongoing development.

### Functionality 

* edit the EDIT 1 variable documented within the script
* edit the EDIT 2 variables documented within the script
* invoke the script ./watch.sh in a directory which you wish to monitor (recursively) for changes making sure that the paths you entered for EDIT 1 and EDIT 2 above resolve locally
* continue to develop as normal, upon every save you can autodeploy your work to tomcat (or some other destination) saving you a nuch of time.

### Observable Limitations

# License
All code within this repository is licensed under the [Apache Software License v2.0](http://www.apache.org/licenses/LICENSE-2.0)


