#!/bin/csh -f

foreach file ( `ls *.html`)
   echo $file
   sed s/\<p\>\<br\>// $file | sed s/alt\=\"\"/width\=\100\%/ >! junk
   mv -f junk $file
end
rm -f junk
