# this is sleep script
#myvar_file="/data/data/com.termux/files/home/scripts/var/sleep_script.buff"
myvar_file='/data/data/com.termux/files/home/scripts/var/sleep_script.buff'
sleep_end="`date +%s`"                                                                                              

echo "sleep_end=$sleep_end" >> $myvar_file

say(){
	termux-tts-speak $1
}
vol(){
	termux-volume $1
}
termux-fingerprint && say "Woke Up" || exit 
vol "music 15" 
sleep 1
vol "alarm 0" && say "Alarm volume is mute"
sleep 1
termux-wifi-enable true && say "Wi-Fi has been enabled"
sleep 2
termux-vibrate
termux-notification-remove 100
source $myvar_file
sleep_duration=`echo "($sleep_end-$sleep_start)/60/60" | bc`
say "Good mornig Mr. Mohamed Ayman ,today is `date +%F` time is  `date +%H:%M` you have been sleep for $sleep_duration hours"
sleep 1
vol "music 15"  &&  termux-brightness auto && sshd
