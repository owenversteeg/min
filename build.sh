#!/bin/bash

mkdir compiled -p
#The compiled folder holds all the separate compiled CSS files.

subtypes=(general buttons grid headings icons iehacks inputs navbar tables)
#You can change the subtypes used by changing this.

rm -f compiledcss.js
rm -f entireframework.min.css
#Remove the old files.

i="0"
echo "var css = {" >> compiledcss.js
#Begin making compiledcss.js

#For each subtype, we compile the LESS file, minify it, and concatenate it into two files:
#entireframework.min.css and compiledcss.js
for item in ${subtypes[*]}
do
lessc "less/"$item".less" > "compiled/"$item".css"
#Compile all the LESS files.

java -jar yuicompressor-2.4.8.jar "compiled/"$item".css" -o "compiled/"$item".min.css"
#Compress all the compiled CSS files.

echo -ne "	\""$item"\": \"" >> compiledcss.js
cat "compiled/"$item".min.css" >> compiledcss.js
echo -ne "\"" >> compiledcss.js
#Write lines of JSON to compiledcss.js

cat "compiled/"$item".min.css" >> entireframework.min.css
#Write the compiled and minified CSS to entireframework.min.css

if [ $((i+1)) -ne ${#subtypes[*]} ]
then
#This is a bit kludgy but whatever, bash is not my specialty.
#If this isn't the last subtype, add a comma
echo "," >> compiledcss.js
fi
i=$i+1
done
#Put an ending to compiledcss.js
echo "" >> compiledcss.js
echo "};" >> compiledcss.js
