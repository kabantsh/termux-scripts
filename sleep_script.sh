# this is sleep script
myvar_file="/data/data/com.termux/files/home/scripts/var/sleep_script.buff"
sleep_start="`date +%s`"

echo "sleep_start=$sleep_start" > $myvar_file
say(){
	termux-tts-speak $1
}
vol(){
	termux-volume $1
}
fingerprint() {
	termux-fingerprint -t "Please Authenticate to enter sleep mode"
}
fingerprint || exit 
say "Sleeping"	
vol "music 15" 
sleep 1
vol "alarm 7" && say "Alarm is up"
sleep 1
termux-wifi-enable false && say "Wi-Fi has been shutdown "
sleep 2
termux-notification --vibrate 200 --ongoing --id 100 -t sleeping
say "Sleep well Mr. Mohamed Ayman"
sleep 1
vol "music 0" &&  termux-brightness 1
