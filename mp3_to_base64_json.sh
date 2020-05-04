#!/bin/bash
#cd docs
echo "var d={};" > mp3Data.js;\
find ./mp3 -name "*.mp3" | awk  -F'[./]+' '{print $0;cmd="a=$(base64 -w 0 "$0");echo \"d[\\\""$3"\\\"]=\\\"$a\\\";\" >>mp3Data.js";system(cmd);}'; \
cat mp3Data.js
