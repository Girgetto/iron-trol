words = $1
timer = $2
mac=$3
linux=$4

while true; do
if [ $linux ]; then
   # Set volume linux
   echo $1|espeak
   amixer -D pulse sset Master 100%
fi
if [ $mac ]; then
   # Set volume Mac
   echo 'entra'
   osascript -e "set Volume 10"
   say $1
fi


echo $1
sleep $2

done