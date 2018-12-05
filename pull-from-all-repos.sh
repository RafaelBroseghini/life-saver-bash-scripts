#!/bin/bash
# This may not be necessary unless not running from home.
cd ..
for d in ./*/
  do (cd "$d" && 
    if [[ -d .git ]]; then
      echo "Pulling from $d"
      git pull
    fi;
  )
done;