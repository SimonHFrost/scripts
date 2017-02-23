OUTPUT=$(speedtest-cli)
REGEX="Download: (.+) Mbit.+Upload: (.+) Mbit"
if [[ $OUTPUT =~ $REGEX ]]
then
  DATE=`date +%Y-%m-%d`
  TIME=`date +%H:%M`
  DOWNLOAD="${BASH_REMATCH[1]}"
  UPLOAD="${BASH_REMATCH[2]}"

  echo "$DATE $TIME $DOWNLOAD $UPLOAD" >> speeds.txt
fi
