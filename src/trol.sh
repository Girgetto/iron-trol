words = $1
timer = $2
mac=$3
linux=$4

while true; do
if  $linux 
 then
   # Set volume linux
   amixer -D pulse sset Master 100%
   apt-get install espeak
   echo $1|espeak
fi

if $mac  
then
   # Set volume Mac
   osascript -e "set Volume 10"
   say $1
fi

sleep $2

done