#/bin/bash

# for each line in git log
LINES=`git log --pretty=oneline`
NUM_LINES=`echo "$LINES" | wc -l`

echo $NUM_LINES
exit

for i in `seq 1 3`;
do
  pkill "Chrome"
  sleep 1
  open -a "/Applications/Google Chrome.app" "http://localhost:8000"
  sleep 10
  screencapture "picture"$i".jpg"
  sleep 1
done
