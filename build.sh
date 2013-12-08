#!/bin/bash

mkdir compiled
subtypes=(general buttons grid headings icons iehacks inputs messages navigation tables)
rm -f compiledcss.js
rm -f entireframework.js
i="0"
echo "var css = {" >> compiledcss.js
for item in ${subtypes[*]}
do
lessc "less/"$item".less" > "compiled/"$item".css"
java -jar yuicompressor-2.4.8.jar "compiled/"$item".css" -o "compiled/"$item".min.css"
echo -ne "	\""$item"\": \"" >> compiledcss.js
cat "compiled/"$item".min.css" >> compiledcss.js
cat "compiled/"$item".min.css" >> entireframework.min.css
echo -ne "\"" >> compiledcss.js
if [ $((i+1)) -ne ${#subtypes[*]} ]
then
echo "," >> compiledcss.js
fi
i=$i+1
done
echo "" >> compiledcss.js
echo "}" >> compiledcss.js
