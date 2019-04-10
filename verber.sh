#!/bin/bash

for x in {a..z}
do
	echo gcide_"$x".xml
	cat gcide_xml-0.51/xml_files/gcide_${x}.xml | awk '/v. i./' | awk '/<conjf>/' |  sed -e 's/.*<pos>p\. pr\. &amp; vb. n.<\/pos> <conjf>\(.*\)<\/conjf>..*/\1/' | awk 'NF<=1{print}'  | tr '[:upper:]' '[:lower:]' >> ~/verbs.txt
done
	
