words = $1
timer = $2
platform='unknown'
unamestr=`uname`

if [[ "$unamestr" == 'Linux' ]]; then
   platform='linux'
elif [[ "$unamestr" == 'darwin' ]]; then
   platform='darwin'
fi

while true; do
if [[ $platform == 'linux' ]]; then
   # Set volume linux
   echo $1|espeak
   amixer -D pulse sset Master 100%
elif [[ $platform == 'darwin' ]]; then
   # Set volume Mac
   osascript -e "set Volume 10"
   say $1
fi

echo $1
sleep $2

done