#/bin/bash

# git reset --hard [hash]

# for each line in git log
lines=`git log --pretty=oneline`

counter=1

while read -r line; do
  git reset --hard ${line:0:40}
  pkill "Chrome"
  sleep 1
  open -a "/Applications/Google Chrome.app" "http://localhost:8000"
  sleep 10
  screencapture "picture"$counter".jpg"
  sleep 1
  counter=$[$counter +1]
done <<< "$lines"


